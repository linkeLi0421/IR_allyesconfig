; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/ftdi_sio.c_pt.bc'
source_filename = "../drivers/usb/serial/ftdi_sio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ftdi_sio_quirk = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_serial_driver = type { ptr, ptr, %struct.list_head, %struct.device_driver, ptr, %struct.usb_dynids, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ftdi_private = type { i32, i32, i32, i16, i32, i32, i8, i8, i16, i32, i32, i32, i16, %struct.mutex, %struct.gpio_chip, %struct.mutex, i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.75, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.75 = type { ptr }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kfifo = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>

@__initcall__kmod_ftdi_sio__274_2915_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ftdi_sio_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author275 = internal constant [163 x i8] c"ftdi_sio.author=Greg Kroah-Hartman <greg@kroah.com>, Bill Ryder <bryder@sgi.com>, Kuba Ober <kuba@mareimbrium.org>, Andreas Mohr, Johan Hovold <jhovold@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [55 x i8] c"ftdi_sio.description=USB FTDI Serial Converters Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [42 x i8] c"ftdi_sio.file=drivers/usb/serial/ftdi_sio\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [21 x i8] c"ftdi_sio.license=GPL\00", section ".modinfo", align 1
@__param_str_ndi_latency_timer = internal constant [27 x i8] c"ftdi_sio.ndi_latency_timer\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ndi_latency_timer = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_ndi_latency_timer = internal constant %struct.kernel_param { ptr @__param_str_ndi_latency_timer, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @ndi_latency_timer } }, section "__param", align 4
@__UNIQUE_ID_ndi_latency_timertype279 = internal constant [40 x i8] c"ftdi_sio.parmtype=ndi_latency_timer:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ndi_latency_timer280 = internal constant [66 x i8] c"ftdi_sio.parm=ndi_latency_timer:NDI device latency timer override\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ftdi_sio\00", [23 x i8] zeroinitializer }, align 32
@id_table_combined = internal constant { [851 x %struct.usb_device_id], [5112 x i8] } { [851 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1027, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -2112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -2552, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -2549, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -88, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -24704, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -23207, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -21576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -21575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -12272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -12271, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -12270, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -12269, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -12268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -12267, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -12266, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -12265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -18416, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -18415, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -18414, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -928, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -12176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -12175, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -14256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -31886, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 24577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 24582, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1030, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 24592, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_8u2232c_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 24593, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 24596, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 24597, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -13664, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -16424, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -16423, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -16422, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -16421, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -16420, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -16419, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4173, i16 12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4173, i16 12290, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4173, i16 12294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4617, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4617, i16 4102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3896, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3863, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3858, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -10368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1016, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1015, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1014, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1013, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1012, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1011, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1010, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1009, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -894, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -886, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -885, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3533, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -456, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1536, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1535, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1534, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1533, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1532, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1531, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1530, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3984, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 20304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 261, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 262, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 263, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 266, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 267, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 269, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 270, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 271, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 273, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 274, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 276, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 277, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 278, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 279, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 280, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 282, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 283, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 284, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 285, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 286, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 287, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 290, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 291, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 292, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 295, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 297, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 298, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 299, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 300, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 301, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 302, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 303, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 306, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 307, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 308, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 309, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 310, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 311, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 312, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 313, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 314, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 315, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 316, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 317, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 318, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 319, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 321, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 322, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 323, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 324, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 325, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 326, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 327, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 329, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 330, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 331, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 332, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 333, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 334, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 335, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 337, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 338, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 339, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 340, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 341, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 342, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 343, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 345, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 346, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 347, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 348, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 349, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 350, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 351, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 353, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 354, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 355, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 356, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 357, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 358, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 359, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 361, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 362, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 364, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 366, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 370, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 371, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 372, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 373, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 374, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 375, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 378, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 380, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 381, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 382, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 385, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 388, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 389, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 390, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 391, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 393, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 394, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 396, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 397, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 398, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 399, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 403, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 404, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 405, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 406, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 407, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 408, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 409, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 410, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 411, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 412, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 413, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 414, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 415, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 416, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 417, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 418, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 419, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 420, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 421, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 422, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 423, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 424, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 425, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 426, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 427, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 428, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 429, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 430, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 431, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 432, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 433, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 434, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 435, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 436, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 437, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 438, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 439, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 440, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 441, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 442, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 443, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 444, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 445, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 446, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 447, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 448, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 449, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 450, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 451, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 452, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 453, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 454, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 455, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 456, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 457, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 458, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 459, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 460, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 461, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 462, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 463, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 464, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 465, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 466, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 467, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 468, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 469, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 470, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 471, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 472, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 473, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 474, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 475, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 476, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 477, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 478, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 479, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 482, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 483, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 484, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 485, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 486, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 487, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 489, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 490, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 491, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 492, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 493, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 494, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 495, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 496, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 497, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 498, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 499, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 500, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 501, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 502, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 503, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 504, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 505, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 506, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 507, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 508, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 509, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 510, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 511, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 18177, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27903, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27902, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27901, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27900, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27899, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27898, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27897, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27896, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27895, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27894, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27893, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27892, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27891, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27890, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27889, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27888, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27887, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27886, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27885, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27884, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27883, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27882, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27881, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27880, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27879, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27878, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27877, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27876, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27875, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27874, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6973, i16 -27873, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -5152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1961, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 8449, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 8450, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 8451, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 8452, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 -28640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 8721, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 8737, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 8722, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 8738, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 8723, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 8739, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9233, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9249, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9234, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9250, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9266, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9282, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9235, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9251, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9267, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 9283, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10273, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10321, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10337, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10353, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10274, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10290, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10306, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10322, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10338, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10354, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10370, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10291, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10307, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10323, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10339, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10355, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 10371, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 -24534, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 -24533, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 -24532, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3154, i16 -24531, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2765, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2873, i16 1057, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2873, i16 259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1416, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_HE_TIRA1_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -1968, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_USB_UIRT_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -912, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -911, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -910, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -909, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6135, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6134, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6133, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6008, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6007, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6006, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6005, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6004, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6003, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6002, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6001, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1190, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3986, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6456, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3985, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -199, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -198, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -197, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -196, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1485, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -30056, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 31888, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 31889, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 31890, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 31891, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -28528, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -696, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -695, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -694, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -693, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6943, i16 -16378, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8191, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8190, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8188, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8186, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8184, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8183, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8182, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1191, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1188, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1187, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1186, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1185, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3992, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3991, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3990, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3989, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3988, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3987, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7952, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7951, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7950, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7949, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7948, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7947, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7946, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7945, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7960, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7953, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7959, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7958, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7957, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7956, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7955, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7954, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3008, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3007, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -2999, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -2998, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -2997, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -2996, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1583, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1582, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1581, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1580, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2364, i16 1537, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2364, i16 1793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3988, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3988, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -2432, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -2976, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4158, i16 1000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1607, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1742, i16 -31983, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1747, i16 644, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21503, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21502, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21501, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21487, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21486, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21482, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21479, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21467, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21466, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21465, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21453, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21452, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21431, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21424, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -17918, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6880, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3135, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -3134, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -11384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -11383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -11382, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -11381, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -11380, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -11379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -11378, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -11377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9785, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9785, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9785, i16 -12275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9785, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9785, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9785, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -11119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4930, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6840, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4375, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4374, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4373, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4372, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4371, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4370, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4984, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4983, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -8466, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -8466, i16 770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -8466, i16 771, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8408, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8398, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8399, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8397, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3398, i16 8224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3398, i16 8225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3386, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -5488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9216, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9215, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -14384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -13935, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -15904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3110, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3110, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3110, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3110, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3110, i16 11, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3110, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3110, i16 13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3110, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3110, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3110, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3110, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8928, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4749, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4749, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -10632, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -13240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -13239, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -13238, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3197, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9616, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_NDI_device_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -9615, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_NDI_device_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -9614, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_NDI_device_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -9613, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_NDI_device_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -9612, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_NDI_device_quirk to i32) }, %struct.usb_device_id { i16 3, i16 6017, i16 3120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6696, i16 24592, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -25008, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -28671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -25008, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -25007, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -25006, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -25005, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -25004, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -25003, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -25002, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -25001, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -25000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24999, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24998, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24997, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24996, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24995, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24994, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24993, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24992, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24991, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24990, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24989, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24988, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24987, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24986, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24985, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24984, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24983, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8448, i16 -24982, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -7157, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7057, i16 100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -6400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -10440, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -10439, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -31080, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 1027, i16 5562, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0 }, %struct.usb_device_id { i16 1027, i16 5562, i16 43, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0 }, %struct.usb_device_id { i16 1027, i16 5562, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0 }, %struct.usb_device_id { i16 1027, i16 5562, i16 42, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0 }, %struct.usb_device_id { i16 3, i16 5207, i16 20760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -17672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -17192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -17191, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -17190, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -16952, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1412, i16 -20448, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1412, i16 -20422, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4830, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 261, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 262, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 263, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 1024, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 1280, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 1792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 2048, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 2304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 2560, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 2816, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 3072, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 3328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 3584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 3840, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 -32768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 -32767, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 -32766, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 -32765, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 -32764, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20560, i16 -32763, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4271, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7113, i16 24577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1003, i16 8457, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7409, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7409, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1110, i16 -4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1110, i16 -4095, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 899, i16 1240, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 1027, i16 5396, i16 8200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i32 0 }, %struct.usb_device_id { i16 3, i16 3180, i16 1202, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -24952, i16 -24945, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 4056, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3123, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8032, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -8031, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4103, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4104, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4105, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4109, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4110, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4111, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4114, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4115, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4116, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4117, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6770, i16 4118, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5724, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6777, i16 24577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -24944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -22832, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -4748, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4750, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4749, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -4751, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -27784, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -27783, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -27780, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -27782, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -17248, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -17247, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -17246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -17244, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -6359, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -10888, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7180, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -9480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9479, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9478, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9477, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9476, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9475, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9474, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9473, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -232, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -228, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -227, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -22191, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -22112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -26520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8375, i16 1811, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1155, i16 14150, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1155, i16 14151, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_stmclite_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 -30168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -12296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 24578, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -29176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -30768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 4099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 4100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 4113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 4129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -28671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -28670, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -28669, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -28668, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -28667, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -28666, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -28665, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -28664, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 4119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 20481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 8225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 8226, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 8227, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 8228, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 24577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 4121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 4115, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 12305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 12306, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 28673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 8193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 8194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 8195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 8209, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 8210, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -32767, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -32766, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -32765, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1489, i16 -32764, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -13560, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 1027, i16 1419, i16 40, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0 }, %struct.usb_device_id { i16 1027, i16 1419, i16 67, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0 }, %struct.usb_device_id { i16 3, i16 6401, i16 21, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9816, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9815, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9814, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9813, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9812, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9811, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9810, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -9809, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -23224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -23223, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -23222, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -23221, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -23124, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -23123, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -23122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -23121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7004, i16 259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7004, i16 260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7004, i16 261, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2652, i16 25634, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 -15574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1204, i16 155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1204, i16 -1792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7822, i16 24577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7232, i16 1143, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 1027, i16 8887, i16 5389, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 -31928, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2336, i16 29952, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11439, i16 5026, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11439, i16 5027, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5446, i16 1282, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5446, i16 1283, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1027, i16 29008, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id { i16 3, i16 1027, i16 29009, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ftdi_jtag_quirk to i32) }, %struct.usb_device_id zeroinitializer], [5112 x i8] zeroinitializer }, align 32
@ftdi_8u2232c_quirk = internal constant { %struct.ftdi_sio_quirk, [24 x i8] } { %struct.ftdi_sio_quirk { ptr @ftdi_8u2232c_probe, ptr null }, [24 x i8] zeroinitializer }, align 32
@ftdi_HE_TIRA1_quirk = internal constant { %struct.ftdi_sio_quirk, [24 x i8] } { %struct.ftdi_sio_quirk { ptr null, ptr @ftdi_HE_TIRA1_setup }, [24 x i8] zeroinitializer }, align 32
@ftdi_USB_UIRT_quirk = internal constant { %struct.ftdi_sio_quirk, [24 x i8] } { %struct.ftdi_sio_quirk { ptr null, ptr @ftdi_USB_UIRT_setup }, [24 x i8] zeroinitializer }, align 32
@ftdi_jtag_quirk = internal constant { %struct.ftdi_sio_quirk, [24 x i8] } { %struct.ftdi_sio_quirk { ptr @ftdi_jtag_probe, ptr null }, [24 x i8] zeroinitializer }, align 32
@ftdi_NDI_device_quirk = internal constant { %struct.ftdi_sio_quirk, [24 x i8] } { %struct.ftdi_sio_quirk { ptr @ftdi_NDI_device_setup, ptr null }, [24 x i8] zeroinitializer }, align 32
@ftdi_stmclite_quirk = internal constant { %struct.ftdi_sio_quirk, [24 x i8] } { %struct.ftdi_sio_quirk { ptr @ftdi_stmclite_probe, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CALAO Systems\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Arrow USB Blaster\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BeagleBone/XDS100V2\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SNAP Connect E10\00", [47 x i8] zeroinitializer }, align 32
@ftdi_jtag_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 2328, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Ignoring interface reserved for JTAG\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ftdi_jtag_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/serial/ftdi_sio.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ftdi_jtag_probe._entry_ptr = internal global ptr @ftdi_jtag_probe._entry, section ".printk_index", align 4
@ftdi_NDI_device_setup.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.7, ptr @.str.11, i8 2, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ftdi_NDI_device_setup\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s setting NDI device latency to %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ftdi_NDI_device_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.7, i32 2307, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NDI device with a latency value of %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ftdi_NDI_device_setup._entry_ptr = internal global ptr @ftdi_NDI_device_setup._entry, section ".printk_index", align 4
@ftdi_stmclite_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.13, ptr @.str.7, i32 2364, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ftdi_stmclite_probe\00", [44 x i8] zeroinitializer }, align 32
@ftdi_stmclite_probe._entry_ptr = internal global ptr @ftdi_stmclite_probe._entry, section ".printk_index", align 4
@ftdi_sio_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.14, ptr @id_table_combined, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 512, i32 256, ptr @ftdi_sio_probe, ptr null, ptr null, ptr null, ptr null, ptr @ftdi_sio_port_probe, ptr @ftdi_sio_port_remove, ptr null, ptr null, ptr null, ptr @ftdi_open, ptr null, ptr null, ptr null, ptr @ftdi_ioctl, ptr @get_serial_info, ptr @set_serial_info, ptr @ftdi_set_termios, ptr @ftdi_break_ctl, ptr null, ptr null, ptr @ftdi_tx_empty, ptr @usb_serial_generic_throttle, ptr @usb_serial_generic_unthrottle, ptr @ftdi_tiocmget, ptr @ftdi_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr @ftdi_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ftdi_process_read_urb, ptr @ftdi_prepare_write_buffer }, [72 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FTDI USB Serial Device\00", [41 x i8] zeroinitializer }, align 32
@ftdi_sio_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->cfg_lock\00", [16 x i8] zeroinitializer }, align 32
@ftdi_sio_port_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 2257, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GPIO initialisation failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ftdi_sio_port_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ftdi_sio_port_probe._entry_ptr = internal global ptr @ftdi_sio_port_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ftdi_determine_type.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.7, ptr @.str.20, i8 1, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ftdi_determine_type\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: bcdDevice = 0x%x, bNumInterfaces = %u\0A\00", [53 x i8] zeroinitializer }, align 32
@ftdi_determine_type.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.7, ptr @.str.21, i8 1, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: something fishy - bcdDevice too low for multi-interface device\0A\00", [60 x i8] zeroinitializer }, align 32
@ftdi_determine_type.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.7, ptr @.str.22, i8 1, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: has latency timer so not an AM type\0A\00", [55 x i8] zeroinitializer }, align 32
@ftdi_determine_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.7, i32 1619, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Detected %s\0A\00", [19 x i8] zeroinitializer }, align 32
@ftdi_determine_type._entry_ptr = internal global ptr @ftdi_determine_type._entry, section ".printk_index", align 4
@ftdi_chip_name = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr null, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SIO\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FT8U232AM\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FT232BM\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FT2232C\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FT232RL\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FT2232H\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FT4232H\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FT232H\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FT-X\00", [27 x i8] zeroinitializer }, align 32
@ftdi_set_max_packet_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.7, i32 1651, ptr @.str.35, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Overriding wMaxPacketSize on endpoint %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ftdi_set_max_packet_size\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ftdi_set_max_packet_size._entry_ptr = internal global ptr @ftdi_set_max_packet_size._entry, section ".printk_index", align 4
@read_latency_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.7, i32 1466, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to read latency timer: %i\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read_latency_timer\00", [45 x i8] zeroinitializer }, align 32
@read_latency_timer._entry_ptr = internal global ptr @read_latency_timer._entry, section ".printk_index", align 4
@write_latency_timer.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.7, ptr @.str.39, i8 1, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write_latency_timer\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: setting latency timer = %i\0A\00", [32 x i8] zeroinitializer }, align 32
@write_latency_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.7, i32 1435, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to write latency timer: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@write_latency_timer._entry_ptr = internal global ptr @write_latency_timer._entry, section ".printk_index", align 4
@create_sysfs_attrs.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.7, ptr @.str.42, i8 1, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"create_sysfs_attrs\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sysfs attributes for %s\0A\00", [39 x i8] zeroinitializer }, align 32
@dev_attr_event_char = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @event_char_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_latency_timer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @latency_timer_show, ptr @latency_timer_store }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event_char\00", [21 x i8] zeroinitializer }, align 32
@event_char_store.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.7, ptr @.str.45, i8 1, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"event_char_store\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: setting event char = 0x%03x\0A\00", [63 x i8] zeroinitializer }, align 32
@event_char_store.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.7, ptr @.str.46, i8 1, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to write event character: %i\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"latency_timer\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@ftdi_gpio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->gpio_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ftdi-cbus\00", [22 x i8] zeroinitializer }, align 32
@ftdi_gpio_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ftdi_gpio_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ftdi_gpio_init_ft232r.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.7, ptr @.str.53, i8 2, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ftdi_gpio_init_ft232r\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cbus_config = 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@ftdi_set_bitmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.7, i32 1796, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bitmode request failed for value 0x%04x: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ftdi_set_bitmode\00", [47 x i8] zeroinitializer }, align 32
@ftdi_set_bitmode._entry_ptr = internal global ptr @ftdi_set_bitmode._entry, section ".printk_index", align 4
@ftdi_gpio_init_valid_mask.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.7, ptr @.str.57, i8 1, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ftdi_gpio_init_valid_mask\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no CBUS pin configured for GPIO\0A\00", [63 x i8] zeroinitializer }, align 32
@ftdi_gpio_init_valid_mask.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.7, ptr @.str.58, i8 1, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CBUS%*pbl configured for GPIO\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@set_serial_info._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.set_serial_info = private unnamed_addr constant [16 x i8] c"set_serial_info\00", align 1
@set_serial_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.set_serial_info, ptr @.str.7, i32 1514, ptr @.str.35, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"use of SPD flags is deprecated\0A\00", [32 x i8] zeroinitializer }, align 32
@set_serial_info._entry_ptr = internal global ptr @set_serial_info._entry, section ".printk_index", align 4
@get_ftdi_divisor.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.7, ptr @.str.65, i8 1, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_ftdi_divisor\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - tty_get_baud_rate reports speed %d\0A\00", [55 x i8] zeroinitializer }, align 32
@get_ftdi_divisor.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.7, ptr @.str.66, i8 1, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - custom divisor %d sets baud rate to %d\0A\00", [51 x i8] zeroinitializer }, align 32
@get_ftdi_divisor.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.7, ptr @.str.67, i8 1, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s - Baudrate (%d) requested is not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@get_ftdi_divisor.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.7, ptr @.str.68, i8 1, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - Baud rate too high!\0A\00", [38 x i8] zeroinitializer }, align 32
@get_ftdi_divisor.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.7, ptr @.str.68, i8 1, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@get_ftdi_divisor.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.7, ptr @.str.68, i8 1, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@get_ftdi_divisor.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.7, ptr @.str.69, i8 1, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s - Baud rate set to %d (divisor 0x%lX) on chip %s\0A\00", [43 x i8] zeroinitializer }, align 32
@ftdi_232bm_baud_base_to_divisor.divfrac = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\03\02\04\01\05\06\07", [24 x i8] zeroinitializer }, align 32
@ftdi_2232h_baud_base_to_divisor.divfrac = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\03\02\04\01\05\06\07", [24 x i8] zeroinitializer }, align 32
@ftdi_set_termios.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.7, ptr @.str.71, i8 2, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ftdi_set_termios\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: forcing baud rate for this device\0A\00", [57 x i8] zeroinitializer }, align 32
@ftdi_set_termios.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.7, ptr @.str.72, i8 2, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: forcing rtscts for this device\0A\00", [60 x i8] zeroinitializer }, align 32
@ftdi_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.70, ptr @.str.7, i32 2677, ptr @.str.35, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"requested CSIZE setting not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@ftdi_set_termios._entry_ptr = internal global ptr @ftdi_set_termios._entry, section ".printk_index", align 4
@ftdi_set_termios.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.7, ptr @.str.74, i8 2, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Setting CS5 quirk\0A\00", [45 x i8] zeroinitializer }, align 32
@ftdi_set_termios.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.7, ptr @.str.75, i8 2, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Setting CS7\0A\00", [19 x i8] zeroinitializer }, align 32
@ftdi_set_termios.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.7, ptr @.str.76, i8 2, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Setting CS8\0A\00", [19 x i8] zeroinitializer }, align 32
@ftdi_set_termios._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.7, i32 2747, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s FAILED to set databits/stopbits/parity\0A\00", [53 x i8] zeroinitializer }, align 32
@ftdi_set_termios._entry_ptr.79 = internal global ptr @ftdi_set_termios._entry.77, section ".printk_index", align 4
@ftdi_set_termios._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.70, ptr @.str.7, i32 2760, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s error from disable flowcontrol urb\0A\00", [57 x i8] zeroinitializer }, align 32
@ftdi_set_termios._entry_ptr.82 = internal global ptr @ftdi_set_termios._entry.80, section ".printk_index", align 4
@ftdi_set_termios._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.70, ptr @.str.7, i32 2768, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s urb failed to set baudrate\0A\00", [33 x i8] zeroinitializer }, align 32
@ftdi_set_termios._entry_ptr.85 = internal global ptr @ftdi_set_termios._entry.83, section ".printk_index", align 4
@ftdi_set_termios.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.7, ptr @.str.86, i8 2, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enabling rts/cts flow control\0A\00", [33 x i8] zeroinitializer }, align 32
@ftdi_set_termios.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.7, ptr @.str.87, i8 2, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"enabling xon/xoff flow control\0A\00", [32 x i8] zeroinitializer }, align 32
@ftdi_set_termios.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.7, ptr @.str.88, i8 2, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disabling flow control\0A\00", [40 x i8] zeroinitializer }, align 32
@ftdi_set_termios._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.70, ptr @.str.7, i32 2798, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set flow control: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ftdi_set_termios._entry_ptr.91 = internal global ptr @ftdi_set_termios._entry.89, section ".printk_index", align 4
@update_mctrl.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.7, ptr @.str.93, i8 1, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"update_mctrl\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - DTR|RTS not being set|cleared\0A\00", [60 x i8] zeroinitializer }, align 32
@update_mctrl.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.7, ptr @.str.94, i8 1, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s Error from MODEM_CTRL urb: DTR %s, RTS %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HIGH\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LOW\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unchanged\00", [22 x i8] zeroinitializer }, align 32
@update_mctrl.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.7, ptr @.str.98, i8 1, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - DTR %s, RTS %s\0A\00", [43 x i8] zeroinitializer }, align 32
@ftdi_break_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.7, i32 2611, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s FAILED to enable/disable break state (state was %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ftdi_break_ctl\00", [17 x i8] zeroinitializer }, align 32
@ftdi_break_ctl._entry_ptr = internal global ptr @ftdi_break_ctl._entry, section ".printk_index", align 4
@ftdi_break_ctl.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.7, ptr @.str.101, i8 2, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s break state is %d - urb is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ftdi_get_modem_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.7, i32 2850, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get modem status: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ftdi_get_modem_status\00", [42 x i8] zeroinitializer }, align 32
@ftdi_get_modem_status._entry_ptr = internal global ptr @ftdi_get_modem_status._entry, section ".printk_index", align 4
@ftdi_get_modem_status.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.7, ptr @.str.104, i8 2, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - 0x%02x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@ftdi_dtr_rts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.7, i32 2417, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error from flowcontrol urb\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ftdi_dtr_rts\00", [19 x i8] zeroinitializer }, align 32
@ftdi_dtr_rts._entry_ptr = internal global ptr @ftdi_dtr_rts._entry, section ".printk_index", align 4
@ftdi_process_packet.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.7, ptr @.str.108, i8 2, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ftdi_process_packet\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"malformed packet\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.ftdi_get_modem_status = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2], [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 8, i64 9]
@__sancov_gen_cov_switch_values.109 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@__sancov_gen_cov_switch_values.111 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 16, i64 7, i64 8]
@__sancov_gen_cov_switch_values.113 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.114 = internal global [11 x i64] [i64 9, i64 32, i64 600, i64 1200, i64 2400, i64 4800, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1139, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"ndi_latency_timer\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2289, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2915, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"id_table_combined\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 147, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"ftdi_8u2232c_quirk\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 121, i32 36 }
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c"ftdi_HE_TIRA1_quirk\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 113, i32 36 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c"ftdi_USB_UIRT_quirk\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 109, i32 36 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"ftdi_jtag_quirk\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 101, i32 36 }
@___asan_gen_.141 = private unnamed_addr constant [22 x i8] c"ftdi_NDI_device_quirk\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 105, i32 36 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"ftdi_stmclite_quirk\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 117, i32 36 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2339, i32 56 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2343, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2344, i32 27 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2345, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2328, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2306, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2307, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2364, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"ftdi_sio_device\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1108, i32 33 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1113, i32 18 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2239, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2255, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1551, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1582, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1600, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1619, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [15 x i8] c"ftdi_chip_name\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1058, i32 20 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1059, i32 10 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1060, i32 16 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1061, i32 14 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1062, i32 14 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1063, i32 14 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1064, i32 14 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1065, i32 14 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1066, i32 14 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1067, i32 14 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1650, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1466, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1426, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1435, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1737, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [20 x i8] c"dev_attr_event_char\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [23 x i8] c"dev_attr_latency_timer\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1727, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1712, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1721, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1696, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1672, i32 23 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1674, i32 23 }
@___asan_gen_.333 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2154, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2156, i32 19 }
@___asan_gen_.342 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2171, i32 11 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2080, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1794, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1982, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1984, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 174, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1514, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1288, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1298, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1319, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1330, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1376, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1180, i32 29 }
@___asan_gen_.408 = private unnamed_addr constant [8 x i8] c"divfrac\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1201, i32 29 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2651, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2658, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2677, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2724, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2728, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2733, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2746, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2759, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2768, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2780, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2783, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2787, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2798, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1241, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1262, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1268, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2610, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2614, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2850, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2863, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2417, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.526 = private constant [33 x i8] c"../drivers/usb/serial/ftdi_sio.c\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2479, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant [35 x i8] c"switch.table.ftdi_get_modem_status\00", align 1
@llvm.compiler.used = appending global [166 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__UNIQUE_ID_ndi_latency_timer280, ptr @__UNIQUE_ID_ndi_latency_timertype279, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_ftdi_sio__274_2915_usb_serial_module_init6, ptr @__param_ndi_latency_timer, ptr @ftdi_NDI_device_setup._entry, ptr @ftdi_NDI_device_setup._entry_ptr, ptr @ftdi_break_ctl._entry, ptr @ftdi_break_ctl._entry_ptr, ptr @ftdi_determine_type._entry, ptr @ftdi_determine_type._entry_ptr, ptr @ftdi_dtr_rts._entry, ptr @ftdi_dtr_rts._entry_ptr, ptr @ftdi_get_modem_status._entry, ptr @ftdi_get_modem_status._entry_ptr, ptr @ftdi_jtag_probe._entry, ptr @ftdi_jtag_probe._entry_ptr, ptr @ftdi_set_bitmode._entry, ptr @ftdi_set_bitmode._entry_ptr, ptr @ftdi_set_max_packet_size._entry, ptr @ftdi_set_max_packet_size._entry_ptr, ptr @ftdi_set_termios._entry, ptr @ftdi_set_termios._entry.77, ptr @ftdi_set_termios._entry.80, ptr @ftdi_set_termios._entry.83, ptr @ftdi_set_termios._entry.89, ptr @ftdi_set_termios._entry_ptr, ptr @ftdi_set_termios._entry_ptr.79, ptr @ftdi_set_termios._entry_ptr.82, ptr @ftdi_set_termios._entry_ptr.85, ptr @ftdi_set_termios._entry_ptr.91, ptr @ftdi_sio_port_probe._entry, ptr @ftdi_sio_port_probe._entry_ptr, ptr @ftdi_stmclite_probe._entry, ptr @ftdi_stmclite_probe._entry_ptr, ptr @read_latency_timer._entry, ptr @read_latency_timer._entry_ptr, ptr @set_serial_info._entry, ptr @set_serial_info._entry_ptr, ptr @usb_serial_module_exit, ptr @write_latency_timer._entry, ptr @write_latency_timer._entry_ptr, ptr @serial_drivers, ptr @ndi_latency_timer, ptr @.str, ptr @id_table_combined, ptr @ftdi_8u2232c_quirk, ptr @ftdi_HE_TIRA1_quirk, ptr @ftdi_USB_UIRT_quirk, ptr @ftdi_jtag_quirk, ptr @ftdi_NDI_device_quirk, ptr @ftdi_stmclite_quirk, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ftdi_sio_device, ptr @.str.14, ptr @ftdi_sio_port_probe.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @ftdi_chip_name, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @dev_attr_event_char, ptr @dev_attr_latency_timer, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @ftdi_gpio_init.__key, ptr @.str.50, ptr @.str.51, ptr @ftdi_gpio_init.lock_key, ptr @ftdi_gpio_init.request_key, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @set_serial_info._rs, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @ftdi_232bm_baud_base_to_divisor.divfrac, ptr @ftdi_2232h_baud_base_to_divisor.divfrac, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @switch.table.ftdi_get_modem_status], section "llvm.metadata"
@0 = internal global [138 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndi_latency_timer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_combined to i32), i32 20424, i32 25536, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_8u2232c_quirk to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_HE_TIRA1_quirk to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_USB_UIRT_quirk to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_jtag_quirk to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_NDI_device_quirk to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_stmclite_quirk to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_jtag_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_NDI_device_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_stmclite_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_sio_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_sio_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_sio_port_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_determine_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_chip_name to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_set_max_packet_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_latency_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_latency_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_event_char to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_latency_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_gpio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_gpio_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_gpio_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_set_bitmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_serial_info._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_serial_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_232bm_baud_base_to_divisor.divfrac to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_2232h_baud_base_to_divisor.divfrac to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_set_termios._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_set_termios._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_set_termios._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_set_termios._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_break_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_get_modem_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdi_dtr_rts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ftdi_get_modem_status to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table_combined) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_8u2232c_probe(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %manufacturer = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %manufacturer, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(14) @.str.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %4 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp eq i8 %9, 0
  br i1 %cmp.i, label %if.then.cleanup.sink.split_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %product = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %product, align 8
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true5:                                   ; preds = %if.end
  %call7 = tail call i32 @strcmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(18) @.str.2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true5.if.then16_crit_edge, label %lor.lhs.false

land.lhs.true5.if.then16_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %call10 = tail call i32 @strcmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(20) @.str.3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.then16_crit_edge, label %lor.lhs.false12

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call14 = tail call i32 @strcmp(ptr noundef nonnull %11, ptr noundef nonnull dereferenceable(17) @.str.4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false12.if.then16_crit_edge, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false12.if.then16_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false12.if.then16_crit_edge, %lor.lhs.false.if.then16_crit_edge, %land.lhs.true5.if.then16_crit_edge
  %interface.i27 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %12 = ptrtoint ptr %interface.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface.i27, align 4
  %cur_altsetting.i28 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cur_altsetting.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_altsetting.i28, align 4
  %bInterfaceNumber.i29 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bInterfaceNumber.i29 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bInterfaceNumber.i29, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i30 = icmp eq i8 %17, 0
  br i1 %cmp.i30, label %if.then16.cleanup.sink.split_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16.cleanup.sink.split_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then16.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %5, %if.then.cleanup.sink.split_crit_edge ], [ %13, %if.then16.cleanup.sink.split_crit_edge ]
  %dev.i31 = getelementptr inbounds %struct.usb_interface, ptr %.sink, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i31, ptr noundef nonnull @.str.5) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then16.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false12.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then16.cleanup_crit_edge ], [ -19, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_jtag_probe(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ftdi_HE_TIRA1_setup(ptr nocapture noundef %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ftdi_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 48
  store i32 %or, ptr %flags, align 4
  %custom_divisor = getelementptr inbounds %struct.ftdi_private, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %custom_divisor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 240, ptr %custom_divisor, align 4
  %force_baud = getelementptr inbounds %struct.ftdi_private, ptr %priv, i32 0, i32 9
  %3 = ptrtoint ptr %force_baud to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 38400, ptr %force_baud, align 4
  %force_rtscts = getelementptr inbounds %struct.ftdi_private, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %force_rtscts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %force_rtscts, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ftdi_USB_UIRT_setup(ptr nocapture noundef %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ftdi_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 48
  store i32 %or, ptr %flags, align 4
  %custom_divisor = getelementptr inbounds %struct.ftdi_private, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %custom_divisor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 77, ptr %custom_divisor, align 4
  %force_baud = getelementptr inbounds %struct.ftdi_private, ptr %priv, i32 0, i32 9
  %3 = ptrtoint ptr %force_baud to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 38400, ptr %force_baud, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_NDI_device_setup(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %2 = load i32, ptr @ndi_latency_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 99)
  %4 = select i1 %cmp, i32 1, i32 %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_NDI_device_setup.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_NDI_device_setup, %if.then6)) #12
          to label %do.end11 [label %if.then6], !srcloc !304

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_NDI_device_setup.__UNIQUE_ID_ddebug258, ptr noundef %dev7, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %4) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %entry
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.12, i32 noundef %4) #16
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -2147483648
  %conv = trunc i32 %4 to i16
  %call14 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 9, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_stmclite_probe(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ult i8 %5, 2
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_sio_probe(ptr noundef %serial, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %land.lhs.true.if.end4_crit_edge, label %if.then

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %4(ptr noundef %serial) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup6_crit_edge

if.then.cleanup6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup6

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %5 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_info, align 4
  %7 = inttoptr i32 %6 to ptr
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %private.i, align 4
  br label %cleanup6

cleanup6:                                         ; preds = %if.end4, %if.then.cleanup6_crit_edge
  %retval.1 = phi i32 [ 0, %if.end4 ], [ %call, %if.then.cleanup6_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_sio_port_probe(ptr noundef %port) #2 align 64 {
entry:
  %buf.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 584) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %cfg_lock = getelementptr inbounds %struct.ftdi_private, ptr %call7.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %cfg_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @ftdi_sio_port_probe.__key) #12
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.body.if.end6_crit_edge, label %land.lhs.true

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %do.body
  %port_probe = getelementptr inbounds %struct.ftdi_sio_quirk, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %port_probe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_probe, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %6(ptr noundef nonnull %call7.i.i) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.if.end6_crit_edge, %do.body.if.end6_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  tail call fastcc void @ftdi_determine_type(ptr noundef %port)
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %interface1.i = getelementptr inbounds %struct.usb_serial, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %interface1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface1.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end6.ftdi_set_max_packet_size.exit_crit_edge, label %for.body.lr.ph.i

if.end6.ftdi_set_max_packet_size.exit_crit_edge:  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %ftdi_set_max_packet_size.exit

for.body.lr.ph.i:                                 ; preds = %if.end6
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_altsetting.i, align 4
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %endpoint.i, align 4
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %21, i32 %i.027.i
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 4
  %22 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %wMaxPacketSize.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool5.not.i = icmp eq i16 %23, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 16384, ptr %wMaxPacketSize.i, align 1
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %25 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bEndpointAddress.i.i, align 1
  %27 = and i8 %26, 15
  %and.i.i = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.33, i32 noundef %and.i.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %wMaxPacketSize.i, align 1
  %30 = and i16 %29, -249
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #12
  %max_packet_size.i = getelementptr inbounds %struct.ftdi_private, ptr %9, i32 0, i32 12
  %32 = ptrtoint ptr %max_packet_size.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %max_packet_size.i, align 4
  br label %ftdi_set_max_packet_size.exit

ftdi_set_max_packet_size.exit:                    ; preds = %for.end.i, %if.end6.ftdi_set_max_packet_size.exit_crit_edge
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %.off.i = add i32 %36, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %ftdi_set_max_packet_size.exit.if.end9_crit_edge, label %if.end.i

ftdi_set_max_packet_size.exit.if.end9_crit_edge:  ; preds = %ftdi_set_max_packet_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end.i:                                         ; preds = %ftdi_set_max_packet_size.exit
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i) #12
  %41 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !305
  %interface.i.i = getelementptr inbounds %struct.ftdi_private, ptr %34, i32 0, i32 8
  %42 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %interface.i.i, align 2
  %call1.i.i = call i32 @usb_control_msg_recv(ptr noundef %40, i8 noundef zeroext 0, i8 noundef zeroext 10, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %43, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %_read_latency_timer.exit.thread.i, label %_read_latency_timer.exit.i

_read_latency_timer.exit.thread.i:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buf.i.i, align 1
  %conv.i.i = zext i8 %45 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #12
  br label %if.end9

_read_latency_timer.exit.i:                       ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp4.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp4.i, label %do.end.i, label %_read_latency_timer.exit.i.if.end9_crit_edge

_read_latency_timer.exit.i.if.end9_crit_edge:     ; preds = %_read_latency_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

do.end.i:                                         ; preds = %_read_latency_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i38 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i38, ptr noundef nonnull @.str.36, i32 noundef %call1.i.i) #16
  br label %if.end9

if.end9:                                          ; preds = %do.end.i, %_read_latency_timer.exit.i.if.end9_crit_edge, %_read_latency_timer.exit.thread.i, %ftdi_set_max_packet_size.exit.if.end9_crit_edge
  %.sink = phi ptr [ %34, %_read_latency_timer.exit.thread.i ], [ %34, %_read_latency_timer.exit.i.if.end9_crit_edge ], [ %call7.i.i, %do.end.i ], [ %call7.i.i, %ftdi_set_max_packet_size.exit.if.end9_crit_edge ]
  %rv.0.i17.i.sink = phi i32 [ %conv.i.i, %_read_latency_timer.exit.thread.i ], [ %call1.i.i, %_read_latency_timer.exit.i.if.end9_crit_edge ], [ 16, %do.end.i ], [ 16, %ftdi_set_max_packet_size.exit.if.end9_crit_edge ]
  %latency.i = getelementptr inbounds %struct.ftdi_private, ptr %.sink, i32 0, i32 11
  %46 = ptrtoint ptr %latency.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %rv.0.i17.i.sink, ptr %latency.i, align 4
  %call10 = call fastcc i32 @write_latency_timer(ptr noundef %port)
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.not.i = icmp eq i32 %50, 1
  br i1 %cmp.not.i, label %if.end9.create_sysfs_attrs.exit_crit_edge, label %do.body.i

if.end9.create_sysfs_attrs.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %create_sysfs_attrs.exit

do.body.i:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_sysfs_attrs.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_sio_port_probe, %if.then5.i)) #12
          to label %do.end.i42 [label %if.then5.i], !srcloc !304

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i40 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %48, align 4
  %arrayidx.i41 = getelementptr [10 x ptr], ptr @ftdi_chip_name, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i41, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @create_sysfs_attrs.__UNIQUE_ID_ddebug254, ptr noundef %dev.i40, ptr noundef nonnull @.str.42, ptr noundef %54) #12
  br label %do.end.i42

do.end.i42:                                       ; preds = %if.then5.i, %do.body.i
  %dev7.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %call8.i = call i32 @device_create_file(ptr noundef %dev7.i, ptr noundef nonnull @dev_attr_event_char) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %do.end.i42.create_sysfs_attrs.exit_crit_edge

do.end.i42.create_sysfs_attrs.exit_crit_edge:     ; preds = %do.end.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %create_sysfs_attrs.exit

land.lhs.true.i:                                  ; preds = %do.end.i42
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %48, align 4
  %.off.i43 = add i32 %56, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.off.i43)
  %switch.i44 = icmp ult i32 %.off.i43, 7
  br i1 %switch.i44, label %if.then29.i, label %land.lhs.true.i.create_sysfs_attrs.exit_crit_edge

land.lhs.true.i.create_sysfs_attrs.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %create_sysfs_attrs.exit

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call31.i = call i32 @device_create_file(ptr noundef %dev7.i, ptr noundef nonnull @dev_attr_latency_timer) #12
  br label %create_sysfs_attrs.exit

create_sysfs_attrs.exit:                          ; preds = %if.then29.i, %land.lhs.true.i.create_sysfs_attrs.exit_crit_edge, %do.end.i42.create_sysfs_attrs.exit_crit_edge, %if.end9.create_sysfs_attrs.exit_crit_edge
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_data.i.i, align 4
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port, align 8
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %58, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %62, label %create_sysfs_attrs.exit.cleanup_crit_edge [
    i32 8, label %sw.bb.i
    i32 5, label %sw.bb3.i
    i32 9, label %sw.bb5.i
  ]

create_sysfs_attrs.exit.cleanup_crit_edge:        ; preds = %create_sysfs_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %create_sysfs_attrs.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3264, i32 noundef 4) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.i.do.end17_crit_edge, label %if.end.i.i

sw.bb.i.do.end17_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

if.end.i.i:                                       ; preds = %sw.bb.i
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %port, align 8
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.end.i.i
  %read.0.i.i.i = phi i32 [ %add23.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ 0, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %read.0.i.i.i)
  %cmp9.i.i.i = icmp slt i32 %read.0.i.i.i, 4
  br i1 %cmp9.i.i.i, label %while.body.i.i.i, label %for.body.preheader.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 8
  %shl.i.i.i.i = shl i32 %70, 8
  %or12.i.i.i = or i32 %shl.i.i.i.i, -2147483520
  %add.i.i.i = add nsw i32 %read.0.i.i.i, 26
  %div.i.i.i = sdiv i32 %add.i.i.i, 2
  %conv14.i.i.i = trunc i32 %div.i.i.i to i16
  %add.ptr.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %read.0.i.i.i
  %call15.i.i.i = call i32 @usb_control_msg(ptr noundef %68, i32 noundef %or12.i.i.i, i8 noundef zeroext -112, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv14.i.i.i, ptr noundef %add.ptr.i.i.i, i16 noundef zeroext 2, i32 noundef 5000) #12
  %cmp16.i.i.i = icmp slt i32 %call15.i.i.i, 2
  %add23.i.i.i = add i32 %call15.i.i.i, %read.0.i.i.i
  br i1 %cmp16.i.i.i, label %cleanup24.loopexit.split.loop.exit.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i

cleanup24.loopexit.split.loop.exit.i.i.i:         ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15.i.i.i)
  %cmp19.le.i.i.i = icmp sgt i32 %call15.i.i.i, -1
  %spec.select.i.i = select i1 %cmp19.le.i.i.i, i32 -5, i32 %call15.i.i.i
  br label %out_free.i.i

for.body.preheader.i.i:                           ; preds = %while.cond.i.i.i
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.i, align 2
  %arrayidx5.i.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %73 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx5.i.i, align 1
  %75 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %call7.i.i.i, align 8
  %ngpio.i.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 20
  %77 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 4, ptr %ngpio.i.i, align 4
  %gpio_altfunc.i.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 18
  %78 = ptrtoint ptr %gpio_altfunc.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %gpio_altfunc.i.i, align 2
  %conv.i.i46 = zext i8 %72 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i46, 8
  %79 = shl i8 %74, 4
  %shl7.i.i = zext i8 %79 to i32
  %or.i.i = or i32 %shl.i.i, %shl7.i.i
  %80 = lshr i8 %76, 4
  %81 = zext i8 %80 to i32
  %or11.i.i = or i32 %or.i.i, %81
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end28.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.055.i.i = phi i32 [ %inc.i.i, %if.end28.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %cbus_config.054.i.i = phi i32 [ %86, %if.end28.i.i.for.body.i.i_crit_edge ], [ %or11.i.i, %for.body.preheader.i.i ]
  %and19.i.i = and i32 %cbus_config.054.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and19.i.i)
  %cmp20.i.i = icmp eq i32 %and19.i.i, 8
  br i1 %cmp20.i.i, label %if.then22.i.i, label %for.body.i.i.if.end28.i.i_crit_edge

for.body.i.i.if.end28.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i.i

if.then22.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl23.i.i = shl nuw i32 1, %i.055.i.i
  %82 = ptrtoint ptr %gpio_altfunc.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %gpio_altfunc.i.i, align 2
  %84 = trunc i32 %shl23.i.i to i8
  %85 = xor i8 %84, -1
  %conv27.i.i = and i8 %83, %85
  store i8 %conv27.i.i, ptr %gpio_altfunc.i.i, align 2
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then22.i.i, %for.body.i.i.if.end28.i.i_crit_edge
  %conv18.i.i = lshr i32 %cbus_config.054.i.i, 4
  %86 = and i32 %conv18.i.i, 4095
  %inc.i.i = add nuw nsw i32 %i.055.i.i, 1
  %87 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %ngpio.i.i, align 4
  %conv15.i.i = zext i16 %88 to i32
  %cmp16.i.i = icmp ult i32 %inc.i.i, %conv15.i.i
  br i1 %cmp16.i.i, label %if.end28.i.i.for.body.i.i_crit_edge, label %if.end28.i.i.out_free.i.i_crit_edge

if.end28.i.i.out_free.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.i.i

if.end28.i.i.for.body.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

out_free.i.i:                                     ; preds = %if.end28.i.i.out_free.i.i_crit_edge, %cleanup24.loopexit.split.loop.exit.i.i.i
  %retval.2.i51.i.i = phi i32 [ %spec.select.i.i, %cleanup24.loopexit.split.loop.exit.i.i.i ], [ 0, %if.end28.i.i.out_free.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %create_sysfs_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = call fastcc i32 @ftdi_gpio_init_ft232r(ptr noundef %port) #12
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %create_sysfs_attrs.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i52.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3264, i32 noundef 4) #17
  %tobool.not.i53.i = icmp eq ptr %call7.i.i52.i, null
  br i1 %tobool.not.i53.i, label %sw.bb5.i.do.end17_crit_edge, label %sw.bb5.i.while.cond.i.i56.i_crit_edge

sw.bb5.i.while.cond.i.i56.i_crit_edge:            ; preds = %sw.bb5.i
  br label %while.cond.i.i56.i

sw.bb5.i.do.end17_crit_edge:                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

while.cond.i.i56.i:                               ; preds = %while.body.i.i66.i.while.cond.i.i56.i_crit_edge, %sw.bb5.i.while.cond.i.i56.i_crit_edge
  %read.0.i.i54.i = phi i32 [ %add23.i.i65.i, %while.body.i.i66.i.while.cond.i.i56.i_crit_edge ], [ 0, %sw.bb5.i.while.cond.i.i56.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %read.0.i.i54.i)
  %cmp9.i.i55.i = icmp slt i32 %read.0.i.i54.i, 4
  br i1 %cmp9.i.i55.i, label %while.body.i.i66.i, label %for.body.preheader.i72.i

while.body.i.i66.i:                               ; preds = %while.cond.i.i56.i
  %90 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %60, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 8
  %shl.i.i.i57.i = shl i32 %93, 8
  %or12.i.i58.i = or i32 %shl.i.i.i57.i, -2147483520
  %add.i.i59.i = add nsw i32 %read.0.i.i54.i, 26
  %div.i.i60.i = sdiv i32 %add.i.i59.i, 2
  %conv14.i.i61.i = trunc i32 %div.i.i60.i to i16
  %add.ptr.i.i62.i = getelementptr i8, ptr %call7.i.i52.i, i32 %read.0.i.i54.i
  %call15.i.i63.i = call i32 @usb_control_msg(ptr noundef %91, i32 noundef %or12.i.i58.i, i8 noundef zeroext -112, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv14.i.i61.i, ptr noundef %add.ptr.i.i62.i, i16 noundef zeroext 2, i32 noundef 5000) #12
  %cmp16.i.i64.i = icmp slt i32 %call15.i.i63.i, 2
  %add23.i.i65.i = add i32 %call15.i.i63.i, %read.0.i.i54.i
  br i1 %cmp16.i.i64.i, label %cleanup24.loopexit.split.loop.exit.i.i69.i, label %while.body.i.i66.i.while.cond.i.i56.i_crit_edge

while.body.i.i66.i.while.cond.i.i56.i_crit_edge:  ; preds = %while.body.i.i66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i56.i

cleanup24.loopexit.split.loop.exit.i.i69.i:       ; preds = %while.body.i.i66.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15.i.i63.i)
  %cmp19.le.i.i67.i = icmp sgt i32 %call15.i.i63.i, -1
  %spec.select.i68.i = select i1 %cmp19.le.i.i67.i, i32 -5, i32 %call15.i.i63.i
  br label %out_free.i79.i

for.body.preheader.i72.i:                         ; preds = %while.cond.i.i56.i
  %ngpio.i70.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 20
  %94 = ptrtoint ptr %ngpio.i70.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 4, ptr %ngpio.i70.i, align 4
  %gpio_altfunc.i71.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 18
  %95 = ptrtoint ptr %gpio_altfunc.i71.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %gpio_altfunc.i71.i, align 2
  br label %for.body.i74.i

for.body.i74.i:                                   ; preds = %for.inc.i.i.for.body.i74.i_crit_edge, %for.body.preheader.i72.i
  %conv42.i.i = phi i32 [ %conv.i78.i, %for.inc.i.i.for.body.i74.i_crit_edge ], [ 0, %for.body.preheader.i72.i ]
  %i.041.i.i = phi i8 [ %inc.i77.i, %for.inc.i.i.for.body.i74.i_crit_edge ], [ 0, %for.body.preheader.i72.i ]
  %arrayidx.i73.i = getelementptr i8, ptr %call7.i.i52.i, i32 %conv42.i.i
  %96 = ptrtoint ptr %arrayidx.i73.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i73.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %97)
  %cmp12.i.i = icmp eq i8 %97, 8
  br i1 %cmp12.i.i, label %if.then14.i.i, label %for.body.i74.i.for.inc.i.i_crit_edge

for.body.i74.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then14.i.i:                                    ; preds = %for.body.i74.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i75.i = shl nuw i32 1, %conv42.i.i
  %98 = ptrtoint ptr %gpio_altfunc.i71.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %gpio_altfunc.i71.i, align 2
  %100 = trunc i32 %shl.i75.i to i8
  %101 = xor i8 %100, -1
  %conv18.i76.i = and i8 %99, %101
  store i8 %conv18.i76.i, ptr %gpio_altfunc.i71.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then14.i.i, %for.body.i74.i.for.inc.i.i_crit_edge
  %inc.i77.i = add i8 %i.041.i.i, 1
  %conv.i78.i = zext i8 %inc.i77.i to i32
  %102 = ptrtoint ptr %ngpio.i70.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %ngpio.i70.i, align 4
  %104 = zext i8 %inc.i77.i to i16
  %cmp9.i.i = icmp ugt i16 %103, %104
  br i1 %cmp9.i.i, label %for.inc.i.i.for.body.i74.i_crit_edge, label %for.inc.i.i.out_free.i79.i_crit_edge

for.inc.i.i.out_free.i79.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.i79.i

for.inc.i.i.for.body.i74.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i74.i

out_free.i79.i:                                   ; preds = %for.inc.i.i.out_free.i79.i_crit_edge, %cleanup24.loopexit.split.loop.exit.i.i69.i
  %retval.2.i39.i.i = phi i32 [ %spec.select.i68.i, %cleanup24.loopexit.split.loop.exit.i.i69.i ], [ 0, %for.inc.i.i.out_free.i79.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i52.i) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %out_free.i79.i, %sw.bb3.i, %out_free.i.i
  %result.0.i = phi i32 [ %call4.i, %sw.bb3.i ], [ %retval.2.i51.i.i, %out_free.i.i ], [ %retval.2.i39.i.i, %out_free.i79.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp.i = icmp slt i32 %result.0.i, 0
  br i1 %cmp.i, label %sw.epilog.i.do.end17_crit_edge, label %do.body.i49

sw.epilog.i.do.end17_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

do.body.i49:                                      ; preds = %sw.epilog.i
  %gpio_lock.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 15
  call void @__mutex_init(ptr noundef %gpio_lock.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @ftdi_gpio_init.__key) #12
  %gc.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14
  %105 = ptrtoint ptr %gc.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.51, ptr %gc.i, align 4
  %request.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 5
  %106 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @ftdi_gpio_request, ptr %request.i, align 4
  %get_direction.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 7
  %107 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @ftdi_gpio_direction_get, ptr %get_direction.i, align 4
  %direction_input.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 8
  %108 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @ftdi_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 9
  %109 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @ftdi_gpio_direction_output, ptr %direction_output.i, align 4
  %init_valid_mask.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 17
  %110 = ptrtoint ptr %init_valid_mask.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @ftdi_gpio_init_valid_mask, ptr %init_valid_mask.i, align 4
  %get.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 10
  %111 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @ftdi_gpio_get, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 12
  %112 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @ftdi_gpio_set, ptr %set.i, align 4
  %get_multiple.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 11
  %113 = ptrtoint ptr %get_multiple.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @ftdi_gpio_get_multiple, ptr %get_multiple.i, align 4
  %set_multiple.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 13
  %114 = ptrtoint ptr %set_multiple.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @ftdi_gpio_set_multiple, ptr %set_multiple.i, align 4
  %owner.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 4
  %115 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %owner.i, align 4
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %60, i32 0, i32 2
  %116 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %interface.i, align 4
  %dev.i47 = getelementptr inbounds %struct.usb_interface, ptr %117, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 2
  %118 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %dev.i47, ptr %parent.i, align 4
  %base.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 19
  %119 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %base.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 14, i32 23
  %120 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %can_sleep.i, align 4
  %call21.i = call i32 @gpiochip_add_data_with_key(ptr noundef %gc.i, ptr noundef %port, ptr noundef nonnull @ftdi_gpio_init.lock_key, ptr noundef nonnull @ftdi_gpio_init.request_key) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool.not.i48 = icmp eq i32 %call21.i, 0
  br i1 %tobool.not.i48, label %if.then22.i, label %ftdi_gpio_init.exit

if.then22.i:                                      ; preds = %do.body.i49
  call void @__sanitizer_cov_trace_pc() #14
  %gpio_registered.i = getelementptr inbounds %struct.ftdi_private, ptr %58, i32 0, i32 16
  %121 = ptrtoint ptr %gpio_registered.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %gpio_registered.i, align 4
  br label %cleanup

ftdi_gpio_init.exit:                              ; preds = %do.body.i49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp13 = icmp slt i32 %call21.i, 0
  br i1 %cmp13, label %ftdi_gpio_init.exit.do.end17_crit_edge, label %ftdi_gpio_init.exit.cleanup_crit_edge

ftdi_gpio_init.exit.cleanup_crit_edge:            ; preds = %ftdi_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ftdi_gpio_init.exit.do.end17_crit_edge:           ; preds = %ftdi_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

do.end17:                                         ; preds = %ftdi_gpio_init.exit.do.end17_crit_edge, %sw.epilog.i.do.end17_crit_edge, %sw.bb5.i.do.end17_crit_edge, %sw.bb.i.do.end17_crit_edge
  %retval.0.i5055 = phi i32 [ %call21.i, %ftdi_gpio_init.exit.do.end17_crit_edge ], [ -12, %sw.bb5.i.do.end17_crit_edge ], [ -12, %sw.bb.i.do.end17_crit_edge ], [ %result.0.i, %sw.epilog.i.do.end17_crit_edge ]
  %122 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %port, align 8
  %interface = getelementptr inbounds %struct.usb_serial, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %125, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i5055) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %ftdi_gpio_init.exit.cleanup_crit_edge, %if.then22.i, %create_sysfs_attrs.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end17 ], [ 0, %ftdi_gpio_init.exit.cleanup_crit_edge ], [ 0, %create_sysfs_attrs.exit.cleanup_crit_edge ], [ 0, %if.then22.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftdi_sio_port_remove(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_registered.i = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %gpio_registered.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio_registered.i, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gc.i = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 14
  tail call void @gpiochip_remove(ptr noundef %gc.i) #12
  %4 = ptrtoint ptr %gpio_registered.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %gpio_registered.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %gpio_used.i = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %gpio_used.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gpio_used.i, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not.i = icmp eq i8 %6, 0
  br i1 %tobool2.not.i, label %if.end.i.ftdi_gpio_remove.exit_crit_edge, label %if.then3.i

if.end.i.ftdi_gpio_remove.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ftdi_gpio_remove.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_output.i.i = getelementptr inbounds %struct.ftdi_private, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %gpio_output.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %gpio_output.i.i, align 1
  %gpio_value.i.i = getelementptr inbounds %struct.ftdi_private, ptr %8, i32 0, i32 20
  %10 = ptrtoint ptr %gpio_value.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %gpio_value.i.i, align 4
  %call1.i.i = tail call fastcc i32 @ftdi_set_bitmode(ptr noundef %port, i8 noundef zeroext 0) #12
  %11 = ptrtoint ptr %gpio_used.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %gpio_used.i, align 1
  br label %ftdi_gpio_remove.exit

ftdi_gpio_remove.exit:                            ; preds = %if.then3.i, %if.end.i.ftdi_gpio_remove.exit_crit_edge
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 1
  br i1 %cmp.not.i, label %ftdi_gpio_remove.exit.remove_sysfs_attrs.exit_crit_edge, label %if.then.i4

ftdi_gpio_remove.exit.remove_sysfs_attrs.exit_crit_edge: ; preds = %ftdi_gpio_remove.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_sysfs_attrs.exit

if.then.i4:                                       ; preds = %ftdi_gpio_remove.exit
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_event_char) #12
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %.off.i = add i32 %17, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 7
  br i1 %switch.i, label %if.then20.i, label %if.then.i4.remove_sysfs_attrs.exit_crit_edge

if.then.i4.remove_sysfs_attrs.exit_crit_edge:     ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_sysfs_attrs.exit

if.then20.i:                                      ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_latency_timer) #12
  br label %remove_sysfs_attrs.exit

remove_sysfs_attrs.exit:                          ; preds = %if.then20.i, %if.then.i4.remove_sysfs_attrs.exit_crit_edge, %ftdi_gpio_remove.exit.remove_sysfs_attrs.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  %interface = getelementptr inbounds %struct.ftdi_private, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %interface, align 2
  %call3 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  %tobool.not = icmp eq ptr %tty, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ftdi_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #12
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %result.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 21593, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21593
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %0 = inttoptr i32 %arg to ptr
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i) #12
  %transmit_empty.i = getelementptr inbounds %struct.ftdi_private, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %transmit_empty.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %transmit_empty.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp ne i8 %6, 0
  %spec.store.select.i = zext i1 %tobool.not.i to i32
  %7 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.store.select.i, ptr %result.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.61, i32 noundef 174) #12
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %sw.bb.get_lsr_info.exit_crit_edge, label %if.end.i.i.i

sw.bb.get_lsr_info.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_lsr_info.exit

if.end.i.i.i:                                     ; preds = %sw.bb
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #18, !srcloc !307
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.get_lsr_info.exit_crit_edge

if.end.i.i.i.get_lsr_info.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_lsr_info.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %result.i, i32 noundef 4) #12
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %result.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 0, i32 -14
  br label %get_lsr_info.exit

get_lsr_info.exit:                                ; preds = %copy_to_user.exit.i, %if.end.i.i.i.get_lsr_info.exit_crit_edge, %sw.bb.get_lsr_info.exit_crit_edge
  %9 = phi i32 [ -14, %sw.bb.get_lsr_info.exit_crit_edge ], [ -14, %if.end.i.i.i.get_lsr_info.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #12
  br label %cleanup

cleanup:                                          ; preds = %get_lsr_info.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %get_lsr_info.exit ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @get_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %ss) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.ftdi_private, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %flags1 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 4
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %flags1, align 4
  %baud_base = getelementptr inbounds %struct.ftdi_private, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %baud_base, align 4
  %baud_base2 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 7
  %9 = ptrtoint ptr %baud_base2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %baud_base2, align 4
  %custom_divisor = getelementptr inbounds %struct.ftdi_private, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %custom_divisor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %custom_divisor, align 4
  %custom_divisor3 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 6
  %12 = ptrtoint ptr %custom_divisor3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %custom_divisor3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_serial_info(ptr noundef %tty, ptr nocapture noundef readonly %ss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cfg_lock = getelementptr inbounds %struct.ftdi_private, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %cfg_lock, i32 noundef 0) #12
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call1, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %flags2 = getelementptr inbounds %struct.ftdi_private, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags2, align 4
  %xor = xor i32 %7, %5
  %and = and i32 %xor, -13361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %flags6 = getelementptr inbounds %struct.ftdi_private, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags6, align 4
  %custom_divisor = getelementptr inbounds %struct.ftdi_private, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %custom_divisor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %custom_divisor, align 4
  %flags7 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 4
  %12 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags7, align 4
  %and8 = and i32 %13, 131071
  store i32 %and8, ptr %flags6, align 4
  %custom_divisor10 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 6
  %14 = ptrtoint ptr %custom_divisor10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %custom_divisor10, align 4
  store i32 %15, ptr %custom_divisor, align 4
  %call12 = tail call fastcc i32 @write_latency_timer(ptr noundef %1)
  %16 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags6, align 4
  %xor14 = xor i32 %17, %9
  %and15 = and i32 %xor14, 4144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %and18 = and i32 %17, 4144
  br i1 %tobool16.not, label %lor.lhs.false, label %if.then21

lor.lhs.false:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and18)
  %cmp = icmp eq i32 %and18, 48
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %custom_divisor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %custom_divisor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp20.not = icmp eq i32 %19, %11
  br i1 %cmp20.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %phi.cmp = icmp eq i32 %and18, 0
  br i1 %phi.cmp, label %if.then21.if.end33_crit_edge, label %if.then21.do.body_crit_edge

if.then21.do.body_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then21.if.end33_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.body:                                          ; preds = %if.then21.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @set_serial_info._rs, ptr noundef nonnull @__func__.set_serial_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body.if.end33_crit_edge, label %do.end

do.body.if.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.63) #16
  br label %if.end33

if.end33:                                         ; preds = %do.end, %do.body.if.end33_crit_edge, %if.then21.if.end33_crit_edge
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call fastcc i32 @get_ftdi_divisor(ptr noundef %tty, ptr noundef %1) #12
  %shr.i = lshr i32 %call1.i, 16
  %conv2.i = trunc i32 %shr.i to i16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %23, label %if.end33.change_speed.exit_crit_edge [
    i32 4, label %if.end33.if.then.i_crit_edge
    i32 6, label %if.end33.if.then.i_crit_edge58
    i32 7, label %if.end33.if.then.i_crit_edge59
    i32 8, label %if.end33.if.then.i_crit_edge60
    i32 9, label %if.end33.if.then.i_crit_edge61
  ]

if.end33.if.then.i_crit_edge61:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end33.if.then.i_crit_edge60:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end33.if.then.i_crit_edge59:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end33.if.then.i_crit_edge58:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end33.if.then.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end33.change_speed.exit_crit_edge:             ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %change_speed.exit

if.then.i:                                        ; preds = %if.end33.if.then.i_crit_edge, %if.end33.if.then.i_crit_edge58, %if.end33.if.then.i_crit_edge59, %if.end33.if.then.i_crit_edge60, %if.end33.if.then.i_crit_edge61
  %shl.i = shl nuw nsw i32 %shr.i, 8
  %interface.i = getelementptr inbounds %struct.ftdi_private, ptr %21, i32 0, i32 8
  %25 = ptrtoint ptr %interface.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %interface.i, align 2
  %27 = trunc i32 %shl.i to i16
  %conv21.i = or i16 %26, %27
  br label %change_speed.exit

change_speed.exit:                                ; preds = %if.then.i, %if.end33.change_speed.exit_crit_edge
  %index.0.i = phi i16 [ %conv21.i, %if.then.i ], [ %conv2.i, %if.end33.change_speed.exit_crit_edge ]
  %conv.i = trunc i32 %call1.i to i16
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i = shl i32 %33, 8
  %or25.i = or i32 %shl.i.i, -2147483648
  %call26.i = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or25.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext %index.0.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #12
  br label %cleanup

cleanup:                                          ; preds = %change_speed.exit, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then.cleanup_crit_edge ], [ 0, %change_speed.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cfg_lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftdi_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef readonly %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %termios3 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %force_baud = getelementptr inbounds %struct.ftdi_private, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %force_baud to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %force_baud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag, align 4
  %and = and i32 %9, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %land.lhs.true.if.end12_crit_edge, label %do.body

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_set_termios.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_set_termios, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !304

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_set_termios.__UNIQUE_ID_ddebug265, ptr noundef %dev2, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %10 = ptrtoint ptr %force_baud to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %force_baud, align 4
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %11, i32 noundef %11) #12
  br label %if.end12

if.end12:                                         ; preds = %do.end, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %force_rtscts = getelementptr inbounds %struct.ftdi_private, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %force_rtscts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %force_rtscts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end12.if.end32_crit_edge, label %do.body15

if.end12.if.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.body15:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_set_termios.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_set_termios, %if.then27)) #12
          to label %do.end30 [label %if.then27], !srcloc !304

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_set_termios.__UNIQUE_ID_ddebug266, ptr noundef %dev2, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70) #12
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body15
  %14 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_cflag, align 4
  %or = or i32 %15, -2147483648
  store i32 %or, ptr %c_cflag, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end12.if.end32_crit_edge
  %16 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_cflag, align 4
  %and35 = and i32 %17, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 16
  br i1 %cmp36, label %do.end40, label %if.end52

do.end40:                                         ; preds = %if.end32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.73) #16
  %18 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_cflag, align 4
  %and42 = and i32 %19, -49
  store i32 %and42, ptr %c_cflag, align 4
  %tobool43.not = icmp eq ptr %old_termios, null
  br i1 %tobool43.not, label %if.end52.thread, label %if.end52.thread395

if.end52.thread395:                               ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  %c_cflag45 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %20 = ptrtoint ptr %c_cflag45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %c_cflag45, align 4
  %and46 = and i32 %21, 48
  %or48 = or i32 %and46, %and42
  %22 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or48, ptr %c_cflag, align 4
  br label %if.end56

if.end52.thread:                                  ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  %or50 = or i32 %19, 48
  %23 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or50, ptr %c_cflag, align 4
  br label %no_skip

if.end52:                                         ; preds = %if.end32
  %24 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_cflag, align 4
  %tobool54.not = icmp eq ptr %old_termios, null
  br i1 %tobool54.not, label %if.end52.no_skip_crit_edge, label %if.end52.if.end56_crit_edge

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.end52.no_skip_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_skip

if.end56:                                         ; preds = %if.end52.if.end56_crit_edge, %if.end52.thread395
  %26 = phi i32 [ %or48, %if.end52.thread395 ], [ %25, %if.end52.if.end56_crit_edge ]
  %c_cflag57 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %27 = ptrtoint ptr %c_cflag57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %c_cflag57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp59 = icmp eq i32 %28, %26
  br i1 %cmp59, label %land.lhs.true60, label %if.end56.if.end67_crit_edge

if.end56.if.end67_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

land.lhs.true60:                                  ; preds = %if.end56
  %c_ispeed = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 6
  %29 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c_ispeed, align 4
  %c_ispeed61 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 6
  %31 = ptrtoint ptr %c_ispeed61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %c_ispeed61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp62 = icmp eq i32 %30, %32
  br i1 %cmp62, label %land.lhs.true63, label %land.lhs.true60.if.end67_crit_edge

land.lhs.true60.if.end67_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 7
  %33 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %c_ospeed, align 4
  %c_ospeed64 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 7
  %35 = ptrtoint ptr %c_ospeed64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %c_ospeed64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp65 = icmp eq i32 %34, %36
  br i1 %cmp65, label %land.lhs.true63.no_c_cflag_changes_crit_edge, label %land.lhs.true63.if.end67_crit_edge

land.lhs.true63.if.end67_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

land.lhs.true63.no_c_cflag_changes_crit_edge:     ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_c_cflag_changes

if.end67:                                         ; preds = %land.lhs.true63.if.end67_crit_edge, %land.lhs.true60.if.end67_crit_edge, %if.end56.if.end67_crit_edge
  %37 = xor i32 %28, %26
  %38 = and i32 %37, 1073742704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp72 = icmp eq i32 %38, 0
  br i1 %cmp72, label %if.end67.no_data_parity_stop_changes_crit_edge, label %if.end67.no_skip_crit_edge

if.end67.no_skip_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_skip

if.end67.no_data_parity_stop_changes_crit_edge:   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_data_parity_stop_changes

no_skip:                                          ; preds = %if.end67.no_skip_crit_edge, %if.end52.no_skip_crit_edge, %if.end52.thread
  %tobool54.not394 = phi i1 [ true, %if.end52.thread ], [ false, %if.end67.no_skip_crit_edge ], [ true, %if.end52.no_skip_crit_edge ]
  %39 = phi i32 [ %or50, %if.end52.thread ], [ %26, %if.end67.no_skip_crit_edge ], [ %25, %if.end52.no_skip_crit_edge ]
  %.tr = trunc i32 %39 to i16
  %40 = shl i16 %.tr, 6
  %conv78 = and i16 %40, 4096
  %and79 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %no_skip.if.end103_crit_edge, label %if.then81

no_skip.if.end103_crit_edge:                      ; preds = %no_skip
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then81:                                        ; preds = %no_skip
  %and82 = and i32 %39, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %and92 = and i32 %39, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool83.not, label %if.else91, label %if.then84

if.then84:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  %cond87 = select i1 %tobool93.not, i16 1024, i16 768
  %or89 = or i16 %cond87, %conv78
  br label %if.end103

if.else91:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  %cond94 = select i1 %tobool93.not, i16 512, i16 256
  %or96 = or i16 %cond94, %conv78
  br label %if.end103

if.end103:                                        ; preds = %if.else91, %if.then84, %no_skip.if.end103_crit_edge
  %value.0 = phi i16 [ %or89, %if.then84 ], [ %or96, %if.else91 ], [ %conv78, %no_skip.if.end103_crit_edge ]
  %and104 = and i32 %39, 48
  %41 = zext i32 %and104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %and104, label %sw.bb141 [
    i32 0, label %do.body105
    i32 32, label %sw.bb121
  ]

do.body105:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_set_termios.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_set_termios, %if.then117)) #12
          to label %sw.epilog [label %if.then117], !srcloc !304

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_set_termios.__UNIQUE_ID_ddebug267, ptr noundef %dev2, ptr noundef nonnull @.str.74) #12
  br label %sw.epilog

sw.bb121:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %42 = or i16 %value.0, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_set_termios.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_set_termios, %if.then137)) #12
          to label %sw.epilog [label %if.then137], !srcloc !304

if.then137:                                       ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_set_termios.__UNIQUE_ID_ddebug268, ptr noundef %dev2, ptr noundef nonnull @.str.75) #12
  br label %sw.epilog

sw.bb141:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %43 = or i16 %value.0, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_set_termios.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_set_termios, %if.then157)) #12
          to label %sw.epilog [label %if.then157], !srcloc !304

if.then157:                                       ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_set_termios.__UNIQUE_ID_ddebug269, ptr noundef %dev2, ptr noundef nonnull @.str.76) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then157, %sw.bb141, %if.then137, %sw.bb121, %if.then117, %do.body105
  %value.1 = phi i16 [ %43, %if.then157 ], [ %42, %if.then137 ], [ %value.0, %if.then117 ], [ %value.0, %do.body105 ], [ %42, %sw.bb121 ], [ %43, %sw.bb141 ]
  %last_set_data_value = getelementptr inbounds %struct.ftdi_private, ptr %5, i32 0, i32 3
  %44 = ptrtoint ptr %last_set_data_value to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %value.1, ptr %last_set_data_value, align 4
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %3, align 8
  %shl.i = shl i32 %46, 8
  %or162 = or i32 %shl.i, -2147483648
  %interface = getelementptr inbounds %struct.ftdi_private, ptr %5, i32 0, i32 8
  %47 = ptrtoint ptr %interface to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %interface, align 2
  %call163 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or162, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %value.1, i16 noundef zeroext %48, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %do.end169, label %sw.epilog.no_data_parity_stop_changes_crit_edge

sw.epilog.no_data_parity_stop_changes_crit_edge:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_data_parity_stop_changes

do.end169:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.70) #16
  br label %no_data_parity_stop_changes

no_data_parity_stop_changes:                      ; preds = %do.end169, %sw.epilog.no_data_parity_stop_changes_crit_edge, %if.end67.no_data_parity_stop_changes_crit_edge
  %tobool54.not393 = phi i1 [ %tobool54.not394, %sw.epilog.no_data_parity_stop_changes_crit_edge ], [ %tobool54.not394, %do.end169 ], [ false, %if.end67.no_data_parity_stop_changes_crit_edge ]
  %49 = phi i32 [ %39, %sw.epilog.no_data_parity_stop_changes_crit_edge ], [ %39, %do.end169 ], [ %26, %if.end67.no_data_parity_stop_changes_crit_edge ]
  %and171 = and i32 %49, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %cmp172 = icmp eq i32 %and171, 0
  br i1 %cmp172, label %if.then174, label %if.else187

if.then174:                                       ; preds = %no_data_parity_stop_changes
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %3, align 8
  %shl.i387 = shl i32 %51, 8
  %or176 = or i32 %shl.i387, -2147483648
  %interface177 = getelementptr inbounds %struct.ftdi_private, ptr %5, i32 0, i32 8
  %52 = ptrtoint ptr %interface177 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %interface177, align 2
  %call178 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or176, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %53, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %do.end184, label %if.then174.if.end185_crit_edge

if.then174.if.end185_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end185

do.end184:                                        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.70) #16
  br label %if.end185

if.end185:                                        ; preds = %do.end184, %if.then174.if.end185_crit_edge
  %call186 = tail call fastcc i32 @update_mctrl(ptr noundef %port, i32 noundef 0, i32 noundef 6)
  br label %no_c_cflag_changes

if.else187:                                       ; preds = %no_data_parity_stop_changes
  %cfg_lock = getelementptr inbounds %struct.ftdi_private, ptr %5, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %cfg_lock, i32 noundef 0) #12
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call fastcc i32 @get_ftdi_divisor(ptr noundef %tty, ptr noundef %port) #12
  %shr.i = lshr i32 %call1.i, 16
  %conv2.i = trunc i32 %shr.i to i16
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %57, label %if.else187.change_speed.exit_crit_edge [
    i32 4, label %if.else187.if.then.i_crit_edge
    i32 6, label %if.else187.if.then.i_crit_edge404
    i32 7, label %if.else187.if.then.i_crit_edge405
    i32 8, label %if.else187.if.then.i_crit_edge406
    i32 9, label %if.else187.if.then.i_crit_edge407
  ]

if.else187.if.then.i_crit_edge407:                ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.else187.if.then.i_crit_edge406:                ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.else187.if.then.i_crit_edge405:                ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.else187.if.then.i_crit_edge404:                ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.else187.if.then.i_crit_edge:                   ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.else187.change_speed.exit_crit_edge:           ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #14
  br label %change_speed.exit

if.then.i:                                        ; preds = %if.else187.if.then.i_crit_edge, %if.else187.if.then.i_crit_edge404, %if.else187.if.then.i_crit_edge405, %if.else187.if.then.i_crit_edge406, %if.else187.if.then.i_crit_edge407
  %shl.i388 = shl nuw nsw i32 %shr.i, 8
  %interface.i = getelementptr inbounds %struct.ftdi_private, ptr %55, i32 0, i32 8
  %59 = ptrtoint ptr %interface.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %interface.i, align 2
  %61 = trunc i32 %shl.i388 to i16
  %conv21.i = or i16 %60, %61
  br label %change_speed.exit

change_speed.exit:                                ; preds = %if.then.i, %if.else187.change_speed.exit_crit_edge
  %index.0.i = phi i16 [ %conv21.i, %if.then.i ], [ %conv2.i, %if.else187.change_speed.exit_crit_edge ]
  %conv.i = trunc i32 %call1.i to i16
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %shl.i.i = shl i32 %67, 8
  %or25.i = or i32 %shl.i.i, -2147483648
  %call26.i = tail call i32 @usb_control_msg(ptr noundef %65, i32 noundef %or25.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext %index.0.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool189.not = icmp eq i32 %call26.i, 0
  br i1 %tobool189.not, label %change_speed.exit.if.end194_crit_edge, label %do.end193

change_speed.exit.if.end194_crit_edge:            ; preds = %change_speed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194

do.end193:                                        ; preds = %change_speed.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.70) #16
  br label %if.end194

if.end194:                                        ; preds = %do.end193, %change_speed.exit.if.end194_crit_edge
  tail call void @mutex_unlock(ptr noundef %cfg_lock) #12
  br i1 %tobool54.not393, label %if.end194.no_c_cflag_changes_crit_edge, label %land.lhs.true197

if.end194.no_c_cflag_changes_crit_edge:           ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_c_cflag_changes

land.lhs.true197:                                 ; preds = %if.end194
  %c_cflag198 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %68 = ptrtoint ptr %c_cflag198 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %c_cflag198, align 4
  %and199 = and i32 %69, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %cmp200 = icmp eq i32 %and199, 0
  br i1 %cmp200, label %if.then202, label %land.lhs.true197.no_c_cflag_changes_crit_edge

land.lhs.true197.no_c_cflag_changes_crit_edge:    ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_c_cflag_changes

if.then202:                                       ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #14
  %call203 = tail call fastcc i32 @update_mctrl(ptr noundef %port, i32 noundef 6, i32 noundef 0)
  br label %no_c_cflag_changes

no_c_cflag_changes:                               ; preds = %if.then202, %land.lhs.true197.no_c_cflag_changes_crit_edge, %if.end194.no_c_cflag_changes_crit_edge, %if.end185, %land.lhs.true63.no_c_cflag_changes_crit_edge
  %70 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %tobool209.not = icmp sgt i32 %71, -1
  br i1 %tobool209.not, label %if.else228, label %do.body211

do.body211:                                       ; preds = %no_c_cflag_changes
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_set_termios.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_set_termios, %if.then223)) #12
          to label %if.end277 [label %if.then223], !srcloc !304

if.then223:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_set_termios.__UNIQUE_ID_ddebug270, ptr noundef %dev2, ptr noundef nonnull @.str.86) #12
  br label %if.end277

if.else228:                                       ; preds = %no_c_cflag_changes
  %72 = ptrtoint ptr %termios3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %termios3, align 4
  %and230 = and i32 %73, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %do.body259, label %do.body233

do.body233:                                       ; preds = %if.else228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_set_termios.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_set_termios, %if.then245)) #12
          to label %do.end249 [label %if.then245], !srcloc !304

if.then245:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_set_termios.__UNIQUE_ID_ddebug271, ptr noundef %dev2, ptr noundef nonnull @.str.87) #12
  br label %do.end249

do.end249:                                        ; preds = %if.then245, %do.body233
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx, align 1
  %conv251 = zext i8 %75 to i16
  %shl = shl nuw i16 %conv251, 8
  %arrayidx254 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %76 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx254, align 1
  %conv255 = zext i8 %77 to i16
  %or256 = or i16 %shl, %conv255
  br label %if.end277

do.body259:                                       ; preds = %if.else228
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_set_termios.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_set_termios, %if.then271)) #12
          to label %if.end277 [label %if.then271], !srcloc !304

if.then271:                                       ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_set_termios.__UNIQUE_ID_ddebug272, ptr noundef %dev2, ptr noundef nonnull @.str.88) #12
  br label %if.end277

if.end277:                                        ; preds = %if.then271, %do.body259, %do.end249, %if.then223, %do.body211
  %index.0 = phi i16 [ 1024, %do.end249 ], [ 256, %if.then223 ], [ 0, %if.then271 ], [ 256, %do.body211 ], [ 0, %do.body259 ]
  %value.2 = phi i16 [ %or256, %do.end249 ], [ 0, %if.then223 ], [ 0, %if.then271 ], [ 0, %do.body211 ], [ 0, %do.body259 ]
  %interface278 = getelementptr inbounds %struct.ftdi_private, ptr %5, i32 0, i32 8
  %78 = ptrtoint ptr %interface278 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %interface278, align 2
  %or281 = or i16 %79, %index.0
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %3, align 8
  %shl.i389 = shl i32 %81, 8
  %or284 = or i32 %shl.i389, -2147483648
  %call285 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or284, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %value.2, i16 noundef zeroext %or281, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %cmp286 = icmp slt i32 %call285, 0
  br i1 %cmp286, label %do.end291, label %if.end277.if.end293_crit_edge

if.end277.if.end293_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end293

do.end291:                                        ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.90, i32 noundef %call285) #16
  br label %if.end293

if.end293:                                        ; preds = %do.end291, %if.end277.if.end293_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftdi_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %last_set_data_value2 = getelementptr inbounds %struct.ftdi_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %last_set_data_value2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %last_set_data_value2, align 4
  %6 = or i16 %5, 16384
  %value.0 = select i1 %tobool.not, i16 %5, i16 %6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i = shl i32 %12, 8
  %or6 = or i32 %shl.i, -2147483648
  %interface = getelementptr inbounds %struct.ftdi_private, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %interface to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %interface, align 2
  %call7 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or6, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %value.0, i16 noundef zeroext %14, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev10 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, i32 noundef %break_state) #16
  br label %do.body12

do.body12:                                        ; preds = %do.end, %entry.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_break_ctl.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_break_ctl, %if.then17)) #12
          to label %do.end22 [label %if.then17], !srcloc !304

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %dev18 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv19 = zext i16 %value.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_break_ctl.__UNIQUE_ID_ddebug264, ptr noundef %dev18, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.100, i32 noundef %break_state, i32 noundef %conv19) #12
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %do.body12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ftdi_tx_empty(ptr noundef %port) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #12
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !305
  %1 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !305
  %call = call fastcc i32 @ftdi_get_modem_status(ptr noundef %port, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end2 ], [ false, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #12
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_throttle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_unthrottle(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #12
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !305
  %5 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !305
  %call1 = call fastcc i32 @ftdi_get_modem_status(ptr noundef %1, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  %conv = zext i8 %8 to i32
  %and = shl nuw nsw i32 %conv, 3
  %9 = and i32 %and, 256
  %and4 = shl nuw nsw i32 %conv, 1
  %10 = and i32 %and4, 32
  %11 = and i32 %and4, 128
  %and15 = lshr i32 %conv, 1
  %12 = and i32 %and15, 64
  %last_dtr_rts = getelementptr inbounds %struct.ftdi_private, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %last_dtr_rts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_dtr_rts, align 4
  %or = or i32 %10, %14
  %or12 = or i32 %or, %9
  %or18 = or i32 %or12, %11
  %or19 = or i32 %or18, %12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or19, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call fastcc i32 @update_mctrl(ptr noundef %1, i32 noundef %set, i32 noundef %clear)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_get_icount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftdi_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.then, label %if.then9.critedge

if.then:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  %interface = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %interface, align 2
  %call4 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev6 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.105) #16
  br label %if.else

if.then9.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call fastcc i32 @update_mctrl(ptr noundef %port, i32 noundef 6, i32 noundef 0)
  br label %if.end12

if.else:                                          ; preds = %do.end, %if.then.if.else_crit_edge
  %call11 = tail call fastcc i32 @update_mctrl(ptr noundef %port, i32 noundef 0, i32 noundef 6)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9.critedge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftdi_process_read_urb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp22.not = icmp eq i32 %7, 0
  br i1 %cmp22.not, label %entry.if.end_crit_edge, label %for.body.lr.ph

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph:                                   ; preds = %entry
  %max_packet_size = getelementptr inbounds %struct.ftdi_private, ptr %3, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %7, %for.body.lr.ph ], [ %15, %for.body.for.body_crit_edge ]
  %count.024 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %add7, %for.body.for.body_crit_edge ]
  %sub = sub i32 %8, %i.023
  %9 = ptrtoint ptr %max_packet_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %max_packet_size, align 4
  %conv = zext i16 %10 to i32
  %11 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %conv)
  %arrayidx = getelementptr i8, ptr %5, i32 %i.023
  %call4 = tail call fastcc i32 @ftdi_process_packet(ptr noundef %1, ptr noundef %3, ptr noundef %arrayidx, i32 noundef %11)
  %add = add i32 %call4, %count.024
  %12 = ptrtoint ptr %max_packet_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_packet_size, align 4
  %conv6 = zext i16 %13 to i32
  %add7 = add i32 %i.023, %conv6
  %14 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_length, align 4
  %cmp = icmp ugt i32 %15, %add7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp eq i32 %add, 0
  br i1 %phi.cmp, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %port8 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port8) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_prepare_write_buffer(ptr noundef %port, ptr noundef %dest, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp784.not = icmp eq i32 %sub, 0
  br i1 %cmp784.not, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %max_packet_size = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 12
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %tx = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %count.086 = phi i32 [ 0, %for.body.lr.ph ], [ %add24, %if.end.for.body_crit_edge ]
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %add27, %if.end.for.body_crit_edge ]
  %sub9 = sub i32 %size, %i.085
  %4 = ptrtoint ptr %max_packet_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_packet_size, align 4
  %conv10 = zext i16 %5 to i32
  %6 = tail call i32 @llvm.smin.i32(i32 %sub9, i32 %conv10)
  %sub14 = add i32 %6, -1
  %add = add nuw i32 %i.085, 1
  %arrayidx = getelementptr i8, ptr %dest, i32 %add
  %call16 = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %arrayidx, i32 noundef %sub14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx, align 8
  %add19 = add i32 %8, %call16
  store i32 %add19, ptr %tx, align 8
  %call17.tr = trunc i32 %call16 to i8
  %9 = shl i8 %call17.tr, 2
  %conv21 = or i8 %9, 1
  %arrayidx22 = getelementptr i8, ptr %dest, i32 %i.085
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv21, ptr %arrayidx22, align 1
  %add23 = add i32 %count.086, 1
  %add24 = add i32 %add23, %call16
  %11 = ptrtoint ptr %max_packet_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_packet_size, align 4
  %conv26 = zext i16 %12 to i32
  %add27 = add i32 %i.085, %conv26
  %cmp7 = icmp ult i32 %add27, %sub
  br i1 %cmp7, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.then.for.end_crit_edge ], [ %count.086, %for.body.for.end_crit_edge ], [ %add24, %if.end.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %if.end58

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %write_fifo44 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %call50 = tail call i32 @__kfifo_out(ptr noundef %write_fifo44, ptr noundef %dest, i32 noundef %size) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  %tx56 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 4
  %13 = ptrtoint ptr %tx56 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx56, align 8
  %add57 = add i32 %14, %call50
  store i32 %add57, ptr %tx56, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else, %for.end
  %count.1 = phi i32 [ %count.0.lcssa, %for.end ], [ %call50, %if.else ]
  ret i32 %count.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ftdi_determine_type(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %baud_base = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %baud_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24000000, ptr %baud_base, align 4
  %bcdDevice = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 16, i32 9
  %7 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bcdDevice, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 20
  %10 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %actconfig, align 4
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bNumInterfaces, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_determine_type.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_determine_type, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !304

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %9 to i32
  %conv2 = zext i8 %13 to i32
  %dev6 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_determine_type.__UNIQUE_ID_ddebug249, ptr noundef %dev6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv2) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp ugt i8 %13, 1
  br i1 %cmp, label %if.then8, label %if.else68

if.then8:                                         ; preds = %do.end
  %interface = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interface, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceNumber, align 2
  %20 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.112)
  switch i16 %8, label %if.else20 [
    i16 8, label %if.then13
    i16 7, label %if.then17
  ]

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %1, align 4
  %22 = ptrtoint ptr %baud_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 60000000, ptr %baud_base, align 4
  br label %if.end23

if.then17:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %1, align 4
  %24 = ptrtoint ptr %baud_base to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 60000000, ptr %baud_base, align 4
  br label %if.end23

if.else20:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %1, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then17, %if.then13
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %26 = icmp ult i8 %19, 4
  br i1 %26, label %switch.lookup, label %if.end23.if.end46_crit_edge

if.end23.if.end46_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

switch.lookup:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.cast = zext i8 %19 to i16
  %switch.offset = add nuw nsw i16 %switch.idx.cast, 1
  %interface32 = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %interface32 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %switch.offset, ptr %interface32, align 2
  br label %if.end46

if.end46:                                         ; preds = %switch.lookup, %if.end23.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %9)
  %cmp47 = icmp ult i16 %9, 1280
  br i1 %cmp47, label %do.body50, label %if.end46.do.end131_crit_edge

if.end46.do.end131_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end131

do.body50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_determine_type.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_determine_type, %if.then62)) #12
          to label %do.end131 [label %if.then62], !srcloc !304

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  %dev63 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_determine_type.__UNIQUE_ID_ddebug250, ptr noundef %dev63, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #12
  br label %do.end131

if.else68:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %9)
  %cmp69 = icmp ult i16 %9, 512
  br i1 %cmp69, label %if.then71, label %if.else74

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %1, align 4
  %29 = ptrtoint ptr %baud_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 750000, ptr %baud_base, align 4
  br label %do.end131

if.else74:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %9)
  %cmp75 = icmp ult i16 %9, 1024
  br i1 %cmp75, label %if.then77, label %if.else106

if.then77:                                        ; preds = %if.else74
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %1, align 4
  %iSerialNumber = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 16, i32 12
  %31 = ptrtoint ptr %iSerialNumber to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %iSerialNumber, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp81 = icmp eq i8 %32, 0
  br i1 %cmp81, label %land.lhs.true, label %if.then77.do.end131_crit_edge

if.then77.do.end131_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end131

land.lhs.true:                                    ; preds = %if.then77
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i, align 4
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #12
  %39 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %buf.i, align 1, !annotation !305
  %interface.i = getelementptr inbounds %struct.ftdi_private, ptr %34, i32 0, i32 8
  %40 = ptrtoint ptr %interface.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %interface.i, align 2
  %call1.i = call i32 @usb_control_msg_recv(ptr noundef %38, i8 noundef zeroext 0, i8 noundef zeroext 10, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %41, ptr noundef nonnull %buf.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp84 = icmp sgt i32 %call1.i, -1
  br i1 %cmp84, label %do.body87, label %land.lhs.true.do.end131_crit_edge

land.lhs.true.do.end131_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end131

do.body87:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_determine_type.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_determine_type, %if.then99)) #12
          to label %do.end103 [label %if.then99], !srcloc !304

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #14
  %dev100 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_determine_type.__UNIQUE_ID_ddebug251, ptr noundef %dev100, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19) #12
  br label %do.end103

do.end103:                                        ; preds = %if.then99, %do.body87
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %1, align 4
  br label %do.end131

if.else106:                                       ; preds = %if.else74
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %9)
  %cmp107 = icmp ult i16 %9, 1536
  br i1 %cmp107, label %if.then109, label %if.else111

if.then109:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %1, align 4
  br label %do.end131

if.else111:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_const_cmp2(i16 2304, i16 %9)
  %cmp112 = icmp ult i16 %9, 2304
  br i1 %cmp112, label %if.then114, label %if.else116

if.then114:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 5, ptr %1, align 4
  br label %do.end131

if.else116:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %9)
  %cmp117 = icmp ult i16 %9, 4096
  br i1 %cmp117, label %if.then119, label %if.else121

if.then119:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %1, align 4
  br label %do.end131

if.else121:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 9, ptr %1, align 4
  br label %do.end131

do.end131:                                        ; preds = %if.else121, %if.then119, %if.then114, %if.then109, %do.end103, %land.lhs.true.do.end131_crit_edge, %if.then77.do.end131_crit_edge, %if.then71, %if.then62, %do.body50, %if.end46.do.end131_crit_edge
  %dev132 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [10 x ptr], ptr @ftdi_chip_name, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev132, ptr noundef nonnull @.str.23, ptr noundef %50) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_latency_timer(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %.off = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %latency = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %latency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %latency, align 4
  %flags = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 %9, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_latency_timer.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_latency_timer, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !304

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev10 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_latency_timer.__UNIQUE_ID_ddebug248, ptr noundef %dev10, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %spec.select) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 8
  %shl.i = shl i32 %13, 8
  %or = or i32 %shl.i, -2147483648
  %conv = trunc i32 %spec.select to i16
  %interface = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %interface to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %interface, align 2
  %call13 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 9, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end19, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev20 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.40, i32 noundef %call13) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call13, %do.end19 ], [ %call13, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_char_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %valbuf, i32 noundef %count) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -856
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #12
  %6 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %v, align 4, !annotation !305
  %call2 = call i32 @kstrtouint(ptr noundef %valbuf, i32 noundef 0, ptr noundef nonnull %v) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %8)
  %cmp = icmp ugt i32 %8, 511
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @event_char_store.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@event_char_store, %if.then8)) #12
          to label %do.end [label %if.then8], !srcloc !304

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @event_char_store.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef %10) #12
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 8
  %shl.i = shl i32 %12, 8
  %or = or i32 %shl.i, -2147483648
  %13 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v, align 4
  %conv = trunc i32 %14 to i16
  %interface = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %interface to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %interface, align 2
  %call12 = call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.body16, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @event_char_store.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@event_char_store, %if.then28)) #12
          to label %cleanup [label %if.then28], !srcloc !304

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @event_char_store.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call12) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body16, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.then28 ], [ %count, %do.end.cleanup_crit_edge ], [ -5, %do.body16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latency_timer_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.48, i32 3)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %latency = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %latency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %latency, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.49, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 2, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latency_timer_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %valbuf, i32 noundef %count) #2 align 64 {
entry:
  %v = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #12
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %v, align 1, !annotation !305
  %call1 = call i32 @kstrtou8(ptr noundef %valbuf, i32 noundef 10, ptr noundef nonnull %v) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %dev, i32 -856
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %v, align 1
  %conv = zext i8 %4 to i32
  %latency = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %latency, align 4
  %call2 = call fastcc i32 @write_latency_timer(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %.count = select i1 %cmp, i32 -5, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftdi_gpio_init_ft232r(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 2) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %read.0.i = phi i32 [ %add23.i, %while.body.i.while.cond.i_crit_edge ], [ 0, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %read.0.i)
  %cmp9.i = icmp slt i32 %read.0.i, 2
  br i1 %cmp9.i, label %while.body.i, label %if.end4

while.body.i:                                     ; preds = %while.cond.i
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or12.i = or i32 %shl.i.i, -2147483520
  %add.i = add nsw i32 %read.0.i, 20
  %div.i = sdiv i32 %add.i, 2
  %conv14.i = trunc i32 %div.i to i16
  %add.ptr.i = getelementptr i8, ptr %call7.i, i32 %read.0.i
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or12.i, i8 noundef zeroext -112, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv14.i, ptr noundef %add.ptr.i, i16 noundef zeroext 2, i32 noundef 5000) #12
  %cmp16.i = icmp slt i32 %call15.i, 2
  %add23.i = add i32 %call15.i, %read.0.i
  br i1 %cmp16.i, label %cleanup24.loopexit.split.loop.exit.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

cleanup24.loopexit.split.loop.exit.i:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15.i)
  %cmp19.le.i = icmp sgt i32 %call15.i, -1
  %spec.select = select i1 %cmp19.le.i, i32 -5, i32 %call15.i
  br label %out_free

if.end4:                                          ; preds = %while.cond.i
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %call7.i, align 8
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_gpio_init_ft232r.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_gpio_init_ft232r, %if.then10)) #12
          to label %for.body.preheader [label %if.then10], !srcloc !304

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_gpio_init_ft232r.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv) #12
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then10, %if.end4
  %ngpio = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 14, i32 20
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4, ptr %ngpio, align 4
  %gpio_altfunc = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %gpio_altfunc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %gpio_altfunc, align 2
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.preheader
  %i.052 = phi i32 [ %inc, %if.end25.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %cbus_config.051 = phi i16 [ %19, %if.end25.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %14 = and i16 %cbus_config.051, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %14)
  %cmp18 = icmp eq i16 %14, 10
  br i1 %cmp18, label %if.then20, label %for.body.if.end25_crit_edge

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw i32 1, %i.052
  %15 = ptrtoint ptr %gpio_altfunc to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %gpio_altfunc, align 2
  %17 = trunc i32 %shl to i8
  %18 = xor i8 %17, -1
  %conv24 = and i8 %16, %18
  store i8 %conv24, ptr %gpio_altfunc, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %for.body.if.end25_crit_edge
  %19 = lshr i16 %cbus_config.051, 4
  %inc = add nuw nsw i32 %i.052, 1
  %20 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ngpio, align 4
  %conv14 = zext i16 %21 to i32
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %if.end25.for.body_crit_edge, label %if.end25.out_free_crit_edge

if.end25.out_free_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

out_free:                                         ; preds = %if.end25.out_free_crit_edge, %cleanup24.loopexit.split.loop.exit.i
  %retval.2.i47 = phi i32 [ %spec.select, %cleanup24.loopexit.split.loop.exit.i ], [ 0, %if.end25.out_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.2.i47, %out_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_gpio_request(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_lock = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #12
  %gpio_used = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %gpio_used to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio_used, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %gpio_output = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %gpio_output to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %gpio_output, align 1
  %gpio_value = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %gpio_value to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %gpio_value, align 4
  %call.i = tail call fastcc i32 @ftdi_set_bitmode(ptr noundef %call, i8 noundef zeroext 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %gpio_used to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %gpio_used, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_gpio_direction_get(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_output = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %gpio_output to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio_output, align 1
  %conv = zext i8 %3 to i32
  %4 = xor i32 %conv, -1
  %5 = lshr i32 %4, %gpio
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_gpio_direction_input(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_lock = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #12
  %shl = shl nuw i32 1, %gpio
  %gpio_output = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %gpio_output to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio_output, align 1
  %4 = trunc i32 %shl to i8
  %5 = xor i8 %4, -1
  %conv2 = and i8 %3, %5
  store i8 %conv2, ptr %gpio_output, align 1
  %call.i = tail call fastcc i32 @ftdi_set_bitmode(ptr noundef %call, i8 noundef zeroext 32) #12
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_gpio_direction_output(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_lock = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #12
  %shl = shl nuw i32 1, %gpio
  %gpio_output = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %gpio_output to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio_output, align 1
  %4 = trunc i32 %shl to i8
  %conv2 = or i8 %3, %4
  store i8 %conv2, ptr %gpio_output, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %gpio_value8 = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %gpio_value8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gpio_value8, align 4
  %7 = xor i8 %4, -1
  %conv10 = and i8 %6, %7
  %conv6 = or i8 %6, %4
  %conv10.sink = select i1 %tobool.not, i8 %conv10, i8 %conv6
  store i8 %conv10.sink, ptr %gpio_value8, align 4
  %call.i = tail call fastcc i32 @ftdi_set_bitmode(ptr noundef %call, i8 noundef zeroext 32) #12
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_gpio_init_valid_mask(ptr noundef %gc, ptr noundef %valid_mask, i32 noundef %ngpios) #2 align 64 {
entry:
  %map = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %map) #12
  %gpio_altfunc = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %gpio_altfunc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio_altfunc, align 2
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %map, align 4
  call void @__bitmap_complement(ptr noundef %valid_mask, ptr noundef nonnull %map, i32 noundef %ngpios) #12
  %call.i = call i32 @_find_first_bit_be(ptr noundef %valid_mask, i32 noundef %ngpios) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %ngpios)
  %cmp4.i = icmp eq i32 %call.i, %ngpios
  br i1 %cmp4.i, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_gpio_init_valid_mask.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_gpio_init_valid_mask, %if.then6)) #12
          to label %if.end24 [label %if.then6], !srcloc !304

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_gpio_init_valid_mask.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.57) #12
  br label %if.end24

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_gpio_init_valid_mask.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_gpio_init_valid_mask, %if.then19)) #12
          to label %if.end24 [label %if.then19], !srcloc !304

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %dev20 = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_gpio_init_valid_mask.__UNIQUE_ID_ddebug256, ptr noundef %dev20, ptr noundef nonnull @.str.58, i32 noundef %ngpios, ptr noundef %valid_mask) #12
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %do.body7, %if.then6, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_gpio_get(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #12
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf.i, align 1, !annotation !305
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %interface.i, align 4
  %call2.i = tail call i32 @usb_autopm_get_interface(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ftdi_read_cbus_pins.exit_crit_edge

entry.ftdi_read_cbus_pins.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ftdi_read_cbus_pins.exit

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %interface3.i = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %interface3.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %interface3.i, align 2
  %call4.i = call i32 @usb_control_msg_recv(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext 12, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %10, ptr noundef nonnull %buf.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf.i, align 1
  %conv.i = zext i8 %12 to i32
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %result.0.i = phi i32 [ %conv.i, %if.then5.i ], [ %call4.i, %if.end.i.if.end6.i_crit_edge ]
  %13 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interface.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %14) #12
  br label %ftdi_read_cbus_pins.exit

ftdi_read_cbus_pins.exit:                         ; preds = %if.end6.i, %entry.ftdi_read_cbus_pins.exit_crit_edge
  %retval.0.i = phi i32 [ %result.0.i, %if.end6.i ], [ %call2.i, %entry.ftdi_read_cbus_pins.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %15 = lshr i32 %retval.0.i, %gpio
  %16 = and i32 %15, 1
  %retval.0 = select i1 %cmp, i32 %retval.0.i, i32 %16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftdi_gpio_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_lock = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl3 = shl nuw i32 1, %gpio
  %gpio_value4 = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %gpio_value4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio_value4, align 4
  %4 = trunc i32 %shl3 to i8
  %5 = xor i8 %4, -1
  %conv6 = and i8 %3, %5
  %conv2 = or i8 %3, %4
  %conv6.sink = select i1 %tobool.not, i8 %conv6, i8 %conv2
  store i8 %conv6.sink, ptr %gpio_value4, align 4
  %call.i = tail call fastcc i32 @ftdi_set_bitmode(ptr noundef %call, i8 noundef zeroext 32) #12
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftdi_gpio_get_multiple(ptr noundef %gc, ptr nocapture noundef readonly %mask, ptr nocapture noundef writeonly %bits) #2 align 64 {
entry:
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #12
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf.i, align 1, !annotation !305
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %interface.i, align 4
  %call2.i = tail call i32 @usb_autopm_get_interface(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ftdi_read_cbus_pins.exit_crit_edge

entry.ftdi_read_cbus_pins.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ftdi_read_cbus_pins.exit

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %interface3.i = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %interface3.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %interface3.i, align 2
  %call4.i = call i32 @usb_control_msg_recv(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext 12, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %10, ptr noundef nonnull %buf.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf.i, align 1
  %conv.i = zext i8 %12 to i32
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %result.0.i = phi i32 [ %conv.i, %if.then5.i ], [ %call4.i, %if.end.i.if.end6.i_crit_edge ]
  %13 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interface.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %14) #12
  br label %ftdi_read_cbus_pins.exit

ftdi_read_cbus_pins.exit:                         ; preds = %if.end6.i, %entry.ftdi_read_cbus_pins.exit_crit_edge
  %retval.0.i = phi i32 [ %result.0.i, %if.end6.i ], [ %call2.i, %entry.ftdi_read_cbus_pins.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ftdi_read_cbus_pins.exit.cleanup_crit_edge, label %if.end

ftdi_read_cbus_pins.exit.cleanup_crit_edge:       ; preds = %ftdi_read_cbus_pins.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %ftdi_read_cbus_pins.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %and = and i32 %16, %retval.0.i
  %17 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %bits, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ftdi_read_cbus_pins.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i, %ftdi_read_cbus_pins.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftdi_gpio_set_multiple(ptr noundef %gc, ptr nocapture noundef readonly %mask, ptr nocapture noundef readonly %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %call, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_lock = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #12
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %gpio_value = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %gpio_value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gpio_value, align 4
  %6 = trunc i32 %3 to i8
  %7 = xor i8 %6, -1
  %conv2 = and i8 %5, %7
  store i8 %conv2, ptr %gpio_value, align 4
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits, align 4
  %10 = load i32, ptr %mask, align 4
  %and3 = and i32 %10, %9
  %11 = trunc i32 %and3 to i8
  %conv6 = or i8 %conv2, %11
  store i8 %conv6, ptr %gpio_value, align 4
  %call.i = tail call fastcc i32 @ftdi_set_bitmode(ptr noundef %call, i8 noundef zeroext 32) #12
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftdi_set_bitmode(ptr nocapture noundef readonly %port, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %interface = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface, align 4
  %call2 = tail call i32 @usb_autopm_get_interface(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %mode to i16
  %shl = shl nuw i16 %conv, 8
  %gpio_output = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %gpio_output to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gpio_output, align 1
  %conv3 = zext i8 %7 to i16
  %shl4 = shl nuw nsw i16 %conv3, 4
  %or = or i16 %shl4, %shl
  %gpio_value = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %gpio_value to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gpio_value, align 4
  %conv5 = zext i8 %9 to i16
  %or6 = or i16 %or, %conv5
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i = shl i32 %13, 8
  %or10 = or i32 %shl.i, -2147483648
  %interface11 = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %interface11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %interface11, align 2
  %call12 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or10, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext %or6, i16 noundef zeroext %15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interface, align 4
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  %conv17 = zext i16 %or6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.54, i32 noundef %conv17, i32 noundef %call12) #16
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  %18 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interface, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %19) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end18 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_complement(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_ftdi_divisor(ptr noundef %tty, ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_ftdi_divisor, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !304

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_ftdi_divisor.__UNIQUE_ID_ddebug241, ptr noundef %dev1, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i32 noundef %call.i) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 38400, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 38400
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end28_crit_edge

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true:                                    ; preds = %do.end
  %flags = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4144
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and)
  %cmp6 = icmp eq i32 %and, 48
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.if.end28.thread_crit_edge

land.lhs.true.if.end28.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.thread

land.lhs.true7:                                   ; preds = %land.lhs.true
  %custom_divisor = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %custom_divisor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %custom_divisor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %land.lhs.true7.if.end28.thread_crit_edge, label %if.then9

land.lhs.true7.if.end28.thread_crit_edge:         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.thread

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  %baud_base = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baud_base, align 4
  %div = sdiv i32 %7, %5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_ftdi_divisor, %if.then23)) #12
          to label %if.end28 [label %if.then23], !srcloc !304

if.then23:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %custom_divisor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %custom_divisor, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_ftdi_divisor.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef %9, i32 noundef %div) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then9, %do.end.if.end28_crit_edge
  %baud.0 = phi i32 [ %div, %if.then23 ], [ %call.i, %do.end.if.end28_crit_edge ], [ %div, %if.then9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %baud.0)
  %tobool29.not = icmp eq i32 %baud.0, 0
  %spec.select = select i1 %tobool29.not, i32 9600, i32 %baud.0
  br label %if.end28.thread

if.end28.thread:                                  ; preds = %if.end28, %land.lhs.true7.if.end28.thread_crit_edge, %land.lhs.true.if.end28.thread_crit_edge
  %10 = phi i32 [ 38400, %land.lhs.true7.if.end28.thread_crit_edge ], [ 38400, %land.lhs.true.if.end28.thread_crit_edge ], [ %spec.select, %if.end28 ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %12, label %if.end28.thread.do.body168_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb61
    i32 3, label %if.end28.thread.sw.bb84_crit_edge
    i32 4, label %if.end28.thread.sw.bb84_crit_edge303
    i32 5, label %if.end28.thread.sw.bb84_crit_edge304
    i32 9, label %if.end28.thread.sw.bb84_crit_edge305
    i32 6, label %if.end28.thread.sw.bb132_crit_edge
    i32 7, label %if.end28.thread.sw.bb132_crit_edge306
    i32 8, label %if.end28.thread.sw.bb132_crit_edge307
  ]

if.end28.thread.sw.bb132_crit_edge307:            ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.end28.thread.sw.bb132_crit_edge306:            ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.end28.thread.sw.bb132_crit_edge:               ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.end28.thread.sw.bb84_crit_edge305:             ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb84

if.end28.thread.sw.bb84_crit_edge304:             ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb84

if.end28.thread.sw.bb84_crit_edge303:             ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb84

if.end28.thread.sw.bb84_crit_edge:                ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb84

if.end28.thread.do.body168_crit_edge:             ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

sw.bb:                                            ; preds = %if.end28.thread
  %14 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %10, label %do.body44 [
    i32 115200, label %sw.bb41
    i32 600, label %sw.bb.do.body168_crit_edge
    i32 1200, label %sw.bb34
    i32 2400, label %sw.bb35
    i32 4800, label %sw.bb36
    i32 9600, label %sw.bb37
    i32 19200, label %sw.bb38
    i32 38400, label %sw.bb39
    i32 57600, label %sw.bb40
  ]

sw.bb.do.body168_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

sw.bb34:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

sw.bb35:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

sw.bb36:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

sw.bb37:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

sw.bb38:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

sw.bb39:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

sw.bb40:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

sw.bb41:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

do.body44:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_ftdi_divisor, %if.then56)) #12
          to label %if.end185 [label %if.then56], !srcloc !304

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_ftdi_divisor.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.64, i32 noundef %10) #12
  br label %if.end185

sw.bb61:                                          ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000001, i32 %10)
  %cmp62 = icmp slt i32 %10, 3000001
  br i1 %cmp62, label %if.then63, label %do.body65

if.then63:                                        ; preds = %sw.bb61
  %mul.i.i = shl i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp1.i.i = icmp sgt i32 %mul.i.i, 0
  %add.pn.in.v.i.i = select i1 %cmp1.i.i, i32 2, i32 -2
  %add.pn.in.i.i = sdiv i32 %mul.i.i, %add.pn.in.v.i.i
  %add.pn.i.i = add nsw i32 %add.pn.in.i.i, 48000000
  %cond.i.i = sdiv i32 %add.pn.i.i, %mul.i.i
  %and.i.i = and i32 %cond.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i.i)
  %cmp8.i.i = icmp eq i32 %and.i.i, 7
  %inc.i.i = zext i1 %cmp8.i.i to i32
  %divisor3.0.i.i = add nsw i32 %cond.i.i, %inc.i.i
  %15 = lshr i32 %divisor3.0.i.i, 3
  %and11.i.i = and i32 %divisor3.0.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and11.i.i)
  %cmp12.i.i = icmp eq i32 %and11.i.i, 1
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  %conv16.i.i = or i32 %15, 49152
  br label %ftdi_232am_baud_to_divisor.exit

if.else.i.i:                                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and11.i.i)
  %cmp17.i.i = icmp ugt i32 %and11.i.i, 3
  br i1 %cmp17.i.i, label %if.then19.i.i, label %if.else23.i.i

if.then19.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv22.i.i = or i32 %15, 16384
  br label %ftdi_232am_baud_to_divisor.exit

if.else23.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %cmp24.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %cmp24.not.i.i, label %if.else30.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv29.i.i = or i32 %15, 32768
  br label %ftdi_232am_baud_to_divisor.exit

if.else30.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = and i32 %divisor3.0.i.i, 524280
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp32.i.i = icmp eq i32 %16, 8
  %spec.store.select.i.i = select i1 %cmp32.i.i, i32 0, i32 %15
  br label %ftdi_232am_baud_to_divisor.exit

ftdi_232am_baud_to_divisor.exit:                  ; preds = %if.else30.i.i, %if.then26.i.i, %if.then19.i.i, %if.then14.i.i
  %divisor.0.i.i = phi i32 [ %conv16.i.i, %if.then14.i.i ], [ %conv22.i.i, %if.then19.i.i ], [ %conv29.i.i, %if.then26.i.i ], [ %spec.store.select.i.i, %if.else30.i.i ]
  %conv = and i32 %divisor.0.i.i, 65535
  br label %do.body168

do.body65:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_ftdi_divisor, %if.then77)) #12
          to label %if.end185 [label %if.then77], !srcloc !304

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_ftdi_divisor.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.64) #12
  br label %if.end185

sw.bb84:                                          ; preds = %if.end28.thread.sw.bb84_crit_edge, %if.end28.thread.sw.bb84_crit_edge303, %if.end28.thread.sw.bb84_crit_edge304, %if.end28.thread.sw.bb84_crit_edge305
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000001, i32 %10)
  %cmp85 = icmp slt i32 %10, 3000001
  br i1 %cmp85, label %if.then87, label %do.body114

if.then87:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 16, i32 8
  %21 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %idProduct, align 2
  %23 = add i16 %22, -28890
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %24)
  %switch = icmp ult i16 %24, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200, i32 %10)
  %cmp108 = icmp eq i32 %10, 19200
  %25 = select i1 %switch, i1 %cmp108, i1 false
  %baud.2 = select i1 %25, i32 1200000, i32 %10
  %mul.i.i247 = shl i32 %baud.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i247)
  %cmp1.i.i248 = icmp sgt i32 %mul.i.i247, 0
  %add.pn.in.v.i.i249 = select i1 %cmp1.i.i248, i32 2, i32 -2
  %add.pn.in.i.i250 = sdiv i32 %mul.i.i247, %add.pn.in.v.i.i249
  %add.pn.i.i251 = add nsw i32 %add.pn.in.i.i250, 48000000
  %cond.i.i252 = sdiv i32 %add.pn.i.i251, %mul.i.i247
  %shr.i.i = ashr i32 %cond.i.i252, 3
  %and.i.i253 = and i32 %cond.i.i252, 7
  %arrayidx.i.i = getelementptr [8 x i8], ptr @ftdi_232bm_baud_base_to_divisor.divfrac, i32 0, i32 %and.i.i253
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i, align 1
  %conv8.i.i = zext i8 %27 to i32
  %shl.i.i = shl nuw nsw i32 %conv8.i.i, 14
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %or.i.i)
  %cmp9.i.i = icmp eq i32 %or.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %or.i.i)
  %cmp11.i.i = icmp eq i32 %or.i.i, 16385
  %spec.store.select.i.i254 = select i1 %cmp11.i.i, i32 1, i32 %or.i.i
  %divisor.0.i.i255 = select i1 %cmp9.i.i, i32 0, i32 %spec.store.select.i.i254
  br label %do.body168

do.body114:                                       ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_ftdi_divisor, %if.then126)) #12
          to label %if.end185 [label %if.then126], !srcloc !304

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_ftdi_divisor.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.64) #12
  br label %if.end185

sw.bb132:                                         ; preds = %if.end28.thread.sw.bb132_crit_edge, %if.end28.thread.sw.bb132_crit_edge306, %if.end28.thread.sw.bb132_crit_edge307
  %28 = add i32 %10, -1200
  call void @__sanitizer_cov_trace_const_cmp4(i32 11998801, i32 %28)
  %29 = icmp ult i32 %28, 11998801
  br i1 %29, label %if.then138, label %if.else140

if.then138:                                       ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #14
  %mul1.i.i = mul nuw nsw i32 %10, 10
  %add.pn.in.i.i257 = mul nuw nsw i32 %10, 5
  %add.pn.i.i258 = add nuw nsw i32 %add.pn.in.i.i257, 960000000
  %cond.i.i259301 = udiv i32 %add.pn.i.i258, %mul1.i.i
  %shr.i.i260302 = lshr i32 %cond.i.i259301, 3
  %and.i.i261 = and i32 %cond.i.i259301, 7
  %arrayidx.i.i262 = getelementptr [8 x i8], ptr @ftdi_2232h_baud_base_to_divisor.divfrac, i32 0, i32 %and.i.i261
  %30 = ptrtoint ptr %arrayidx.i.i262 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i262, align 1
  %conv9.i.i = zext i8 %31 to i32
  %shl.i.i263 = shl nuw nsw i32 %conv9.i.i, 14
  %or.i.i264 = or i32 %shl.i.i263, %shr.i.i260302
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %or.i.i264)
  %cmp10.i.i = icmp eq i32 %or.i.i264, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %or.i.i264)
  %cmp12.i.i265 = icmp eq i32 %or.i.i264, 16385
  %or.op.i.i = or i32 %or.i.i264, 131072
  %phi.bo.i.i = select i1 %cmp12.i.i265, i32 131073, i32 %or.op.i.i
  %divisor.0.i.i266 = select i1 %cmp10.i.i, i32 131072, i32 %phi.bo.i.i
  br label %do.body168

if.else140:                                       ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %10)
  %cmp141 = icmp slt i32 %10, 1200
  br i1 %cmp141, label %if.then143, label %do.body146

if.then143:                                       ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i.i267 = shl i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i267)
  %cmp1.i.i268 = icmp sgt i32 %mul.i.i267, 0
  %add.pn.in.v.i.i269 = select i1 %cmp1.i.i268, i32 2, i32 -2
  %add.pn.in.i.i270 = sdiv i32 %mul.i.i267, %add.pn.in.v.i.i269
  %add.pn.i.i271 = add nsw i32 %add.pn.in.i.i270, 48000000
  %cond.i.i272 = sdiv i32 %add.pn.i.i271, %mul.i.i267
  %shr.i.i273 = ashr i32 %cond.i.i272, 3
  %and.i.i274 = and i32 %cond.i.i272, 7
  %arrayidx.i.i275 = getelementptr [8 x i8], ptr @ftdi_232bm_baud_base_to_divisor.divfrac, i32 0, i32 %and.i.i274
  %32 = ptrtoint ptr %arrayidx.i.i275 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i275, align 1
  %conv8.i.i276 = zext i8 %33 to i32
  %shl.i.i277 = shl nuw nsw i32 %conv8.i.i276, 14
  %or.i.i278 = or i32 %shl.i.i277, %shr.i.i273
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %or.i.i278)
  %cmp9.i.i279 = icmp eq i32 %or.i.i278, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %or.i.i278)
  %cmp11.i.i280 = icmp eq i32 %or.i.i278, 16385
  %spec.store.select.i.i281 = select i1 %cmp11.i.i280, i32 1, i32 %or.i.i278
  %divisor.0.i.i282 = select i1 %cmp9.i.i279, i32 0, i32 %spec.store.select.i.i281
  br label %do.body168

do.body146:                                       ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_ftdi_divisor, %if.then158)) #12
          to label %if.end185 [label %if.then158], !srcloc !304

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_ftdi_divisor.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.64) #12
  br label %if.end185

do.body168:                                       ; preds = %if.then143, %if.then138, %if.then87, %ftdi_232am_baud_to_divisor.exit, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb.do.body168_crit_edge, %if.end28.thread.do.body168_crit_edge
  %baud.3.ph = phi i32 [ %10, %ftdi_232am_baud_to_divisor.exit ], [ %baud.2, %if.then87 ], [ %10, %if.then143 ], [ %10, %if.then138 ], [ %10, %if.end28.thread.do.body168_crit_edge ], [ %10, %sw.bb41 ], [ %10, %sw.bb40 ], [ %10, %sw.bb39 ], [ %10, %sw.bb38 ], [ %10, %sw.bb37 ], [ %10, %sw.bb36 ], [ %10, %sw.bb35 ], [ %10, %sw.bb34 ], [ %10, %sw.bb.do.body168_crit_edge ]
  %div_value.1.ph = phi i32 [ %conv, %ftdi_232am_baud_to_divisor.exit ], [ %divisor.0.i.i255, %if.then87 ], [ %divisor.0.i.i282, %if.then143 ], [ %divisor.0.i.i266, %if.then138 ], [ 0, %if.end28.thread.do.body168_crit_edge ], [ 9, %sw.bb41 ], [ 8, %sw.bb40 ], [ 7, %sw.bb39 ], [ 6, %sw.bb38 ], [ 5, %sw.bb37 ], [ 4, %sw.bb36 ], [ 3, %sw.bb35 ], [ 2, %sw.bb34 ], [ 1, %sw.bb.do.body168_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_ftdi_divisor, %if.then180)) #12
          to label %if.end185 [label %if.then180], !srcloc !304

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [10 x ptr], ptr @ftdi_chip_name, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_ftdi_divisor.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.64, i32 noundef %baud.3.ph, i32 noundef %div_value.1.ph, ptr noundef %37) #12
  br label %if.end185

if.end185:                                        ; preds = %if.then180, %do.body168, %if.then158, %do.body146, %if.then126, %do.body114, %if.then77, %do.body65, %if.then56, %do.body44
  %div_value.1299 = phi i32 [ %div_value.1.ph, %if.then180 ], [ 5, %if.then56 ], [ 5, %do.body44 ], [ 16696, %do.body65 ], [ 16696, %if.then77 ], [ 16696, %do.body114 ], [ 16696, %if.then126 ], [ 16696, %do.body146 ], [ 16696, %if.then158 ], [ %div_value.1.ph, %do.body168 ]
  %baud.3297 = phi i32 [ %baud.3.ph, %if.then180 ], [ 9600, %if.then56 ], [ 9600, %do.body44 ], [ 9600, %do.body65 ], [ 9600, %if.then77 ], [ 9600, %do.body114 ], [ 9600, %if.then126 ], [ 9600, %do.body146 ], [ 9600, %if.then158 ], [ %baud.3.ph, %do.body168 ]
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %baud.3297, i32 noundef %baud.3297) #12
  ret i32 %div_value.1299
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_mctrl(ptr noundef %port, i32 noundef %set, i32 noundef %clear) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %or = or i32 %clear, %set
  %and = and i32 %or, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_mctrl.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_mctrl, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !304

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_mctrl.__UNIQUE_ID_ddebug238, ptr noundef %dev1, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.92) #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %neg = xor i32 %set, -1
  %and7 = and i32 %neg, %clear
  %and8 = and i32 %and7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %and13 = and i32 %and7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %2 = shl i32 %and7, 7
  %3 = and i32 %2, 768
  %and18 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %or21 = or i32 %3, 257
  %value.2 = select i1 %tobool19.not, i32 %3, i32 %or21
  %and23 = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or26 = or i32 %value.2, 514
  %value.3 = select i1 %tobool24.not, i32 %value.2, i32 %or26
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or32 = or i32 %shl.i, -2147483648
  %conv = trunc i32 %value.3 to i16
  %interface = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %interface to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %interface, align 2
  %call33 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or32, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.body37, label %do.body68

do.body37:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_mctrl.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_mctrl, %if.then49)) #12
          to label %do.end66 [label %if.then49], !srcloc !304

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %tobool9.not, ptr @.str.97, ptr @.str.96
  %spec.select139 = select i1 %tobool19.not, ptr %cond, ptr @.str.95
  %cond61 = select i1 %tobool14.not, ptr @.str.97, ptr @.str.96
  %cond63 = select i1 %tobool24.not, ptr %cond61, ptr @.str.95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_mctrl.__UNIQUE_ID_ddebug239, ptr noundef %dev1, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.92, ptr noundef nonnull %spec.select139, ptr noundef nonnull %cond63) #12
  br label %do.end66

do.end66:                                         ; preds = %if.then49, %do.body37
  %12 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %call33, label %sw.default.i [
    i32 -95, label %do.end66.cleanup_crit_edge
    i32 -12, label %do.end66.cleanup_crit_edge151
    i32 -19, label %do.end66.cleanup_crit_edge152
  ]

do.end66.cleanup_crit_edge152:                    ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end66.cleanup_crit_edge151:                    ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end66.cleanup_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.default.i:                                     ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body68:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_mctrl.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_mctrl, %if.then80)) #12
          to label %do.end101 [label %if.then80], !srcloc !304

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  %cond87 = select i1 %tobool9.not, ptr @.str.97, ptr @.str.96
  %spec.select140 = select i1 %tobool19.not, ptr %cond87, ptr @.str.95
  %cond96 = select i1 %tobool14.not, ptr @.str.97, ptr @.str.96
  %cond98 = select i1 %tobool24.not, ptr %cond96, ptr @.str.95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_mctrl.__UNIQUE_ID_ddebug240, ptr noundef %dev1, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.92, ptr noundef nonnull %spec.select140, ptr noundef nonnull %cond98) #12
  br label %do.end101

do.end101:                                        ; preds = %if.then80, %do.body68
  %last_dtr_rts = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %last_dtr_rts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_dtr_rts, align 4
  %neg102 = xor i32 %and7, -1
  %and103 = and i32 %14, %neg102
  %or104 = or i32 %and103, %set
  store i32 %or104, ptr %last_dtr_rts, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end101, %sw.default.i, %do.end66.cleanup_crit_edge, %do.end66.cleanup_crit_edge151, %do.end66.cleanup_crit_edge152, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %call33, %do.end101 ], [ 0, %do.body ], [ -5, %sw.default.i ], [ %call33, %do.end66.cleanup_crit_edge ], [ %call33, %do.end66.cleanup_crit_edge151 ], [ %call33, %do.end66.cleanup_crit_edge152 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftdi_get_modem_status(ptr noundef %port, ptr nocapture noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 2) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %switch.tableidx = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 9
  br i1 %5, label %switch.lookup, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [9 x i16], ptr @switch.table.ftdi_get_modem_status, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load = load i16, ptr %switch.gep, align 2
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i = shl i32 %12, 8
  %or6 = or i32 %shl.i, -2147483520
  %interface = getelementptr inbounds %struct.ftdi_private, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %interface to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %interface, align 2
  %call7 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or6, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %14, ptr noundef nonnull %call7.i, i16 noundef zeroext %switch.load, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp = icmp slt i32 %call7, 1
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %switch.lookup
  %dev10 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.102, i32 noundef %call7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp11 = icmp eq i32 %call7, 0
  %spec.store.select = select i1 %cmp11, i32 -5, i32 %call7
  %15 = zext i32 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %spec.store.select, label %sw.default.i [
    i32 -95, label %do.end.out_crit_edge
    i32 -12, label %do.end.out_crit_edge62
    i32 -19, label %do.end.out_crit_edge63
  ]

do.end.out_crit_edge63:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end.out_crit_edge62:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end16:                                         ; preds = %switch.lookup
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call7.i, align 8
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp18.not = icmp eq i32 %call7, 1
  br i1 %cmp18.not, label %if.end16.do.body25_crit_edge, label %if.then20

if.end16.do.body25_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx21 = getelementptr i8, ptr %call7.i, i32 1
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx21, align 1
  br label %do.body25

do.body25:                                        ; preds = %if.then20, %if.end16.do.body25_crit_edge
  %.sink = phi i8 [ %20, %if.then20 ], [ 0, %if.end16.do.body25_crit_edge ]
  %21 = getelementptr i8, ptr %status, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %21, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_get_modem_status.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_get_modem_status, %if.then30)) #12
          to label %out [label %if.then30], !srcloc !304

if.then30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %dev31 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %status, align 1
  %conv33 = zext i8 %24 to i32
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %21, align 1
  %conv35 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_get_modem_status.__UNIQUE_ID_ddebug273, ptr noundef %dev31, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.103, i32 noundef %conv33, i32 noundef %conv35) #12
  br label %out

out:                                              ; preds = %if.then30, %do.body25, %sw.default.i, %do.end.out_crit_edge, %do.end.out_crit_edge62, %do.end.out_crit_edge63, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call7, %if.then30 ], [ -14, %if.end.out_crit_edge ], [ -5, %sw.default.i ], [ %call7, %do.end.out_crit_edge ], [ %call7, %do.end.out_crit_edge62 ], [ %call7, %do.end.out_crit_edge63 ], [ %call7, %do.body25 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftdi_process_packet(ptr noundef %port, ptr nocapture noundef %priv, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp slt i32 %len, 2
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftdi_process_packet.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftdi_process_packet, %if.then3)) #12
          to label %cleanup [label %if.then3], !srcloc !304

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftdi_process_packet.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.108) #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %2 = and i8 %1, -16
  %prev_status = getelementptr inbounds %struct.ftdi_private, ptr %priv, i32 0, i32 6
  %3 = ptrtoint ptr %prev_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %prev_status, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp8.not = icmp eq i8 %2, %4
  br i1 %cmp8.not, label %if.end4.if.end50_crit_edge, label %if.then10

if.end4.if.end50_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then10:                                        ; preds = %if.end4
  %xor202 = xor i8 %2, %4
  %conv15 = zext i8 %xor202 to i32
  %and16 = and i32 %conv15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then10.if.end19_crit_edge, label %if.then18

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %icount = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27
  %5 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icount, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %icount, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then10.if.end19_crit_edge
  %and21 = and i32 %conv15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end26_crit_edge, label %if.then23

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %dsr = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 1
  %7 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dsr, align 4
  %inc25 = add i32 %8, 1
  store i32 %inc25, ptr %dsr, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end19.if.end26_crit_edge
  %and28 = and i32 %conv15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end33_crit_edge, label %if.then30

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %rng = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 2
  %9 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rng, align 8
  %inc32 = add i32 %10, 1
  store i32 %inc32, ptr %rng, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end26.if.end33_crit_edge
  %and35 = and i32 %conv15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end47_crit_edge, label %if.then37

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then37:                                        ; preds = %if.end33
  %dcd = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 3
  %11 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dcd, align 4
  %inc39 = add i32 %12, 1
  store i32 %inc39, ptr %dcd, align 4
  %port40 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %call41 = tail call ptr @tty_port_tty_get(ptr noundef %port40) #12
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.then37.if.end46_crit_edge, label %if.then43

if.then37.if.end46_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %13 = and i8 %1, -128
  %and45 = zext i8 %13 to i32
  tail call void @usb_serial_handle_dcd_change(ptr noundef %port, ptr noundef nonnull %call41, i32 noundef %and45) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.then37.if.end46_crit_edge
  tail call void @tty_kref_put(ptr noundef %call41) #12
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end33.if.end47_crit_edge
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %14 = ptrtoint ptr %prev_status to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %2, ptr %prev_status, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.end4.if.end50_crit_edge
  %arrayidx51 = getelementptr i8, ptr %buf, i32 1
  %15 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx51, align 1
  %17 = lshr i8 %16, 6
  %.lobit = and i8 %17, 1
  %18 = getelementptr inbounds %struct.ftdi_private, ptr %priv, i32 0, i32 7
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.lobit, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp58 = icmp eq i32 %len, 2
  br i1 %cmp58, label %if.end50.cleanup_crit_edge, label %if.end61

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61:                                         ; preds = %if.end50
  %20 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx51, align 1
  %conv63 = zext i8 %21 to i32
  %and64 = and i32 %conv63, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end106.thread, label %if.then66

if.end106.thread:                                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %sub107226 = add nsw i32 %len, -2
  %rx227 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 5
  %22 = ptrtoint ptr %rx227 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx227, align 4
  %add228 = add i32 %23, %sub107226
  store i32 %add228, ptr %rx227, align 4
  br label %lor.lhs.false

if.then66:                                        ; preds = %if.end61
  %and69 = and i32 %conv63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.then66.if.end78_crit_edge, label %land.lhs.true

if.then66.if.end78_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

land.lhs.true:                                    ; preds = %if.then66
  %sub = add nsw i32 %len, -1
  %arrayidx71 = getelementptr i8, ptr %buf, i32 %sub
  %24 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp73 = icmp eq i8 %25, 0
  br i1 %cmp73, label %if.then75, label %land.lhs.true.if.end78_crit_edge

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %brk = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 9
  %26 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brk, align 4
  %inc77 = add i32 %27, 1
  store i32 %inc77, ptr %brk, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %land.lhs.true.if.end78_crit_edge, %if.then66.if.end78_crit_edge
  %brkint.0 = phi i1 [ true, %if.then75 ], [ false, %land.lhs.true.if.end78_crit_edge ], [ false, %if.then66.if.end78_crit_edge ]
  %28 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx51, align 1
  %conv80 = zext i8 %29 to i32
  %and81 = and i32 %conv80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.else86, label %if.then83

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %parity = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 7
  %30 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %parity, align 4
  %inc85 = add i32 %31, 1
  store i32 %inc85, ptr %parity, align 4
  br label %if.end95

if.else86:                                        ; preds = %if.end78
  %and89 = and i32 %conv80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.else86.if.end95_crit_edge, label %if.then91

if.else86.if.end95_crit_edge:                     ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then91:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #14
  %frame = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 6
  %32 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frame, align 8
  %inc93 = add i32 %33, 1
  store i32 %inc93, ptr %frame, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.else86.if.end95_crit_edge, %if.then83
  %flag.0 = phi i8 [ 3, %if.then83 ], [ 2, %if.then91 ], [ 0, %if.else86.if.end95_crit_edge ]
  %34 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx51, align 1
  %36 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool99.not = icmp eq i8 %36, 0
  br i1 %tobool99.not, label %if.end106, label %if.then100

if.then100:                                       ; preds = %if.end95
  %overrun = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 8
  %37 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %overrun, align 8
  %inc102 = add i32 %38, 1
  store i32 %inc102, ptr %overrun, align 8
  %port103 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 0, i32 8
  %39 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then100.if.end12.i_crit_edge

if.then100.if.end12.i_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then100
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp3.i = icmp slt i32 %44, %46
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %44
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %46
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %add.ptr.i.i, align 1
  %48 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %49
  %50 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %add.ptr.i1.i, align 1
  %sub107235 = add nsw i32 %len, -2
  %rx236 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 5
  %51 = ptrtoint ptr %rx236 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx236, align 4
  %add237 = add i32 %52, %sub107235
  store i32 %add237, ptr %rx236, align 4
  br i1 %brkint.0, label %if.end.i.for.body.lr.ph_crit_edge, label %if.end.i.lor.lhs.false_crit_edge

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end.i.for.body.lr.ph_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then100.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port103, i8 noundef zeroext 0, i8 noundef zeroext 4) #12
  %sub107238 = add nsw i32 %len, -2
  %rx239 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 5
  %53 = ptrtoint ptr %rx239 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx239, align 4
  %add240 = add i32 %54, %sub107238
  store i32 %add240, ptr %rx239, align 4
  br i1 %brkint.0, label %if.end12.i.for.body.lr.ph_crit_edge, label %if.end12.i.lor.lhs.false_crit_edge

if.end12.i.lor.lhs.false_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end12.i.for.body.lr.ph_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.end106:                                        ; preds = %if.end95
  %sub107 = add nsw i32 %len, -2
  %rx = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 5
  %55 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx, align 4
  %add = add i32 %56, %sub107
  store i32 %add, ptr %rx, align 4
  br i1 %brkint.0, label %if.end106.for.body.lr.ph_crit_edge, label %if.end106.lor.lhs.false_crit_edge

if.end106.lor.lhs.false_crit_edge:                ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end106.for.body.lr.ph_crit_edge:               ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

lor.lhs.false:                                    ; preds = %if.end106.lor.lhs.false_crit_edge, %if.end12.i.lor.lhs.false_crit_edge, %if.end.i.lor.lhs.false_crit_edge, %if.end106.thread
  %sub107233 = phi i32 [ %sub107226, %if.end106.thread ], [ %sub107, %if.end106.lor.lhs.false_crit_edge ], [ %sub107235, %if.end.i.lor.lhs.false_crit_edge ], [ %sub107238, %if.end12.i.lor.lhs.false_crit_edge ]
  %flag.1231 = phi i8 [ 0, %if.end106.thread ], [ %flag.0, %if.end106.lor.lhs.false_crit_edge ], [ %flag.0, %if.end.i.lor.lhs.false_crit_edge ], [ %flag.0, %if.end12.i.lor.lhs.false_crit_edge ]
  %sysrq = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 31
  %57 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sysrq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool111.not = icmp eq i32 %58, 0
  br i1 %tobool111.not, label %if.else138, label %lor.lhs.false.for.body.lr.ph_crit_edge

lor.lhs.false.for.body.lr.ph_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %lor.lhs.false.for.body.lr.ph_crit_edge, %if.end106.for.body.lr.ph_crit_edge, %if.end12.i.for.body.lr.ph_crit_edge, %if.end.i.for.body.lr.ph_crit_edge
  %sub107234 = phi i32 [ %sub107233, %lor.lhs.false.for.body.lr.ph_crit_edge ], [ %sub107, %if.end106.for.body.lr.ph_crit_edge ], [ %sub107235, %if.end.i.for.body.lr.ph_crit_edge ], [ %sub107238, %if.end12.i.for.body.lr.ph_crit_edge ]
  %flag.1232 = phi i8 [ %flag.1231, %lor.lhs.false.for.body.lr.ph_crit_edge ], [ %flag.0, %if.end106.for.body.lr.ph_crit_edge ], [ %flag.0, %if.end.i.for.body.lr.ph_crit_edge ], [ %flag.0, %if.end12.i.for.body.lr.ph_crit_edge ]
  %brkint.1.off0230 = phi i1 [ false, %lor.lhs.false.for.body.lr.ph_crit_edge ], [ true, %if.end106.for.body.lr.ph_crit_edge ], [ true, %if.end.i.for.body.lr.ph_crit_edge ], [ true, %if.end12.i.for.body.lr.ph_crit_edge ]
  %sub118 = add nsw i32 %len, -1
  %port134 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %tail.i203 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %flag.2243 = phi i8 [ %flag.1232, %for.body.lr.ph ], [ %flag.3, %for.inc.for.body_crit_edge ]
  %i.0242 = phi i32 [ 2, %for.body.lr.ph ], [ %inc137, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0242, i32 %sub118)
  %cmp119 = icmp eq i32 %i.0242, %sub118
  %or.cond = select i1 %brkint.1.off0230, i1 %cmp119, i1 false
  br i1 %or.cond, label %if.then121, label %for.body.if.end127_crit_edge

for.body.if.end127_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

if.then121:                                       ; preds = %for.body
  %call122 = tail call i32 @usb_serial_handle_break(ptr noundef %port) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then121.if.end127_crit_edge, label %if.then124

if.then121.if.end127_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

if.then124:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  %sub125 = add i32 %len, -3
  br label %cleanup

if.end127:                                        ; preds = %if.then121.if.end127_crit_edge, %for.body.if.end127_crit_edge
  %flag.3 = phi i8 [ %flag.2243, %for.body.if.end127_crit_edge ], [ 1, %if.then121.if.end127_crit_edge ]
  %arrayidx128 = getelementptr i8, ptr %buf, i32 %i.0242
  %59 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %60 to i32
  %call130 = tail call i32 @usb_serial_handle_sysrq_char(ptr noundef %port, i32 noundef %conv129) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end127.for.inc_crit_edge

if.end127.for.inc_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end133:                                        ; preds = %if.end127
  %61 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx128, align 1
  %63 = ptrtoint ptr %tail.i203 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tail.i203, align 4
  %flags.i204 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %flags.i204 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i204, align 4
  %and.i205 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205)
  %tobool.not.i206 = icmp eq i32 %and.i205, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.3)
  %cmp.i = icmp eq i8 %flag.3, 0
  %67 = or i1 %cmp.i, %tobool.not.i206
  br i1 %67, label %land.lhs.true.i210, label %if.end133.if.end12.i221_crit_edge

if.end133.if.end12.i221_crit_edge:                ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i221

land.lhs.true.i210:                               ; preds = %if.end133
  %used.i207 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 1
  %68 = ptrtoint ptr %used.i207 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %used.i207, align 4
  %size.i208 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 2
  %70 = ptrtoint ptr %size.i208 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i208, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp3.i209 = icmp slt i32 %69, %71
  br i1 %cmp3.i209, label %if.then.i211, label %land.lhs.true.i210.if.end12.i221_crit_edge

land.lhs.true.i210.if.end12.i221_crit_edge:       ; preds = %land.lhs.true.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i221

if.then.i211:                                     ; preds = %land.lhs.true.i210
  br i1 %tobool.not.i206, label %if.then8.i215, label %if.then.i211.if.end.i219_crit_edge

if.then.i211.if.end.i219_crit_edge:               ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i219

if.then8.i215:                                    ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i212 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 6
  %add.ptr.i.i.i213 = getelementptr i8, ptr %data.i.i.i212, i32 %69
  %add.ptr.i.i214 = getelementptr i8, ptr %add.ptr.i.i.i213, i32 %71
  %72 = ptrtoint ptr %add.ptr.i.i214 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %flag.3, ptr %add.ptr.i.i214, align 1
  br label %if.end.i219

if.end.i219:                                      ; preds = %if.then8.i215, %if.then.i211.if.end.i219_crit_edge
  %73 = ptrtoint ptr %used.i207 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %used.i207, align 4
  %inc.i216 = add i32 %74, 1
  store i32 %inc.i216, ptr %used.i207, align 4
  %data.i.i217 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 6
  %add.ptr.i1.i218 = getelementptr i8, ptr %data.i.i217, i32 %74
  %75 = ptrtoint ptr %add.ptr.i1.i218 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %62, ptr %add.ptr.i1.i218, align 1
  br label %for.inc

if.end12.i221:                                    ; preds = %land.lhs.true.i210.if.end12.i221_crit_edge, %if.end133.if.end12.i221_crit_edge
  %call13.i220 = tail call i32 @__tty_insert_flip_char(ptr noundef %port134, i8 noundef zeroext %62, i8 noundef zeroext %flag.3) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end12.i221, %if.end.i219, %if.end127.for.inc_crit_edge
  %inc137 = add nuw nsw i32 %i.0242, 1
  %exitcond.not = icmp eq i32 %inc137, %len
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else138:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %port139 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %call141 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port139, ptr noundef %add.ptr, i8 noundef zeroext %flag.1231, i32 noundef %sub107233) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else138, %for.inc.cleanup_crit_edge, %if.then124, %if.end50.cleanup_crit_edge, %if.then3, %do.body
  %retval.0 = phi i32 [ %sub125, %if.then124 ], [ 0, %if.then3 ], [ 0, %if.end50.cleanup_crit_edge ], [ %sub107233, %if.else138 ], [ 0, %do.body ], [ %sub107234, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_handle_dcd_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_handle_break(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_handle_sysrq_char(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !64, !66, !67, !69, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !147, !149, !150, !152, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !176, !178, !180, !181, !182, !183, !184, !185, !187, !188, !189, !191, !192, !194, !195, !197, !198, !200, !202, !204, !205, !207, !209, !211, !212, !213, !215, !216, !218, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !263, !264, !266, !267, !269, !270, !271, !272, !274, !275, !277, !278, !279, !280, !282, !283, !285, !286, !287, !288, !290, !291, !292, !293}
!llvm.module.flags = !{!295, !296, !297, !298, !299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !{ptr @__initcall__kmod_ftdi_sio__274_2915_usb_serial_module_init6, !1, !"__initcall__kmod_ftdi_sio__274_2915_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2915, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author275, !4, !"__UNIQUE_ID_author275", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2917, i32 1}
!5 = !{ptr @__UNIQUE_ID_description276, !6, !"__UNIQUE_ID_description276", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2918, i32 1}
!7 = !{ptr @__UNIQUE_ID_file277, !8, !"__UNIQUE_ID_file277", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2919, i32 1}
!9 = !{ptr @__UNIQUE_ID_license278, !8, !"__UNIQUE_ID_license278", i1 false, i1 false}
!10 = !{ptr @__param_ndi_latency_timer, !11, !"__param_ndi_latency_timer", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2921, i32 1}
!12 = !{ptr @__UNIQUE_ID_ndi_latency_timertype279, !11, !"__UNIQUE_ID_ndi_latency_timertype279", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_ndi_latency_timer280, !14, !"__UNIQUE_ID_ndi_latency_timer280", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2922, i32 1}
!15 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @id_table_combined, !17, !"id_table_combined", i1 false, i1 false}
!17 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 147, i32 35}
!18 = !{ptr @ftdi_8u2232c_quirk, !19, !"ftdi_8u2232c_quirk", i1 false, i1 false}
!19 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 121, i32 36}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2339, i32 56}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2343, i32 27}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2344, i32 27}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2345, i32 27}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2328, i32 3}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ftdi_jtag_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @ftdi_jtag_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ftdi_HE_TIRA1_quirk, !37, !"ftdi_HE_TIRA1_quirk", i1 false, i1 false}
!37 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 113, i32 36}
!38 = !{ptr @ftdi_USB_UIRT_quirk, !39, !"ftdi_USB_UIRT_quirk", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 109, i32 36}
!40 = !{ptr @ftdi_jtag_quirk, !41, !"ftdi_jtag_quirk", i1 false, i1 false}
!41 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 101, i32 36}
!42 = !{ptr @ftdi_NDI_device_quirk, !43, !"ftdi_NDI_device_quirk", i1 false, i1 false}
!43 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 105, i32 36}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2306, i32 2}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ftdi_NDI_device_setup.__UNIQUE_ID_ddebug258, !45, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2307, i32 2}
!50 = !{ptr @ftdi_NDI_device_setup._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ftdi_NDI_device_setup._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ftdi_stmclite_quirk, !53, !"ftdi_stmclite_quirk", i1 false, i1 false}
!53 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 117, i32 36}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2364, i32 3}
!56 = !{ptr @ftdi_stmclite_probe._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ftdi_stmclite_probe._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @serial_drivers, !59, !"serial_drivers", i1 false, i1 false}
!59 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1139, i32 41}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1113, i32 18}
!62 = !{ptr @ftdi_sio_device, !63, !"ftdi_sio_device", i1 false, i1 false}
!63 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1108, i32 33}
!64 = !{ptr @ftdi_sio_port_probe.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2239, i32 2}
!66 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2255, i32 3}
!69 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ftdi_sio_port_probe._entry, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @ftdi_sio_port_probe._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1551, i32 2}
!75 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ftdi_determine_type.__UNIQUE_ID_ddebug249, !74, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1582, i32 4}
!79 = !{ptr @ftdi_determine_type.__UNIQUE_ID_ddebug250, !78, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1600, i32 4}
!82 = !{ptr @ftdi_determine_type.__UNIQUE_ID_ddebug251, !81, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1619, i32 2}
!85 = !{ptr @ftdi_determine_type._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ftdi_determine_type._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1059, i32 10}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1060, i32 16}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1061, i32 14}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1062, i32 14}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1063, i32 14}
!97 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1064, i32 14}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1065, i32 14}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1066, i32 14}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1067, i32 14}
!105 = !{ptr @ftdi_chip_name, !106, !"ftdi_chip_name", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1058, i32 20}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1650, i32 4}
!109 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ftdi_set_max_packet_size._entry, !108, !"_entry", i1 false, i1 false}
!112 = !{ptr @ftdi_set_max_packet_size._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1466, i32 3}
!115 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @read_latency_timer._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @read_latency_timer._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1426, i32 2}
!120 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @write_latency_timer.__UNIQUE_ID_ddebug248, !119, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1435, i32 3}
!124 = !{ptr @write_latency_timer._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @write_latency_timer._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.41, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1737, i32 3}
!128 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @create_sysfs_attrs.__UNIQUE_ID_ddebug254, !127, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1727, i32 8}
!132 = !{ptr @dev_attr_event_char, !131, !"dev_attr_event_char", i1 false, i1 false}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1712, i32 2}
!135 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @event_char_store.__UNIQUE_ID_ddebug252, !134, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1721, i32 3}
!139 = !{ptr @event_char_store.__UNIQUE_ID_ddebug253, !138, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1696, i32 8}
!142 = !{ptr @dev_attr_latency_timer, !141, !"dev_attr_latency_timer", i1 false, i1 false}
!143 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1672, i32 23}
!145 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1674, i32 23}
!147 = !{ptr @ftdi_gpio_init.__key, !148, !"__key", i1 false, i1 false}
!148 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2154, i32 2}
!149 = !{ptr @.str.50, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2156, i32 19}
!152 = !{ptr @ftdi_gpio_init.lock_key, !153, !"lock_key", i1 false, i1 false}
!153 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2171, i32 11}
!154 = !{ptr @ftdi_gpio_init.request_key, !153, !"request_key", i1 false, i1 false}
!155 = !{ptr @.str.52, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2080, i32 2}
!157 = !{ptr @.str.53, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @ftdi_gpio_init_ft232r.__UNIQUE_ID_ddebug257, !156, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!159 = !{ptr @.str.54, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1794, i32 3}
!161 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ftdi_set_bitmode._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @ftdi_set_bitmode._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.56, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1982, i32 3}
!166 = !{ptr @.str.57, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @ftdi_gpio_init_valid_mask.__UNIQUE_ID_ddebug255, !165, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!168 = !{ptr @.str.58, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1984, i32 3}
!170 = !{ptr @ftdi_gpio_init_valid_mask.__UNIQUE_ID_ddebug256, !169, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!171 = distinct !{null, !172, !"__already_done", i1 false, i1 false}
!172 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!173 = distinct !{null, !172, !"<string literal>", i1 false, i1 false}
!174 = distinct !{null, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!176 = !{ptr @.str.61, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!178 = !{ptr @.str.62, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1514, i32 4}
!180 = !{ptr @set_serial_info._rs, !179, !"_rs", i1 false, i1 false}
!181 = !{ptr @__func__.set_serial_info, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.63, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @set_serial_info._entry, !179, !"_entry", i1 false, i1 false}
!184 = !{ptr @set_serial_info._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.64, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1288, i32 2}
!187 = !{ptr @.str.65, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug241, !186, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!189 = !{ptr @.str.66, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1298, i32 3}
!191 = !{ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug242, !190, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!192 = !{ptr @.str.67, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1319, i32 4}
!194 = !{ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug243, !193, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!195 = !{ptr @.str.68, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1330, i32 4}
!197 = !{ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug244, !196, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!198 = !{ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug245, !199, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!199 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1353, i32 4}
!200 = !{ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug246, !201, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!201 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1367, i32 4}
!202 = !{ptr @.str.69, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1376, i32 3}
!204 = !{ptr @get_ftdi_divisor.__UNIQUE_ID_ddebug247, !203, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!205 = !{ptr @ftdi_232bm_baud_base_to_divisor.divfrac, !206, !"divfrac", i1 false, i1 false}
!206 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1180, i32 29}
!207 = !{ptr @ftdi_2232h_baud_base_to_divisor.divfrac, !208, !"divfrac", i1 false, i1 false}
!208 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1201, i32 29}
!209 = !{ptr @.str.70, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2651, i32 3}
!211 = !{ptr @.str.71, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @ftdi_set_termios.__UNIQUE_ID_ddebug265, !210, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!213 = !{ptr @.str.72, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2658, i32 3}
!215 = !{ptr @ftdi_set_termios.__UNIQUE_ID_ddebug266, !214, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!216 = !{ptr @.str.73, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2677, i32 3}
!218 = !{ptr @ftdi_set_termios._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @ftdi_set_termios._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.74, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2724, i32 3}
!222 = !{ptr @ftdi_set_termios.__UNIQUE_ID_ddebug267, !221, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!223 = !{ptr @.str.75, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2728, i32 3}
!225 = !{ptr @ftdi_set_termios.__UNIQUE_ID_ddebug268, !224, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!226 = !{ptr @.str.76, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2733, i32 3}
!228 = !{ptr @ftdi_set_termios.__UNIQUE_ID_ddebug269, !227, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!229 = !{ptr @.str.78, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2746, i32 3}
!231 = !{ptr @ftdi_set_termios._entry.77, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @ftdi_set_termios._entry_ptr.79, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.81, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2759, i32 4}
!235 = !{ptr @ftdi_set_termios._entry.80, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @ftdi_set_termios._entry_ptr.82, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.84, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2768, i32 4}
!239 = !{ptr @ftdi_set_termios._entry.83, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @ftdi_set_termios._entry_ptr.85, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.86, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2780, i32 3}
!243 = !{ptr @ftdi_set_termios.__UNIQUE_ID_ddebug270, !242, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!244 = !{ptr @.str.87, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2783, i32 3}
!246 = !{ptr @ftdi_set_termios.__UNIQUE_ID_ddebug271, !245, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!247 = !{ptr @.str.88, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2787, i32 3}
!249 = !{ptr @ftdi_set_termios.__UNIQUE_ID_ddebug272, !248, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!250 = !{ptr @.str.90, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2798, i32 3}
!252 = !{ptr @ftdi_set_termios._entry.89, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @ftdi_set_termios._entry_ptr.91, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.92, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1241, i32 3}
!256 = !{ptr @.str.93, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @update_mctrl.__UNIQUE_ID_ddebug238, !255, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!258 = !{ptr @.str.94, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1262, i32 3}
!260 = !{ptr @update_mctrl.__UNIQUE_ID_ddebug239, !259, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!261 = !{ptr @.str.95, !259, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.96, !259, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.97, !259, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.98, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 1268, i32 3}
!266 = !{ptr @update_mctrl.__UNIQUE_ID_ddebug240, !265, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!267 = !{ptr @.str.99, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2610, i32 3}
!269 = !{ptr @.str.100, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @ftdi_break_ctl._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @ftdi_break_ctl._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.101, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2614, i32 2}
!274 = !{ptr @ftdi_break_ctl.__UNIQUE_ID_ddebug264, !273, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!275 = !{ptr @.str.102, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2850, i32 3}
!277 = !{ptr @.str.103, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @ftdi_get_modem_status._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @ftdi_get_modem_status._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.104, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2863, i32 2}
!282 = !{ptr @ftdi_get_modem_status.__UNIQUE_ID_ddebug273, !281, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!283 = !{ptr @.str.105, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2417, i32 4}
!285 = !{ptr @.str.106, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @ftdi_dtr_rts._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @ftdi_dtr_rts._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.107, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2479, i32 3}
!290 = !{ptr @.str.108, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @ftdi_process_packet.__UNIQUE_ID_ddebug261, !289, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!292 = !{ptr @__param_str_ndi_latency_timer, !11, !"__param_str_ndi_latency_timer", i1 false, i1 false}
!293 = !{ptr @ndi_latency_timer, !294, !"ndi_latency_timer", i1 false, i1 false}
!294 = !{!"../drivers/usb/serial/ftdi_sio.c", i32 2289, i32 12}
!295 = !{i32 1, !"wchar_size", i32 2}
!296 = !{i32 1, !"min_enum_size", i32 4}
!297 = !{i32 8, !"branch-target-enforcement", i32 0}
!298 = !{i32 8, !"sign-return-address", i32 0}
!299 = !{i32 8, !"sign-return-address-all", i32 0}
!300 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!301 = !{i32 7, !"uwtable", i32 1}
!302 = !{i32 7, !"frame-pointer", i32 2}
!303 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!304 = !{i64 2148791941, i64 2148791946, i64 2148791959, i64 2148792003, i64 2148792037, i64 2148792058}
!305 = !{!"auto-init"}
!306 = !{i8 0, i8 2}
!307 = !{i64 2152684873, i64 2152684898}
