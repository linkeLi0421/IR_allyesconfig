; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/cp210x.c_pt.bc'
source_filename = "../drivers/usb/serial/cp210x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cp210x_rate = type { i32, i32 }
%struct.cp210x_quad_port_config = type <{ %struct.cp210x_quad_port_state, %struct.cp210x_quad_port_state, [4 x i8], [4 x i8], i8, [4 x i8] }>
%struct.cp210x_quad_port_state = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cp210x_pin_mode = type { i8, i8 }
%struct.cp210x_dual_port_config = type <{ i16, [2 x i8], i16, [4 x i8], i16, i8, i8, i8 }>
%struct.cp210x_single_port_config = type <{ i16, [2 x i8], i16, [4 x i8], i16, i8 }>
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cp210x_serial_private = type { %struct.gpio_chip, i8, i16, i16, i16, i8, i32, i32, i32, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.75, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.75 = type { ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cp210x_port_private = type { i8, i8, i32, i8, %struct.mutex, i8, i8, i8 }
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
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.cp210x_comm_status = type <{ i32, i32, i32, i32, i8, i8, i8 }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.cp210x_gpio_write16 = type { i16, i16 }
%struct.cp210x_gpio_write = type { i8, i8 }
%struct.cp210x_special_chars = type { i8, i8, i8, i8, i8, i8 }
%struct.cp210x_flow_ctl = type { i32, i32, i32, i32 }

@__initcall__kmod_cp210x__257_2162_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cp210x_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description258 = internal constant [67 x i8] c"cp210x.description=Silicon Labs CP210x RS232 serial adaptor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [38 x i8] c"cp210x.file=drivers/usb/serial/cp210x\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [22 x i8] c"cp210x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cp210x\00", [25 x i8] zeroinitializer }, align 32
@id_table = internal constant { [192 x %struct.usb_device_id], [1152 x i8] } { [192 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1028, i16 844, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1115, i16 83, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 1642, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1161, i16 -8189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1861, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 4352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2278, i16 21761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2301, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2312, i16 511, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2440, i16 1400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2816, i16 12400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3053, i16 4352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3053, i16 4353, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4047, i16 4099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4047, i16 4100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4047, i16 4102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4062, i16 -13819, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4207, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4262, i16 -21978, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4267, i16 4293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4277, i16 -21392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 3985, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 4353, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 5633, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32758, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32709, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32700, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32690, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32685, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32684, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32682, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32666, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32657, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32646, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32572, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32566, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32547, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32522, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32491, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32451, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32449, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32438, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32437, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9221, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32426, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32418, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32417, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32388, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32373, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32353, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32346, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32343, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32340, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32339, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32312, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32297, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32286, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32280, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32270, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32232, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32213, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32149, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32109, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32017, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32015, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32014, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32012, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -32007, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31935, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31870, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31832, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31830, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31784, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31727, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31634, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31632, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31625, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31562, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31458, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31321, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31254, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31253, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -31131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30634, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30633, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30556, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30555, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30504, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30469, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30408, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30394, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30366, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30345, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30312, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30300, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30213, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30166, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30117, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -30114, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -29900, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -5536, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -5535, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -5533, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -5520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -5519, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -5510, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -5509, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -4095, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -4094, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -4093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4292, i16 -4092, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4293, i16 -5535, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4302, i16 -5526, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4792, i16 -5024, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4792, i16 -5022, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5037, i16 -26215, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5461, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5466, i16 4102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5738, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5738, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5738, i16 771, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5738, i16 772, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5738, i16 773, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5738, i16 1025, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5738, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5824, i16 2480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5824, i16 2481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5846, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5852, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5852, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5852, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5852, i16 21, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6056, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6056, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6132, i16 -21846, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6211, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6383, i16 -8177, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6383, i16 -8155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6383, i16 -8144, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6383, i16 -8142, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6401, i16 400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6401, i16 403, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6401, i16 404, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6401, i16 405, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6401, i16 406, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6401, i16 407, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6401, i16 408, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6555, i16 -17872, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6607, i16 12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6875, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6940, i16 7168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7076, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7139, i16 1958, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7535, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7721, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7721, i16 1281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 515, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 771, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 1024, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 1025, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 1026, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 1027, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 1028, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 1536, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 1537, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 1538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 1792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8121, i16 1793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8580, i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9766, i16 -5536, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 12693, i16 -3696, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 12693, i16 -3456, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 12693, i16 -3455, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 14627, i16 31243, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 16700, i16 -27392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [1152 x i8] zeroinitializer }, align 32
@cp210x_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 256, i32 256, ptr null, ptr @cp210x_attach, ptr null, ptr @cp210x_disconnect, ptr @cp210x_release, ptr @cp210x_port_probe, ptr @cp210x_port_remove, ptr null, ptr null, ptr null, ptr @cp210x_open, ptr @cp210x_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cp210x_set_termios, ptr @cp210x_break_ctl, ptr null, ptr null, ptr @cp210x_tx_empty, ptr @usb_serial_generic_throttle, ptr @usb_serial_generic_unthrottle, ptr @cp210x_tiocmget, ptr @cp210x_tiocmset, ptr null, ptr @usb_serial_generic_get_icount, ptr @cp210x_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cp210x_process_read_urb, ptr null }, [72 x i8] zeroinitializer }, align 32
@cp210x_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2142, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GPIO initialisation failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cp210x_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/serial/cp210x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cp210x_attach._entry_ptr = internal global ptr @cp210x_attach._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cp210x_determine_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 2096, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"querying part number failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cp210x_determine_type\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cp210x_determine_type._entry_ptr = internal global ptr @cp210x_determine_type._entry, section ".printk_index", align 4
@cp210x_determine_type.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 2, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"partnum = 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@cp210x_read_vendor_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to get vendor val 0x%04x size %d: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cp210x_read_vendor_block\00", [39 x i8] zeroinitializer }, align 32
@cp210x_read_vendor_block._entry_ptr = internal global ptr @cp210x_read_vendor_block._entry, section ".printk_index", align 4
@cp2102_determine_quirks.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 2, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cp2102_determine_quirks\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device does not support event-insertion mode\0A\00", [50 x i8] zeroinitializer }, align 32
@cp210x_get_fw_version.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 2, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cp210x_get_fw_version\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - %d.%d.%d\0A\00", [17 x i8] zeroinitializer }, align 32
@cp210x_gpio_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cp210x_gpio_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cp210x_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1527, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set GPIO value: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cp210x_gpio_set\00", [16 x i8] zeroinitializer }, align 32
@cp210x_gpio_set._entry_ptr = internal global ptr @cp210x_gpio_set._entry, section ".printk_index", align 4
@cp210x_write_vendor_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 756, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to set vendor val 0x%04x size %d: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cp210x_write_vendor_block\00", [38 x i8] zeroinitializer }, align 32
@cp210x_write_vendor_block._entry_ptr = internal global ptr @cp210x_write_vendor_block._entry, section ".printk_index", align 4
@cp210x_gpio_init_valid_mask.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 1, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cp210x_gpio_init_valid_mask\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no pin configured for GPIO\0A\00", [36 x i8] zeroinitializer }, align 32
@cp210x_gpio_init_valid_mask.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.22, i8 1, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GPIO.%*pbl configured for GPIO\0A\00", [32 x i8] zeroinitializer }, align 32
@cp210x_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&port_priv->mutex\00", [46 x i8] zeroinitializer }, align 32
@cp210x_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - Unable to enable UART\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cp210x_open\00", [20 x i8] zeroinitializer }, align 32
@cp210x_open._entry_ptr = internal global ptr @cp210x_open._entry, section ".printk_index", align 4
@cp210x_write_u16_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed set request 0x%x status: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cp210x_write_u16_reg\00", [43 x i8] zeroinitializer }, align 32
@cp210x_write_u16_reg._entry_ptr = internal global ptr @cp210x_write_u16_reg._entry, section ".printk_index", align 4
@cp210x_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 1289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set line control: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cp210x_set_termios\00", [45 x i8] zeroinitializer }, align 32
@cp210x_set_termios._entry_ptr = internal global ptr @cp210x_set_termios._entry, section ".printk_index", align 4
@cp210x_change_speed.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 1, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cp210x_change_speed\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - setting baud rate to %u\0A\00", [34 x i8] zeroinitializer }, align 32
@cp210x_change_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 1061, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set baud rate to %u\0A\00", [33 x i8] zeroinitializer }, align 32
@cp210x_change_speed._entry_ptr = internal global ptr @cp210x_change_speed._entry, section ".printk_index", align 4
@cp210x_an205_table1 = internal constant { [29 x %struct.cp210x_rate], [56 x i8] } { [29 x %struct.cp210x_rate] [%struct.cp210x_rate { i32 300, i32 300 }, %struct.cp210x_rate { i32 600, i32 600 }, %struct.cp210x_rate { i32 1200, i32 1200 }, %struct.cp210x_rate { i32 1800, i32 1800 }, %struct.cp210x_rate { i32 2400, i32 2400 }, %struct.cp210x_rate { i32 4000, i32 4000 }, %struct.cp210x_rate { i32 4800, i32 4803 }, %struct.cp210x_rate { i32 7200, i32 7207 }, %struct.cp210x_rate { i32 9600, i32 9612 }, %struct.cp210x_rate { i32 14400, i32 14428 }, %struct.cp210x_rate { i32 16000, i32 16062 }, %struct.cp210x_rate { i32 19200, i32 19250 }, %struct.cp210x_rate { i32 28800, i32 28912 }, %struct.cp210x_rate { i32 38400, i32 38601 }, %struct.cp210x_rate { i32 51200, i32 51558 }, %struct.cp210x_rate { i32 56000, i32 56280 }, %struct.cp210x_rate { i32 57600, i32 58053 }, %struct.cp210x_rate { i32 64000, i32 64111 }, %struct.cp210x_rate { i32 76800, i32 77608 }, %struct.cp210x_rate { i32 115200, i32 117028 }, %struct.cp210x_rate { i32 128000, i32 129347 }, %struct.cp210x_rate { i32 153600, i32 156868 }, %struct.cp210x_rate { i32 230400, i32 237832 }, %struct.cp210x_rate { i32 250000, i32 254234 }, %struct.cp210x_rate { i32 256000, i32 273066 }, %struct.cp210x_rate { i32 460800, i32 491520 }, %struct.cp210x_rate { i32 500000, i32 567138 }, %struct.cp210x_rate { i32 576000, i32 670254 }, %struct.cp210x_rate { i32 921600, i32 -1 }], [56 x i8] zeroinitializer }, align 32
@cp210x_write_reg_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 721, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed set req 0x%x size %d status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cp210x_write_reg_block\00", [41 x i8] zeroinitializer }, align 32
@cp210x_write_reg_block._entry_ptr = internal global ptr @cp210x_write_reg_block._entry, section ".printk_index", align 4
@cp210x_set_flow_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 1161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set special chars: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cp210x_set_flow_control\00", [40 x i8] zeroinitializer }, align 32
@cp210x_set_flow_control._entry_ptr = internal global ptr @cp210x_set_flow_control._entry, section ".printk_index", align 4
@cp210x_set_flow_control.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - ctrl = 0x%02x, flow = 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@cp210x_read_reg_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed get req 0x%x size %d status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cp210x_read_reg_block\00", [42 x i8] zeroinitializer }, align 32
@cp210x_read_reg_block._entry_ptr = internal global ptr @cp210x_read_reg_block._entry, section ".printk_index", align 4
@cp210x_enable_event_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 1088, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable events: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cp210x_enable_event_mode\00", [39 x i8] zeroinitializer }, align 32
@cp210x_enable_event_mode._entry_ptr = internal global ptr @cp210x_enable_event_mode._entry, section ".printk_index", align 4
@cp210x_disable_event_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 1103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to disable events: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cp210x_disable_event_mode\00", [38 x i8] zeroinitializer }, align 32
@cp210x_disable_event_mode._entry_ptr = internal global ptr @cp210x_disable_event_mode._entry, section ".printk_index", align 4
@cp210x_break_ctl.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 1, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cp210x_break_ctl\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - turning break %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@cp210x_get_tx_queue_byte_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 926, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get comm status: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cp210x_get_tx_queue_byte_count\00", [33 x i8] zeroinitializer }, align 32
@cp210x_get_tx_queue_byte_count._entry_ptr = internal global ptr @cp210x_get_tx_queue_byte_count._entry, section ".printk_index", align 4
@cp210x_tiocmget.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 1, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cp210x_tiocmget\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - control = 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@cp210x_tiocmset_port.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.3, ptr @.str.37, i8 1, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cp210x_tiocmset_port\00", [43 x i8] zeroinitializer }, align 32
@cp210x_tiocmset_port.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 1, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - control = 0x%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@cp210x_process_char.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cp210x_process_char\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - escape char\0A\00", [46 x i8] zeroinitializer }, align 32
@cp210x_process_char._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 853, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"malformed event 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@cp210x_process_char._entry_ptr = internal global ptr @cp210x_process_char._entry, section ".printk_index", align 4
@cp210x_process_char.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.57, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - lsr = 0x%02x, data = 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@cp210x_process_char.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.58, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - lsr = 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@cp210x_process_char.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.59, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - msr = 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.60 = internal global [8 x i64] [i64 6, i64 8, i64 4, i64 5, i64 8, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.62 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 5, i64 8, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 8]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 8]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 8]
@__sancov_gen_cov_switch_values.66 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 316, i32 41 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2162, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 53, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"cp210x_device\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 288, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2141, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2095, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2101, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 673, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2059, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 2078, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1937, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1526, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 754, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1603, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1605, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1978, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 771, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 697, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1289, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1059, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1061, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c"cp210x_an205_table1\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 952, i32 33 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 720, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1160, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1215, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 644, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1088, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1103, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1425, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 926, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1411, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1370, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1376, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 839, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 853, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 863, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 869, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private constant [31 x i8] c"../drivers/usb/serial/cp210x.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 875, i32 3 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_cp210x__257_2162_usb_serial_module_init6, ptr @cp210x_attach._entry, ptr @cp210x_attach._entry_ptr, ptr @cp210x_change_speed._entry, ptr @cp210x_change_speed._entry_ptr, ptr @cp210x_determine_type._entry, ptr @cp210x_determine_type._entry_ptr, ptr @cp210x_disable_event_mode._entry, ptr @cp210x_disable_event_mode._entry_ptr, ptr @cp210x_enable_event_mode._entry, ptr @cp210x_enable_event_mode._entry_ptr, ptr @cp210x_get_tx_queue_byte_count._entry, ptr @cp210x_get_tx_queue_byte_count._entry_ptr, ptr @cp210x_gpio_set._entry, ptr @cp210x_gpio_set._entry_ptr, ptr @cp210x_open._entry, ptr @cp210x_open._entry_ptr, ptr @cp210x_process_char._entry, ptr @cp210x_process_char._entry_ptr, ptr @cp210x_read_reg_block._entry, ptr @cp210x_read_reg_block._entry_ptr, ptr @cp210x_read_vendor_block._entry, ptr @cp210x_read_vendor_block._entry_ptr, ptr @cp210x_set_flow_control._entry, ptr @cp210x_set_flow_control._entry_ptr, ptr @cp210x_set_termios._entry, ptr @cp210x_set_termios._entry_ptr, ptr @cp210x_write_reg_block._entry, ptr @cp210x_write_reg_block._entry_ptr, ptr @cp210x_write_u16_reg._entry, ptr @cp210x_write_u16_reg._entry_ptr, ptr @cp210x_write_vendor_block._entry, ptr @cp210x_write_vendor_block._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @cp210x_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @cp210x_gpio_init.lock_key, ptr @cp210x_gpio_init.request_key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @cp210x_port_probe.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @cp210x_an205_table1, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 4608, i32 5760, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_determine_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_read_vendor_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_gpio_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_gpio_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_write_vendor_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_write_u16_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_change_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_an205_table1 to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_write_reg_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_set_flow_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_read_reg_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_enable_event_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_disable_event_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_get_tx_queue_byte_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp210x_process_char._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp210x_attach(ptr noundef %serial) #2 align 64 {
entry:
  %config.i70.i = alloca %struct.cp210x_quad_port_config, align 1
  %mode.i.i = alloca %struct.cp210x_pin_mode, align 1
  %config.i55.i = alloca %struct.cp210x_dual_port_config, align 2
  %config.i.i = alloca %struct.cp210x_single_port_config, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 376) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %private.i, align 4
  tail call fastcc void @cp210x_determine_type(ptr noundef %serial)
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %partnum.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %partnum.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %partnum.i, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sw.default.i [
    i8 1, label %if.end.cp210x_init_max_speed.exit_crit_edge
    i8 2, label %if.end.sw.bb1.i_crit_edge
    i8 3, label %if.end.sw.bb1.i_crit_edge26
    i8 4, label %sw.bb2.i
    i8 8, label %sw.bb3.i
    i8 5, label %sw.bb4.i
    i8 32, label %if.end.sw.bb8.i_crit_edge
    i8 33, label %if.end.sw.bb8.i_crit_edge27
    i8 34, label %if.end.sw.bb8.i_crit_edge28
  ]

if.end.sw.bb8.i_crit_edge28:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end.sw.bb8.i_crit_edge27:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end.sw.bb8.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end.sw.bb1.i_crit_edge26:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end.cp210x_init_max_speed.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_init_max_speed.exit

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge26
  br label %cp210x_init_max_speed.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_init_max_speed.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_init_max_speed.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %7 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interface.i.i, align 4
  %cur_altsetting1.i.i = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %cur_altsetting1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_altsetting1.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bInterfaceNumber.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i = icmp eq i8 %12, 0
  %.14.i = select i1 %cmp.i, i32 300, i32 2400
  %.15.i = select i1 %cmp.i, i32 2000000, i32 921600
  br label %cp210x_init_max_speed.exit

sw.bb8.i:                                         ; preds = %if.end.sw.bb8.i_crit_edge, %if.end.sw.bb8.i_crit_edge27, %if.end.sw.bb8.i_crit_edge28
  br label %cp210x_init_max_speed.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_init_max_speed.exit

cp210x_init_max_speed.exit:                       ; preds = %sw.default.i, %sw.bb8.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.cp210x_init_max_speed.exit_crit_edge
  %use_actual_rate.0.off0.i = phi i1 [ false, %sw.default.i ], [ true, %sw.bb8.i ], [ false, %sw.bb3.i ], [ true, %sw.bb2.i ], [ false, %sw.bb1.i ], [ false, %if.end.cp210x_init_max_speed.exit_crit_edge ], [ %cmp.i, %sw.bb4.i ]
  %min.0.i = phi i32 [ 300, %sw.default.i ], [ 300, %sw.bb8.i ], [ 300, %sw.bb3.i ], [ 300, %sw.bb2.i ], [ 300, %sw.bb1.i ], [ 300, %if.end.cp210x_init_max_speed.exit_crit_edge ], [ %.14.i, %sw.bb4.i ]
  %max.0.i = phi i32 [ 2000000, %sw.default.i ], [ 3000000, %sw.bb8.i ], [ 2000000, %sw.bb3.i ], [ 2000000, %sw.bb2.i ], [ 1000000, %sw.bb1.i ], [ 921600, %if.end.cp210x_init_max_speed.exit_crit_edge ], [ %.15.i, %sw.bb4.i ]
  %min_speed.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %min_speed.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %min.0.i, ptr %min_speed.i, align 4
  %max_speed.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %max.0.i, ptr %max_speed.i, align 4
  %use_actual_rate9.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %3, i32 0, i32 9
  %frombool.i = zext i1 %use_actual_rate.0.off0.i to i8
  %15 = ptrtoint ptr %use_actual_rate9.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %use_actual_rate9.i, align 4
  %16 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private.i, align 4
  %partnum.i12 = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %partnum.i12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %partnum.i12, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %19, label %cp210x_init_max_speed.exit.cleanup_crit_edge [
    i8 4, label %sw.bb.i
    i8 5, label %sw.bb2.i13
    i8 8, label %sw.bb4.i17
    i8 32, label %cp210x_init_max_speed.exit.sw.bb9.i_crit_edge
    i8 33, label %cp210x_init_max_speed.exit.sw.bb9.i_crit_edge29
    i8 34, label %cp210x_init_max_speed.exit.sw.bb9.i_crit_edge30
  ]

cp210x_init_max_speed.exit.sw.bb9.i_crit_edge30:  ; preds = %cp210x_init_max_speed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i

cp210x_init_max_speed.exit.sw.bb9.i_crit_edge29:  ; preds = %cp210x_init_max_speed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i

cp210x_init_max_speed.exit.sw.bb9.i_crit_edge:    ; preds = %cp210x_init_max_speed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i

cp210x_init_max_speed.exit.cleanup_crit_edge:     ; preds = %cp210x_init_max_speed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %cp210x_init_max_speed.exit
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %config.i.i) #7
  %21 = getelementptr inbounds %struct.cp210x_single_port_config, ptr %config.i.i, i32 0, i32 2
  %22 = getelementptr inbounds %struct.cp210x_single_port_config, ptr %config.i.i, i32 0, i32 5
  %23 = call ptr @memset(ptr %config.i.i, i32 255, i32 13)
  %24 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %serial, align 4
  %interface.i.i.i.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %26 = ptrtoint ptr %interface.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interface.i.i.i.i, align 4
  %cur_altsetting1.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %cur_altsetting1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_altsetting1.i.i.i.i, align 4
  %bInterfaceNumber.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bInterfaceNumber.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bInterfaceNumber.i.i.i.i, align 2
  %conv.i.i.i = zext i8 %31 to i16
  %call2.i.i.i = call i32 @usb_control_msg_recv(ptr noundef %25, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -64, i16 noundef zeroext 14092, i16 noundef zeroext %conv.i.i.i, ptr noundef nonnull %config.i.i, i16 noundef zeroext 13, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %sw.bb.i.if.end.i.i_crit_edge, label %cp210x_read_vendor_block.exit.i.i

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

cp210x_read_vendor_block.exit.i.i:                ; preds = %sw.bb.i
  %32 = ptrtoint ptr %interface.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %interface.i.i.i.i, align 4
  %dev3.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %33, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i.i.i, ptr noundef nonnull @.str.10, i32 noundef 14092, i32 noundef 13, i32 noundef %call2.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i.i, label %cp210x_read_vendor_block.exit.i.i.cp2104_gpioconf_init.exit.i_crit_edge, label %cp210x_read_vendor_block.exit.i.i.if.end.i.i_crit_edge

cp210x_read_vendor_block.exit.i.i.if.end.i.i_crit_edge: ; preds = %cp210x_read_vendor_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

cp210x_read_vendor_block.exit.i.i.cp2104_gpioconf_init.exit.i_crit_edge: ; preds = %cp210x_read_vendor_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp2104_gpioconf_init.exit.i

if.end.i.i:                                       ; preds = %cp210x_read_vendor_block.exit.i.i.if.end.i.i_crit_edge, %sw.bb.i.if.end.i.i_crit_edge
  %ngpio.i.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 20
  %34 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 4, ptr %ngpio.i.i, align 4
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %22, align 2
  %37 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %config.i.i, align 2
  %conv3.i.i = and i16 %38, 15
  %gpio_pushpull.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 2
  %39 = ptrtoint ptr %gpio_pushpull.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv3.i.i, ptr %gpio_pushpull.i.i, align 2
  %40 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %21, align 2
  %42 = and i16 %41, 15
  %conv7.i.i = zext i16 %42 to i32
  %conv8.i.i = zext i8 %36 to i32
  %and9.i.i = and i32 %conv8.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end13.i.i_crit_edge, label %if.then10.i.i

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_altfunc.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %43 = ptrtoint ptr %gpio_altfunc.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %gpio_altfunc.i.i, align 4
  %45 = or i16 %44, 1
  store i16 %45, ptr %gpio_altfunc.i.i, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then10.i.i, %if.end.i.i.if.end13.i.i_crit_edge
  %and15.i.i = and i32 %conv8.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end13.i.i.if.end22.i.i_crit_edge, label %if.then17.i.i

if.end13.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i

if.then17.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_altfunc18.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %46 = ptrtoint ptr %gpio_altfunc18.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %gpio_altfunc18.i.i, align 4
  %48 = or i16 %47, 2
  store i16 %48, ptr %gpio_altfunc18.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then17.i.i, %if.end13.i.i.if.end22.i.i_crit_edge
  %and24.i.i = and i32 %conv8.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end22.i.i.if.end31.i.i_crit_edge, label %if.then26.i.i

if.end22.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_altfunc27.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %49 = ptrtoint ptr %gpio_altfunc27.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %gpio_altfunc27.i.i, align 4
  %51 = or i16 %50, 4
  store i16 %51, ptr %gpio_altfunc27.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then26.i.i, %if.end22.i.i.if.end31.i.i_crit_edge
  %52 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ngpio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp3676.not.i.i = icmp eq i16 %53, 0
  br i1 %cmp3676.not.i.i, label %if.end31.i.i.cp2104_gpioconf_init.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end31.i.i.cp2104_gpioconf_init.exit.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp2104_gpioconf_init.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end31.i.i
  %gpio_input.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.077.i.i = phi i8 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %conv32.i.i = zext i8 %i.077.i.i to i32
  %54 = ptrtoint ptr %gpio_pushpull.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %gpio_pushpull.i.i, align 2
  %conv39.i.i = zext i16 %55 to i32
  %shl.i.i = shl nuw i32 1, %conv32.i.i
  %and41.i.i = and i32 %shl.i.i, %conv39.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp ne i32 %and41.i.i, 0
  %and46.i.i = and i32 %shl.i.i, %conv7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i)
  %tobool47.not.i.i = icmp eq i32 %and46.i.i, 0
  %or.cond.i.i = select i1 %tobool42.not.i.i, i1 true, i1 %tobool47.not.i.i
  br i1 %or.cond.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then48.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then48.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %gpio_input.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %gpio_input.i.i, align 2
  %58 = trunc i32 %shl.i.i to i16
  %conv53.i.i = or i16 %57, %58
  store i16 %conv53.i.i, ptr %gpio_input.i.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then48.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add i8 %i.077.i.i, 1
  %59 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %ngpio.i.i, align 4
  %61 = zext i8 %inc.i.i to i16
  %cmp36.i.i = icmp ugt i16 %60, %61
  br i1 %cmp36.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.cp2104_gpioconf_init.exit.i_crit_edge

for.inc.i.i.cp2104_gpioconf_init.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp2104_gpioconf_init.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

cp2104_gpioconf_init.exit.i:                      ; preds = %for.inc.i.i.cp2104_gpioconf_init.exit.i_crit_edge, %if.end31.i.i.cp2104_gpioconf_init.exit.i_crit_edge, %cp210x_read_vendor_block.exit.i.i.cp2104_gpioconf_init.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call2.i.i.i, %cp210x_read_vendor_block.exit.i.i.cp2104_gpioconf_init.exit.i_crit_edge ], [ 0, %if.end31.i.i.cp2104_gpioconf_init.exit.i_crit_edge ], [ 0, %for.inc.i.i.cp2104_gpioconf_init.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %config.i.i) #7
  br label %sw.epilog.i

sw.bb2.i13:                                       ; preds = %cp210x_init_max_speed.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode.i.i) #7
  %62 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %mode.i.i, align 1, !annotation !168
  %63 = getelementptr inbounds %struct.cp210x_pin_mode, ptr %mode.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %63, align 1, !annotation !168
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %config.i55.i) #7
  %65 = getelementptr inbounds %struct.cp210x_dual_port_config, ptr %config.i55.i, i32 0, i32 5
  %66 = getelementptr inbounds %struct.cp210x_dual_port_config, ptr %config.i55.i, i32 0, i32 6
  %interface.i.i.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %67 = call ptr @memset(ptr %config.i55.i, i32 255, i32 15)
  %68 = ptrtoint ptr %interface.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %interface.i.i.i, align 4
  %cur_altsetting1.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %cur_altsetting1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur_altsetting1.i.i.i, align 4
  %bInterfaceNumber.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %bInterfaceNumber.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bInterfaceNumber.i.i.i, align 2
  %74 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %serial, align 4
  %conv.i.i57.i = zext i8 %73 to i16
  %call2.i.i58.i = call i32 @usb_control_msg_recv(ptr noundef %75, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -64, i16 noundef zeroext 14097, i16 noundef zeroext %conv.i.i57.i, ptr noundef nonnull %mode.i.i, i16 noundef zeroext 2, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i58.i)
  %tobool.not.i.i59.i = icmp eq i32 %call2.i.i58.i, 0
  br i1 %tobool.not.i.i59.i, label %sw.bb2.i13.if.end.i63.i_crit_edge, label %cp210x_read_vendor_block.exit.i62.i

sw.bb2.i13.if.end.i63.i_crit_edge:                ; preds = %sw.bb2.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i63.i

cp210x_read_vendor_block.exit.i62.i:              ; preds = %sw.bb2.i13
  %76 = ptrtoint ptr %interface.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %interface.i.i.i, align 4
  %dev3.i.i60.i = getelementptr inbounds %struct.usb_interface, ptr %77, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i.i60.i, ptr noundef nonnull @.str.10, i32 noundef 14097, i32 noundef 2, i32 noundef %call2.i.i58.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i58.i)
  %cmp.i61.i = icmp slt i32 %call2.i.i58.i, 0
  br i1 %cmp.i61.i, label %cp210x_read_vendor_block.exit.i62.i.cp2105_gpioconf_init.exit.i_crit_edge, label %cp210x_read_vendor_block.exit.i62.i.if.end.i63.i_crit_edge

cp210x_read_vendor_block.exit.i62.i.if.end.i63.i_crit_edge: ; preds = %cp210x_read_vendor_block.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i63.i

cp210x_read_vendor_block.exit.i62.i.cp2105_gpioconf_init.exit.i_crit_edge: ; preds = %cp210x_read_vendor_block.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp2105_gpioconf_init.exit.i

if.end.i63.i:                                     ; preds = %cp210x_read_vendor_block.exit.i62.i.if.end.i63.i_crit_edge, %sw.bb2.i13.if.end.i63.i_crit_edge
  %78 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %serial, align 4
  %80 = ptrtoint ptr %interface.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %interface.i.i.i, align 4
  %cur_altsetting1.i.i78.i.i = getelementptr inbounds %struct.usb_interface, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %cur_altsetting1.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cur_altsetting1.i.i78.i.i, align 4
  %bInterfaceNumber.i.i79.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %bInterfaceNumber.i.i79.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bInterfaceNumber.i.i79.i.i, align 2
  %conv.i80.i.i = zext i8 %85 to i16
  %call2.i81.i.i = call i32 @usb_control_msg_recv(ptr noundef %79, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -64, i16 noundef zeroext 14092, i16 noundef zeroext %conv.i80.i.i, ptr noundef nonnull %config.i55.i, i16 noundef zeroext 15, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i81.i.i)
  %tobool.not.i82.i.i = icmp eq i32 %call2.i81.i.i, 0
  br i1 %tobool.not.i82.i.i, label %if.end.i63.i.if.end6.i.i_crit_edge, label %cp210x_read_vendor_block.exit85.i.i

if.end.i63.i.if.end6.i.i_crit_edge:               ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

cp210x_read_vendor_block.exit85.i.i:              ; preds = %if.end.i63.i
  %86 = ptrtoint ptr %interface.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %interface.i.i.i, align 4
  %dev3.i83.i.i = getelementptr inbounds %struct.usb_interface, ptr %87, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i83.i.i, ptr noundef nonnull @.str.10, i32 noundef 14092, i32 noundef 15, i32 noundef %call2.i81.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i81.i.i)
  %cmp4.i.i = icmp slt i32 %call2.i81.i.i, 0
  br i1 %cmp4.i.i, label %cp210x_read_vendor_block.exit85.i.i.cp2105_gpioconf_init.exit.i_crit_edge, label %cp210x_read_vendor_block.exit85.i.i.if.end6.i.i_crit_edge

cp210x_read_vendor_block.exit85.i.i.if.end6.i.i_crit_edge: ; preds = %cp210x_read_vendor_block.exit85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

cp210x_read_vendor_block.exit85.i.i.cp2105_gpioconf_init.exit.i_crit_edge: ; preds = %cp210x_read_vendor_block.exit85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp2105_gpioconf_init.exit.i

if.end6.i.i:                                      ; preds = %cp210x_read_vendor_block.exit85.i.i.if.end6.i.i_crit_edge, %if.end.i63.i.if.end6.i.i_crit_edge
  %88 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %73, label %if.end6.i.i.cp2105_gpioconf_init.exit.i_crit_edge [
    i8 0, label %if.then9.i.i
    i8 1, label %if.then21.i.i
  ]

if.end6.i.i.cp2105_gpioconf_init.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp2105_gpioconf_init.exit.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  %ngpio.i64.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 20
  %89 = ptrtoint ptr %ngpio.i64.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 2, ptr %ngpio.i64.i, align 4
  %90 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp11.i.i = icmp eq i8 %91, 0
  br i1 %cmp11.i.i, label %if.then13.i.i, label %if.end14.i.i

if.then13.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_altfunc.i65.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %92 = ptrtoint ptr %gpio_altfunc.i65.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 255, ptr %gpio_altfunc.i65.i, align 4
  br label %cp2105_gpioconf_init.exit.i

if.end14.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %66, align 1
  %95 = ptrtoint ptr %config.i55.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %config.i55.i, align 2
  %97 = lshr i16 %96, 10
  %conv17.i.i = and i16 %97, 3
  br label %if.end39.i.i

if.then21.i.i:                                    ; preds = %if.end6.i.i
  %ngpio23.i.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 20
  %98 = ptrtoint ptr %ngpio23.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 3, ptr %ngpio23.i.i, align 4
  %99 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp25.i.i = icmp eq i8 %100, 0
  br i1 %cmp25.i.i, label %if.then27.i.i, label %if.end29.i.i

if.then27.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_altfunc28.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %101 = ptrtoint ptr %gpio_altfunc28.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 255, ptr %gpio_altfunc28.i.i, align 4
  br label %cp2105_gpioconf_init.exit.i

if.end29.i.i:                                     ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %65, align 2
  %104 = ptrtoint ptr %config.i55.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %config.i55.i, align 2
  %106 = trunc i16 %105 to i8
  %107 = lshr i8 %106, 1
  %conv34.i.i = and i8 %107, 7
  %conv35.i.i = zext i8 %conv34.i.i to i16
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.end29.i.i, %if.end14.i.i
  %conv35.sink.i.i = phi i16 [ %conv35.i.i, %if.end29.i.i ], [ %conv17.i.i, %if.end14.i.i ]
  %iface_config.0.i.i = phi i8 [ %103, %if.end29.i.i ], [ %94, %if.end14.i.i ]
  %gpio_pushpull36.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 2
  %108 = ptrtoint ptr %gpio_pushpull36.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv35.sink.i.i, ptr %gpio_pushpull36.i.i, align 2
  %conv40.i.i = zext i8 %iface_config.0.i.i to i32
  %and41.i66.i = and i32 %conv40.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i66.i)
  %tobool.not.i67.i = icmp eq i32 %and41.i66.i, 0
  br i1 %tobool.not.i67.i, label %if.end39.i.i.if.end46.i.i_crit_edge, label %if.then42.i.i

if.end39.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i.i

if.then42.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_altfunc43.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %109 = ptrtoint ptr %gpio_altfunc43.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %gpio_altfunc43.i.i, align 4
  %111 = or i16 %110, 1
  store i16 %111, ptr %gpio_altfunc43.i.i, align 4
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then42.i.i, %if.end39.i.i.if.end46.i.i_crit_edge
  %and48.i.i = and i32 %conv40.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.not.i.i = icmp eq i32 %and48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end46.i.i.if.end55.i.i_crit_edge, label %if.then50.i.i

if.end46.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i.i

if.then50.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_altfunc51.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %112 = ptrtoint ptr %gpio_altfunc51.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %gpio_altfunc51.i.i, align 4
  %114 = or i16 %113, 2
  store i16 %114, ptr %gpio_altfunc51.i.i, align 4
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then50.i.i, %if.end46.i.i.if.end55.i.i_crit_edge
  %gpio_input.i68.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 4
  %115 = ptrtoint ptr %gpio_input.i68.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %gpio_input.i68.i, align 2
  br label %cp2105_gpioconf_init.exit.i

cp2105_gpioconf_init.exit.i:                      ; preds = %if.end55.i.i, %if.then27.i.i, %if.then13.i.i, %if.end6.i.i.cp2105_gpioconf_init.exit.i_crit_edge, %cp210x_read_vendor_block.exit85.i.i.cp2105_gpioconf_init.exit.i_crit_edge, %cp210x_read_vendor_block.exit.i62.i.cp2105_gpioconf_init.exit.i_crit_edge
  %retval.0.i69.i = phi i32 [ 0, %if.then13.i.i ], [ 0, %if.end55.i.i ], [ 0, %if.then27.i.i ], [ %call2.i.i58.i, %cp210x_read_vendor_block.exit.i62.i.cp2105_gpioconf_init.exit.i_crit_edge ], [ %call2.i81.i.i, %cp210x_read_vendor_block.exit85.i.i.cp2105_gpioconf_init.exit.i_crit_edge ], [ -19, %if.end6.i.i.cp2105_gpioconf_init.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %config.i55.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i.i) #7
  br label %sw.epilog.i

sw.bb4.i17:                                       ; preds = %cp210x_init_max_speed.exit
  %interface.i.i14 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %116 = ptrtoint ptr %interface.i.i14 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %interface.i.i14, align 4
  %cur_altsetting1.i.i15 = getelementptr inbounds %struct.usb_interface, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %cur_altsetting1.i.i15 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cur_altsetting1.i.i15, align 4
  %bInterfaceNumber.i.i16 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %bInterfaceNumber.i.i16 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bInterfaceNumber.i.i16, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp.not.i = icmp eq i8 %121, 0
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb4.i17.cleanup_crit_edge

sw.bb4.i17.cleanup_crit_edge:                     ; preds = %sw.bb4.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb4.i17
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %config.i70.i) #7
  %122 = call ptr @memset(ptr %config.i70.i, i32 255, i32 73)
  %123 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %serial, align 4
  %125 = ptrtoint ptr %cur_altsetting1.i.i15 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cur_altsetting1.i.i15, align 4
  %bInterfaceNumber.i.i.i74.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %bInterfaceNumber.i.i.i74.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bInterfaceNumber.i.i.i74.i, align 2
  %conv.i.i75.i = zext i8 %128 to i16
  %call2.i.i76.i = call i32 @usb_control_msg_recv(ptr noundef %124, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -64, i16 noundef zeroext 14092, i16 noundef zeroext %conv.i.i75.i, ptr noundef nonnull %config.i70.i, i16 noundef zeroext 73, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i76.i)
  %tobool.not.i.i77.i = icmp eq i32 %call2.i.i76.i, 0
  br i1 %tobool.not.i.i77.i, label %if.end.i.if.end.i85.i_crit_edge, label %cp210x_read_vendor_block.exit.i80.i

if.end.i.if.end.i85.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i85.i

cp210x_read_vendor_block.exit.i80.i:              ; preds = %if.end.i
  %129 = ptrtoint ptr %interface.i.i14 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %interface.i.i14, align 4
  %dev3.i.i78.i = getelementptr inbounds %struct.usb_interface, ptr %130, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i.i78.i, ptr noundef nonnull @.str.10, i32 noundef 14092, i32 noundef 73, i32 noundef %call2.i.i76.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i76.i)
  %cmp.i79.i = icmp slt i32 %call2.i.i76.i, 0
  br i1 %cmp.i79.i, label %cp210x_read_vendor_block.exit.i80.i.cp2108_gpio_init.exit.i_crit_edge, label %cp210x_read_vendor_block.exit.i80.i.if.end.i85.i_crit_edge

cp210x_read_vendor_block.exit.i80.i.if.end.i85.i_crit_edge: ; preds = %cp210x_read_vendor_block.exit.i80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i85.i

cp210x_read_vendor_block.exit.i80.i.cp2108_gpio_init.exit.i_crit_edge: ; preds = %cp210x_read_vendor_block.exit.i80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp2108_gpio_init.exit.i

if.end.i85.i:                                     ; preds = %cp210x_read_vendor_block.exit.i80.i.if.end.i85.i_crit_edge, %if.end.i.if.end.i85.i_crit_edge
  %ngpio.i81.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 20
  %131 = ptrtoint ptr %ngpio.i81.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 16, ptr %ngpio.i81.i, align 4
  %gpio_mode_pb1.i.i = getelementptr inbounds %struct.cp210x_quad_port_state, ptr %config.i70.i, i32 0, i32 1
  %132 = ptrtoint ptr %gpio_mode_pb1.i.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %gpio_mode_pb1.i.i, align 1
  %134 = call i16 @llvm.bswap.i16(i16 %133) #7
  %gpio_pushpull.i82.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 2
  %135 = ptrtoint ptr %gpio_pushpull.i82.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %gpio_pushpull.i82.i, align 2
  %gpio_latch_pb1.i.i = getelementptr inbounds %struct.cp210x_quad_port_state, ptr %config.i70.i, i32 0, i32 11
  %136 = ptrtoint ptr %gpio_latch_pb1.i.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 2)
  %137 = load i16, ptr %gpio_latch_pb1.i.i, align 1
  %gpio_altfunc.i83.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %arrayidx.i.i = getelementptr inbounds %struct.cp210x_quad_port_config, ptr %config.i70.i, i32 0, i32 3, i32 0
  %138 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i.i, align 1
  %140 = and i8 %139, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i84.i = icmp eq i8 %140, 0
  br i1 %tobool.not.i84.i, label %if.end.i85.i.if.end10.i.i_crit_edge, label %if.then6.i.i

if.end.i85.i.if.end10.i.i_crit_edge:              ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

for.body65.lr.ph.i.i:                             ; preds = %for.inc.3.i.i
  %141 = call i16 @llvm.bswap.i16(i16 %137) #7
  %conv72.i.i = zext i16 %141 to i32
  %gpio_input.i86.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 4
  br label %for.body65.i.i

if.then6.i.i:                                     ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv9.i.i = or i16 %143, 1
  store i16 %conv9.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then6.i.i, %if.end.i85.i.if.end10.i.i_crit_edge
  %144 = and i8 %139, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool16.not.i87.i = icmp eq i8 %144, 0
  br i1 %tobool16.not.i87.i, label %if.end10.i.i.if.end25.i.i_crit_edge, label %if.then17.i88.i

if.end10.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i.i

if.then17.i88.i:                                  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv24.i.i = or i16 %146, 2
  store i16 %conv24.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then17.i88.i, %if.end10.i.i.if.end25.i.i_crit_edge
  %147 = and i8 %139, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool31.not.i.i = icmp eq i8 %147, 0
  br i1 %tobool31.not.i.i, label %if.end25.i.i.if.end41.i.i_crit_edge, label %if.then32.i.i

if.end25.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

if.then32.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv40.i89.i = or i16 %149, 4
  store i16 %conv40.i89.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then32.i.i, %if.end25.i.i.if.end41.i.i_crit_edge
  %150 = and i8 %139, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool47.not.i90.i = icmp eq i8 %150, 0
  br i1 %tobool47.not.i90.i, label %if.end41.i.i.for.inc.i92.i_crit_edge, label %if.then48.i91.i

if.end41.i.i.for.inc.i92.i_crit_edge:             ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i92.i

if.then48.i91.i:                                  ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv56.i.i = or i16 %152, 8
  store i16 %conv56.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %for.inc.i92.i

for.inc.i92.i:                                    ; preds = %if.then48.i91.i, %if.end41.i.i.for.inc.i92.i_crit_edge
  %arrayidx.1.i.i = getelementptr inbounds %struct.cp210x_quad_port_config, ptr %config.i70.i, i32 0, i32 3, i32 1
  %153 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.1.i.i, align 1
  %155 = and i8 %154, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.1.i.i = icmp eq i8 %155, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i92.i.if.end10.1.i.i_crit_edge, label %if.then6.1.i.i

for.inc.i92.i.if.end10.1.i.i_crit_edge:           ; preds = %for.inc.i92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.1.i.i

if.then6.1.i.i:                                   ; preds = %for.inc.i92.i
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv9.1.i.i = or i16 %157, 16
  store i16 %conv9.1.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end10.1.i.i

if.end10.1.i.i:                                   ; preds = %if.then6.1.i.i, %for.inc.i92.i.if.end10.1.i.i_crit_edge
  %158 = and i8 %154, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool16.not.1.i.i = icmp eq i8 %158, 0
  br i1 %tobool16.not.1.i.i, label %if.end10.1.i.i.if.end25.1.i.i_crit_edge, label %if.then17.1.i.i

if.end10.1.i.i.if.end25.1.i.i_crit_edge:          ; preds = %if.end10.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.1.i.i

if.then17.1.i.i:                                  ; preds = %if.end10.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv24.1.i.i = or i16 %160, 32
  store i16 %conv24.1.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end25.1.i.i

if.end25.1.i.i:                                   ; preds = %if.then17.1.i.i, %if.end10.1.i.i.if.end25.1.i.i_crit_edge
  %161 = and i8 %154, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool31.not.1.i.i = icmp eq i8 %161, 0
  br i1 %tobool31.not.1.i.i, label %if.end25.1.i.i.if.end41.1.i.i_crit_edge, label %if.then32.1.i.i

if.end25.1.i.i.if.end41.1.i.i_crit_edge:          ; preds = %if.end25.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.1.i.i

if.then32.1.i.i:                                  ; preds = %if.end25.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv40.1.i.i = or i16 %163, 64
  store i16 %conv40.1.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end41.1.i.i

if.end41.1.i.i:                                   ; preds = %if.then32.1.i.i, %if.end25.1.i.i.if.end41.1.i.i_crit_edge
  %164 = and i8 %154, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool47.not.1.i.i = icmp eq i8 %164, 0
  br i1 %tobool47.not.1.i.i, label %if.end41.1.i.i.for.inc.1.i.i_crit_edge, label %if.then48.1.i.i

if.end41.1.i.i.for.inc.1.i.i_crit_edge:           ; preds = %if.end41.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

if.then48.1.i.i:                                  ; preds = %if.end41.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv56.1.i.i = or i16 %166, 128
  store i16 %conv56.1.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then48.1.i.i, %if.end41.1.i.i.for.inc.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr inbounds %struct.cp210x_quad_port_config, ptr %config.i70.i, i32 0, i32 3, i32 2
  %167 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx.2.i.i, align 1
  %169 = and i8 %168, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.2.i.i = icmp eq i8 %169, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.if.end10.2.i.i_crit_edge, label %if.then6.2.i.i

for.inc.1.i.i.if.end10.2.i.i_crit_edge:           ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.2.i.i

if.then6.2.i.i:                                   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv9.2.i.i = or i16 %171, 256
  store i16 %conv9.2.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end10.2.i.i

if.end10.2.i.i:                                   ; preds = %if.then6.2.i.i, %for.inc.1.i.i.if.end10.2.i.i_crit_edge
  %172 = and i8 %168, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool16.not.2.i.i = icmp eq i8 %172, 0
  br i1 %tobool16.not.2.i.i, label %if.end10.2.i.i.if.end25.2.i.i_crit_edge, label %if.then17.2.i.i

if.end10.2.i.i.if.end25.2.i.i_crit_edge:          ; preds = %if.end10.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.2.i.i

if.then17.2.i.i:                                  ; preds = %if.end10.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %173 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv24.2.i.i = or i16 %174, 512
  store i16 %conv24.2.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end25.2.i.i

if.end25.2.i.i:                                   ; preds = %if.then17.2.i.i, %if.end10.2.i.i.if.end25.2.i.i_crit_edge
  %175 = and i8 %168, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool31.not.2.i.i = icmp eq i8 %175, 0
  br i1 %tobool31.not.2.i.i, label %if.end25.2.i.i.if.end41.2.i.i_crit_edge, label %if.then32.2.i.i

if.end25.2.i.i.if.end41.2.i.i_crit_edge:          ; preds = %if.end25.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.2.i.i

if.then32.2.i.i:                                  ; preds = %if.end25.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %176 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv40.2.i.i = or i16 %177, 1024
  store i16 %conv40.2.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end41.2.i.i

if.end41.2.i.i:                                   ; preds = %if.then32.2.i.i, %if.end25.2.i.i.if.end41.2.i.i_crit_edge
  %178 = and i8 %168, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool47.not.2.i.i = icmp eq i8 %178, 0
  br i1 %tobool47.not.2.i.i, label %if.end41.2.i.i.for.inc.2.i.i_crit_edge, label %if.then48.2.i.i

if.end41.2.i.i.for.inc.2.i.i_crit_edge:           ; preds = %if.end41.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

if.then48.2.i.i:                                  ; preds = %if.end41.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %179 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv56.2.i.i = or i16 %180, 2048
  store i16 %conv56.2.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then48.2.i.i, %if.end41.2.i.i.for.inc.2.i.i_crit_edge
  %arrayidx.3.i.i = getelementptr inbounds %struct.cp210x_quad_port_config, ptr %config.i70.i, i32 0, i32 3, i32 3
  %181 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx.3.i.i, align 1
  %183 = and i8 %182, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.not.3.i.i = icmp eq i8 %183, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.if.end10.3.i.i_crit_edge, label %if.then6.3.i.i

for.inc.2.i.i.if.end10.3.i.i_crit_edge:           ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.3.i.i

if.then6.3.i.i:                                   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %184 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv9.3.i.i = or i16 %185, 4096
  store i16 %conv9.3.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end10.3.i.i

if.end10.3.i.i:                                   ; preds = %if.then6.3.i.i, %for.inc.2.i.i.if.end10.3.i.i_crit_edge
  %186 = and i8 %182, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool16.not.3.i.i = icmp eq i8 %186, 0
  br i1 %tobool16.not.3.i.i, label %if.end10.3.i.i.if.end25.3.i.i_crit_edge, label %if.then17.3.i.i

if.end10.3.i.i.if.end25.3.i.i_crit_edge:          ; preds = %if.end10.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.3.i.i

if.then17.3.i.i:                                  ; preds = %if.end10.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv24.3.i.i = or i16 %188, 8192
  store i16 %conv24.3.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end25.3.i.i

if.end25.3.i.i:                                   ; preds = %if.then17.3.i.i, %if.end10.3.i.i.if.end25.3.i.i_crit_edge
  %189 = and i8 %182, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool31.not.3.i.i = icmp eq i8 %189, 0
  br i1 %tobool31.not.3.i.i, label %if.end25.3.i.i.if.end41.3.i.i_crit_edge, label %if.then32.3.i.i

if.end25.3.i.i.if.end41.3.i.i_crit_edge:          ; preds = %if.end25.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.3.i.i

if.then32.3.i.i:                                  ; preds = %if.end25.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %190 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv40.3.i.i = or i16 %191, 16384
  store i16 %conv40.3.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %if.end41.3.i.i

if.end41.3.i.i:                                   ; preds = %if.then32.3.i.i, %if.end25.3.i.i.if.end41.3.i.i_crit_edge
  %192 = and i8 %182, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool47.not.3.i.i = icmp eq i8 %192, 0
  br i1 %tobool47.not.3.i.i, label %if.end41.3.i.i.for.inc.3.i.i_crit_edge, label %if.then48.3.i.i

if.end41.3.i.i.for.inc.3.i.i_crit_edge:           ; preds = %if.end41.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i.i

if.then48.3.i.i:                                  ; preds = %if.end41.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %gpio_altfunc.i83.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %gpio_altfunc.i83.i, align 4
  %conv56.3.i.i = or i16 %194, -32768
  store i16 %conv56.3.i.i, ptr %gpio_altfunc.i83.i, align 4
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then48.3.i.i, %if.end41.3.i.i.for.inc.3.i.i_crit_edge
  %195 = ptrtoint ptr %ngpio.i81.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %ngpio.i81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %cmp63121.not.i.i = icmp eq i16 %196, 0
  br i1 %cmp63121.not.i.i, label %for.inc.3.i.i.cp2108_gpio_init.exit.i_crit_edge, label %for.body65.lr.ph.i.i

for.inc.3.i.i.cp2108_gpio_init.exit.i_crit_edge:  ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp2108_gpio_init.exit.i

for.body65.i.i:                                   ; preds = %for.inc84.i.i.for.body65.i.i_crit_edge, %for.body65.lr.ph.i.i
  %i.1122.i.i = phi i8 [ 0, %for.body65.lr.ph.i.i ], [ %inc85.i.i, %for.inc84.i.i.for.body65.i.i_crit_edge ]
  %conv59.i.i = zext i8 %i.1122.i.i to i32
  %197 = ptrtoint ptr %gpio_pushpull.i82.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %gpio_pushpull.i82.i, align 2
  %conv67.i.i = zext i16 %198 to i32
  %shl69.i.i = shl nuw i32 1, %conv59.i.i
  %and70.i.i = and i32 %shl69.i.i, %conv67.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i.i)
  %tobool71.not.i.i = icmp ne i32 %and70.i.i, 0
  %and75.i.i = and i32 %shl69.i.i, %conv72.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i.i)
  %tobool76.not.i.i = icmp eq i32 %and75.i.i, 0
  %or.cond.i93.i = select i1 %tobool71.not.i.i, i1 true, i1 %tobool76.not.i.i
  br i1 %or.cond.i93.i, label %for.body65.i.i.for.inc84.i.i_crit_edge, label %if.then77.i.i

for.body65.i.i.for.inc84.i.i_crit_edge:           ; preds = %for.body65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc84.i.i

if.then77.i.i:                                    ; preds = %for.body65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %199 = ptrtoint ptr %gpio_input.i86.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %gpio_input.i86.i, align 2
  %201 = trunc i32 %shl69.i.i to i16
  %conv82.i.i = or i16 %200, %201
  store i16 %conv82.i.i, ptr %gpio_input.i86.i, align 2
  br label %for.inc84.i.i

for.inc84.i.i:                                    ; preds = %if.then77.i.i, %for.body65.i.i.for.inc84.i.i_crit_edge
  %inc85.i.i = add i8 %i.1122.i.i, 1
  %202 = ptrtoint ptr %ngpio.i81.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %ngpio.i81.i, align 4
  %204 = zext i8 %inc85.i.i to i16
  %cmp63.i.i = icmp ugt i16 %203, %204
  br i1 %cmp63.i.i, label %for.inc84.i.i.for.body65.i.i_crit_edge, label %for.inc84.i.i.cp2108_gpio_init.exit.i_crit_edge

for.inc84.i.i.cp2108_gpio_init.exit.i_crit_edge:  ; preds = %for.inc84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp2108_gpio_init.exit.i

for.inc84.i.i.for.body65.i.i_crit_edge:           ; preds = %for.inc84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body65.i.i

cp2108_gpio_init.exit.i:                          ; preds = %for.inc84.i.i.cp2108_gpio_init.exit.i_crit_edge, %for.inc.3.i.i.cp2108_gpio_init.exit.i_crit_edge, %cp210x_read_vendor_block.exit.i80.i.cp2108_gpio_init.exit.i_crit_edge
  %retval.0.i94.i = phi i32 [ %call2.i.i76.i, %cp210x_read_vendor_block.exit.i80.i.cp2108_gpio_init.exit.i_crit_edge ], [ 0, %for.inc.3.i.i.cp2108_gpio_init.exit.i_crit_edge ], [ 0, %for.inc84.i.i.cp2108_gpio_init.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %config.i70.i) #7
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %cp210x_init_max_speed.exit.sw.bb9.i_crit_edge, %cp210x_init_max_speed.exit.sw.bb9.i_crit_edge29, %cp210x_init_max_speed.exit.sw.bb9.i_crit_edge30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %205 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %205, i32 noundef 3264, i32 noundef 678) #10
  %tobool.not.i96.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i96.i, label %sw.bb9.i.do.end_crit_edge, label %if.end.i103.i

sw.bb9.i.do.end_crit_edge:                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i103.i:                                    ; preds = %sw.bb9.i
  %206 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %serial, align 4
  %interface.i.i.i97.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %208 = ptrtoint ptr %interface.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %interface.i.i.i97.i, align 4
  %cur_altsetting1.i.i.i98.i = getelementptr inbounds %struct.usb_interface, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %cur_altsetting1.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cur_altsetting1.i.i.i98.i, align 4
  %bInterfaceNumber.i.i.i99.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %bInterfaceNumber.i.i.i99.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %bInterfaceNumber.i.i.i99.i, align 2
  %conv.i.i100.i = zext i8 %213 to i16
  %call2.i.i101.i = tail call i32 @usb_control_msg_recv(ptr noundef %207, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -64, i16 noundef zeroext 14, i16 noundef zeroext %conv.i.i100.i, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 678, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i101.i)
  %tobool.not.i.i102.i = icmp eq i32 %call2.i.i101.i, 0
  br i1 %tobool.not.i.i102.i, label %if.end.i103.i.if.end4.i.i_crit_edge, label %cp210x_read_vendor_block.exit.i106.i

if.end.i103.i.if.end4.i.i_crit_edge:              ; preds = %if.end.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

cp210x_read_vendor_block.exit.i106.i:             ; preds = %if.end.i103.i
  %214 = ptrtoint ptr %interface.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %interface.i.i.i97.i, align 4
  %dev3.i.i104.i = getelementptr inbounds %struct.usb_interface, ptr %215, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i.i104.i, ptr noundef nonnull @.str.10, i32 noundef 14, i32 noundef 678, i32 noundef %call2.i.i101.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i101.i)
  %cmp.i105.i = icmp slt i32 %call2.i.i101.i, 0
  br i1 %cmp.i105.i, label %if.then3.i.i, label %cp210x_read_vendor_block.exit.i106.i.if.end4.i.i_crit_edge

cp210x_read_vendor_block.exit.i106.i.if.end4.i.i_crit_edge: ; preds = %cp210x_read_vendor_block.exit.i106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %cp210x_read_vendor_block.exit.i106.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %do.end

if.end4.i.i:                                      ; preds = %cp210x_read_vendor_block.exit.i106.i.if.end4.i.i_crit_edge, %if.end.i103.i.if.end4.i.i_crit_edge
  %arrayidx.i107.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %216 = ptrtoint ptr %arrayidx.i107.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx.i107.i, align 2
  %arrayidx5.i.i = getelementptr i8, ptr %call7.i.i.i, i32 581
  %218 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx5.i.i, align 1
  %arrayidx6.i.i = getelementptr i8, ptr %call7.i.i.i, i32 600
  %220 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx6.i.i, align 8
  %arrayidx7.i.i = getelementptr i8, ptr %call7.i.i.i, i32 587
  %222 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx7.i.i, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %217)
  %cmp8.not.i.i = icmp eq i8 %217, 1
  br i1 %cmp8.not.i.i, label %if.end11.i.i, label %if.end4.i.i.do.end_crit_edge

if.end4.i.i.do.end_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end11.i.i:                                     ; preds = %if.end4.i.i
  %ngpio.i108.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 20
  %224 = ptrtoint ptr %ngpio.i108.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 4, ptr %ngpio.i108.i, align 4
  %225 = lshr i8 %223, 3
  %and.i.i = and i8 %225, 15
  %226 = lshr i8 %219, 3
  %227 = and i8 %226, 15
  %conv17.i109.i = zext i8 %227 to i16
  %gpio_pushpull18.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 2
  %228 = ptrtoint ptr %gpio_pushpull18.i.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %conv17.i109.i, ptr %gpio_pushpull18.i.i, align 2
  %229 = ptrtoint ptr %partnum.i12 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %partnum.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %230)
  %cmp20.i.i = icmp eq i8 %230, 34
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.end62.i.i

if.then22.i.i:                                    ; preds = %if.end11.i.i
  %conv23.i.i = zext i8 %221 to i32
  %and24.i110.i = and i32 %conv23.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i110.i)
  %tobool25.not.i111.i = icmp eq i32 %and24.i110.i, 0
  br i1 %tobool25.not.i111.i, label %if.then22.i.i.if.end29.i114.i_crit_edge, label %if.then26.i113.i

if.then22.i.i.if.end29.i114.i_crit_edge:          ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i114.i

if.then26.i113.i:                                 ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_altfunc.i112.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %231 = ptrtoint ptr %gpio_altfunc.i112.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %gpio_altfunc.i112.i, align 4
  %233 = or i16 %232, 1
  store i16 %233, ptr %gpio_altfunc.i112.i, align 4
  br label %if.end29.i114.i

if.end29.i114.i:                                  ; preds = %if.then26.i113.i, %if.then22.i.i.if.end29.i114.i_crit_edge
  %and31.i.i = and i32 %conv23.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end29.i114.i.if.end38.i.i_crit_edge, label %if.then33.i.i

if.end29.i114.i.if.end38.i.i_crit_edge:           ; preds = %if.end29.i114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i.i

if.then33.i.i:                                    ; preds = %if.end29.i114.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_altfunc34.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %234 = ptrtoint ptr %gpio_altfunc34.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %gpio_altfunc34.i.i, align 4
  %236 = or i16 %235, 2
  store i16 %236, ptr %gpio_altfunc34.i.i, align 4
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then33.i.i, %if.end29.i114.i.if.end38.i.i_crit_edge
  %and40.i.i = and i32 %conv23.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end38.i.i.if.end47.i.i_crit_edge, label %if.then42.i116.i

if.end38.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i.i

if.then42.i116.i:                                 ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_altfunc43.i115.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %237 = ptrtoint ptr %gpio_altfunc43.i115.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %gpio_altfunc43.i115.i, align 4
  %239 = or i16 %238, 4
  store i16 %239, ptr %gpio_altfunc43.i115.i, align 4
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then42.i116.i, %if.end38.i.i.if.end47.i.i_crit_edge
  %and49.i.i = and i32 %conv23.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i.i)
  %tobool50.not.i.i = icmp eq i32 %and49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end47.i.i.if.end82.i.i_crit_edge, label %if.then51.i.i

if.end47.i.i.if.end82.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.i.i

if.then51.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_altfunc52.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %240 = ptrtoint ptr %gpio_altfunc52.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %gpio_altfunc52.i.i, align 4
  %242 = or i16 %241, 8
  store i16 %242, ptr %gpio_altfunc52.i.i, align 4
  br label %if.end82.i.i

if.end62.i.i:                                     ; preds = %if.end11.i.i
  %243 = lshr i8 %221, 2
  %244 = and i8 %243, 15
  %conv60.i.i = zext i8 %244 to i16
  %gpio_altfunc61.i.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 3
  %245 = ptrtoint ptr %gpio_altfunc61.i.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %conv60.i.i, ptr %gpio_altfunc61.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %230)
  %cmp65.i.i = icmp eq i8 %230, 32
  br i1 %cmp65.i.i, label %if.then67.i.i, label %if.end62.i.i.if.end82.i.i_crit_edge

if.end62.i.i.if.end82.i.i_crit_edge:              ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.i.i

if.then67.i.i:                                    ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %246 = ptrtoint ptr %ngpio.i108.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 7, ptr %ngpio.i108.i, align 4
  %247 = shl i8 %223, 4
  %248 = and i8 %247, 112
  %or73149.i.i = or i8 %and.i.i, %248
  %249 = shl i8 %219, 4
  %250 = and i8 %249, 112
  %or80.i.i25 = or i8 %227, %250
  %or80.i.i = zext i8 %or80.i.i25 to i16
  %251 = ptrtoint ptr %gpio_pushpull18.i.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %or80.i.i, ptr %gpio_pushpull18.i.i, align 2
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %if.then67.i.i, %if.end62.i.i.if.end82.i.i_crit_edge, %if.then51.i.i, %if.end47.i.i.if.end82.i.i_crit_edge
  %gpio_latch.0.i.i = phi i8 [ %or73149.i.i, %if.then67.i.i ], [ %and.i.i, %if.end62.i.i.if.end82.i.i_crit_edge ], [ %and.i.i, %if.then51.i.i ], [ %and.i.i, %if.end47.i.i.if.end82.i.i_crit_edge ]
  %252 = ptrtoint ptr %ngpio.i108.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %ngpio.i108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %253)
  %cmp87151.not.i.i = icmp eq i16 %253, 0
  br i1 %cmp87151.not.i.i, label %if.end82.i.i.if.end14.i_crit_edge, label %for.body.lr.ph.i118.i

if.end82.i.i.if.end14.i_crit_edge:                ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

for.body.lr.ph.i118.i:                            ; preds = %if.end82.i.i
  %conv95.i.i = zext i8 %gpio_latch.0.i.i to i32
  %gpio_input.i117.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 4
  br label %for.body.i120.i

for.body.i120.i:                                  ; preds = %for.inc.i122.i.for.body.i120.i_crit_edge, %for.body.lr.ph.i118.i
  %i.0152.i.i = phi i8 [ 0, %for.body.lr.ph.i118.i ], [ %inc.i121.i, %for.inc.i122.i.for.body.i120.i_crit_edge ]
  %conv83.i.i = zext i8 %i.0152.i.i to i32
  %254 = ptrtoint ptr %gpio_pushpull18.i.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %gpio_pushpull18.i.i, align 2
  %conv90.i.i = zext i16 %255 to i32
  %shl92.i.i = shl nuw i32 1, %conv83.i.i
  %and93.i.i = and i32 %shl92.i.i, %conv90.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i.i)
  %tobool94.not.i.i = icmp ne i32 %and93.i.i, 0
  %and98.i.i = and i32 %shl92.i.i, %conv95.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i.i)
  %tobool99.not.i.i = icmp eq i32 %and98.i.i, 0
  %or.cond.i119.i = select i1 %tobool94.not.i.i, i1 true, i1 %tobool99.not.i.i
  br i1 %or.cond.i119.i, label %for.body.i120.i.for.inc.i122.i_crit_edge, label %if.then100.i.i

for.body.i120.i.for.inc.i122.i_crit_edge:         ; preds = %for.body.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i122.i

if.then100.i.i:                                   ; preds = %for.body.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  %256 = ptrtoint ptr %gpio_input.i117.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %gpio_input.i117.i, align 2
  %258 = trunc i32 %shl92.i.i to i16
  %conv105.i.i = or i16 %257, %258
  store i16 %conv105.i.i, ptr %gpio_input.i117.i, align 2
  br label %for.inc.i122.i

for.inc.i122.i:                                   ; preds = %if.then100.i.i, %for.body.i120.i.for.inc.i122.i_crit_edge
  %inc.i121.i = add i8 %i.0152.i.i, 1
  %259 = ptrtoint ptr %ngpio.i108.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %ngpio.i108.i, align 4
  %261 = zext i8 %inc.i121.i to i16
  %cmp87.i.i = icmp ugt i16 %260, %261
  br i1 %cmp87.i.i, label %for.inc.i122.i.for.body.i120.i_crit_edge, label %for.inc.i122.i.if.end14.i_crit_edge

for.inc.i122.i.if.end14.i_crit_edge:              ; preds = %for.inc.i122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

for.inc.i122.i.for.body.i120.i_crit_edge:         ; preds = %for.inc.i122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i120.i

sw.epilog.i:                                      ; preds = %cp2108_gpio_init.exit.i, %cp2105_gpioconf_init.exit.i, %cp2104_gpioconf_init.exit.i
  %result.0.i = phi i32 [ %retval.0.i94.i, %cp2108_gpio_init.exit.i ], [ %retval.0.i69.i, %cp2105_gpioconf_init.exit.i ], [ %retval.0.i.i, %cp2104_gpioconf_init.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp11.i = icmp slt i32 %result.0.i, 0
  br i1 %cmp11.i, label %sw.epilog.i.do.end_crit_edge, label %sw.epilog.i.if.end14.i_crit_edge

sw.epilog.i.if.end14.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end14.i:                                       ; preds = %sw.epilog.i.if.end14.i_crit_edge, %for.inc.i122.i.if.end14.i_crit_edge, %if.end82.i.i.if.end14.i_crit_edge
  %262 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr @.str, ptr %17, align 4
  %get_direction.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 7
  %263 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @cp210x_gpio_direction_get, ptr %get_direction.i, align 4
  %direction_input.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 8
  %264 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr @cp210x_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 9
  %265 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr @cp210x_gpio_direction_output, ptr %direction_output.i, align 4
  %get.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 10
  %266 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr @cp210x_gpio_get, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 12
  %267 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr @cp210x_gpio_set, ptr %set.i, align 4
  %set_config.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 14
  %268 = ptrtoint ptr %set_config.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr @cp210x_gpio_set_config, ptr %set_config.i, align 4
  %init_valid_mask.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 17
  %269 = ptrtoint ptr %init_valid_mask.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr @cp210x_gpio_init_valid_mask, ptr %init_valid_mask.i, align 4
  %owner.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 4
  %270 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr null, ptr %owner.i, align 4
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %271 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %interface.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %272, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 2
  %273 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %dev.i, ptr %parent.i, align 4
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 19
  %274 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 -1, ptr %base.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 23
  %275 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 1, ptr %can_sleep.i, align 4
  %call27.i = call i32 @gpiochip_add_data_with_key(ptr noundef %17, ptr noundef %serial, ptr noundef nonnull @cp210x_gpio_init.lock_key, ptr noundef nonnull @cp210x_gpio_init.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool.not.i, label %if.then28.i, label %cp210x_gpio_init.exit

if.then28.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_registered.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %17, i32 0, i32 1
  %276 = ptrtoint ptr %gpio_registered.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 1, ptr %gpio_registered.i, align 4
  br label %cleanup

cp210x_gpio_init.exit:                            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp = icmp slt i32 %call27.i, 0
  br i1 %cmp, label %cp210x_gpio_init.exit.do.end_crit_edge, label %cp210x_gpio_init.exit.cleanup_crit_edge

cp210x_gpio_init.exit.cleanup_crit_edge:          ; preds = %cp210x_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cp210x_gpio_init.exit.do.end_crit_edge:           ; preds = %cp210x_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %cp210x_gpio_init.exit.do.end_crit_edge, %sw.epilog.i.do.end_crit_edge, %if.end4.i.i.do.end_crit_edge, %if.then3.i.i, %sw.bb9.i.do.end_crit_edge
  %retval.0.i20 = phi i32 [ %call27.i, %cp210x_gpio_init.exit.do.end_crit_edge ], [ %call2.i.i101.i, %if.then3.i.i ], [ -12, %sw.bb9.i.do.end_crit_edge ], [ -524, %if.end4.i.i.do.end_crit_edge ], [ %result.0.i, %sw.epilog.i.do.end_crit_edge ]
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %277 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %278, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i20) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cp210x_gpio_init.exit.cleanup_crit_edge, %if.then28.i, %sw.bb4.i17.cleanup_crit_edge, %cp210x_init_max_speed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %cp210x_gpio_init.exit.cleanup_crit_edge ], [ 0, %sw.bb4.i17.cleanup_crit_edge ], [ 0, %cp210x_init_max_speed.exit.cleanup_crit_edge ], [ 0, %if.then28.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp210x_disconnect(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 4
  %gpio_registered.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpio_registered.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio_registered.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.cp210x_gpio_remove.exit_crit_edge, label %if.then.i

entry.cp210x_gpio_remove.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_gpio_remove.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiochip_remove(ptr noundef %1) #7
  %4 = ptrtoint ptr %gpio_registered.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %gpio_registered.i, align 4
  br label %cp210x_gpio_remove.exit

cp210x_gpio_remove.exit:                          ; preds = %if.then.i, %entry.cp210x_gpio_remove.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp210x_release(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %gpio_registered.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpio_registered.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio_registered.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.cp210x_gpio_remove.exit_crit_edge, label %if.then.i

entry.cp210x_gpio_remove.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_gpio_remove.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiochip_remove(ptr noundef %1) #7
  %4 = ptrtoint ptr %gpio_registered.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %gpio_registered.i, align 4
  br label %cp210x_gpio_remove.exit

cp210x_gpio_remove.exit:                          ; preds = %if.then.i, %entry.cp210x_gpio_remove.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp210x_port_probe(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 108) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %interface.i, align 4
  %cur_altsetting1.i = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting1.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber.i, align 2
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %call7.i.i, align 8
  %mutex = getelementptr inbounds %struct.cp210x_port_private, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.23, ptr noundef nonnull @cp210x_port_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp210x_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp210x_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4
  %conv.i = zext i8 %9 to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext %conv.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %cp210x_write_u16_reg.exit.thread, label %cp210x_write_u16_reg.exit

cp210x_write_u16_reg.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %call4.i) #11
  br label %do.end

cp210x_write_u16_reg.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %cp210x_write_u16_reg.exit.do.end_crit_edge

cp210x_write_u16_reg.exit.do.end_crit_edge:       ; preds = %cp210x_write_u16_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %cp210x_write_u16_reg.exit.do.end_crit_edge, %cp210x_write_u16_reg.exit.thread
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #11
  br label %cleanup

if.end:                                           ; preds = %cp210x_write_u16_reg.exit
  %tobool2.not = icmp eq ptr %tty, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cp210x_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %err_disable

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_disable:                                      ; preds = %if.end4
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i22 = shl i32 %17, 8
  %or.i23 = or i32 %shl.i.i22, -2147483648
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %13, align 4
  %conv.i24 = zext i8 %19 to i16
  %call4.i25 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i23, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i25)
  %cmp.i26 = icmp slt i32 %call4.i25, 0
  br i1 %cmp.i26, label %do.end.i28, label %err_disable.cp210x_write_u16_reg.exit29_crit_edge

err_disable.cp210x_write_u16_reg.exit29_crit_edge: ; preds = %err_disable
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_write_u16_reg.exit29

do.end.i28:                                       ; preds = %err_disable
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i27 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i27, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %call4.i25) #11
  br label %cp210x_write_u16_reg.exit29

cp210x_write_u16_reg.exit29:                      ; preds = %do.end.i28, %err_disable.cp210x_write_u16_reg.exit29_crit_edge
  %event_mode = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %event_mode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %event_mode, align 1
  br label %cleanup

cleanup:                                          ; preds = %cp210x_write_u16_reg.exit29, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4.i, %do.end ], [ %call5, %cp210x_write_u16_reg.exit29 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp210x_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_serial_generic_close(ptr noundef %port) #7
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %5, align 4
  %conv.i = zext i8 %11 to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 18, i8 noundef zeroext 65, i16 noundef zeroext 15, i16 noundef zeroext %conv.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.cp210x_write_u16_reg.exit_crit_edge

entry.cp210x_write_u16_reg.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_write_u16_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.26, i32 noundef 18, i32 noundef %call4.i) #11
  br label %cp210x_write_u16_reg.exit

cp210x_write_u16_reg.exit:                        ; preds = %do.end.i, %entry.cp210x_write_u16_reg.exit_crit_edge
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i7 = shl i32 %19, 8
  %or.i8 = or i32 %shl.i.i7, -2147483648
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %15, align 4
  %conv.i9 = zext i8 %21 to i16
  %call4.i10 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i8, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i10)
  %cmp.i11 = icmp slt i32 %call4.i10, 0
  br i1 %cmp.i11, label %do.end.i13, label %cp210x_write_u16_reg.exit.cp210x_write_u16_reg.exit14_crit_edge

cp210x_write_u16_reg.exit.cp210x_write_u16_reg.exit14_crit_edge: ; preds = %cp210x_write_u16_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_write_u16_reg.exit14

do.end.i13:                                       ; preds = %cp210x_write_u16_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i12 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i12, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %call4.i10) #11
  br label %cp210x_write_u16_reg.exit14

cp210x_write_u16_reg.exit14:                      ; preds = %do.end.i13, %cp210x_write_u16_reg.exit.cp210x_write_u16_reg.exit14_crit_edge
  %event_mode = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %event_mode to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %event_mode, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp210x_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %tobool.not = icmp eq ptr %old_termios, null
  br i1 %tobool.not, label %entry.if.then5_crit_edge, label %land.lhs.true

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

land.lhs.true:                                    ; preds = %entry
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %4 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %termios, align 4
  %6 = ptrtoint ptr %old_termios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old_termios, align 4
  %xor.i = xor i32 %7, %5
  %and.i = and i32 %xor.i, 5136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %arrayidx.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr %struct.ktermios, ptr %old_termios, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp.not.i = icmp eq i8 %9, %11
  br i1 %cmp.not.i, label %lor.rhs.i, label %land.lhs.true.lor.end.i_crit_edge

land.lhs.true.lor.end.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx10.i = getelementptr %struct.ktermios, ptr %old_termios, i32 0, i32 5, i32 9
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp12.i = icmp ne i8 %13, %15
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %land.lhs.true.lor.end.i_crit_edge
  %16 = phi i1 [ true, %land.lhs.true.lor.end.i_crit_edge ], [ %cmp12.i, %lor.rhs.i ]
  %call.i = tail call i32 @tty_termios_hw_change(ptr noundef %termios, ptr noundef nonnull %old_termios) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not.i = icmp ne i32 %call.i, 0
  %17 = select i1 %tobool15.not.i, i1 true, i1 %tobool.not.i
  %or.cond = select i1 %17, i1 true, i1 %16
  br i1 %or.cond, label %lor.lhs.false.critedge, label %lor.end.i.cleanup_crit_edge

lor.end.i.cleanup_crit_edge:                      ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %lor.end.i
  %c_ospeed = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 7
  %18 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_ospeed, align 4
  %c_ospeed4 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 7
  %20 = ptrtoint ptr %c_ospeed4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %c_ospeed4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not = icmp eq i32 %19, %21
  br i1 %cmp.not, label %lor.lhs.false.critedge.if.end6_crit_edge, label %lor.lhs.false.critedge.if.then5_crit_edge

lor.lhs.false.critedge.if.then5_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

lor.lhs.false.critedge.if.end6_crit_edge:         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %lor.lhs.false.critedge.if.then5_crit_edge, %entry.if.then5_crit_edge
  tail call fastcc void @cp210x_change_speed(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false.critedge.if.end6_crit_edge
  %partnum = getelementptr inbounds %struct.cp210x_serial_private, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %partnum to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %partnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp7 = icmp eq i8 %23, 1
  br i1 %cmp7, label %if.then9, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %24 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_cflag, align 4
  %and = and i32 %25, -1073741937
  %or = or i32 %and, 48
  store i32 %or, ptr %c_cflag, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end6.if.end13_crit_edge
  %termios14 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag15 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %26 = ptrtoint ptr %c_cflag15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_cflag15, align 4
  %28 = trunc i32 %27 to i16
  %29 = shl i16 %28, 4
  %switch.idx.mult = and i16 %29, 768
  %switch.offset = add nuw nsw i16 %switch.idx.mult, 1280
  %and34 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end13.if.end69_crit_edge, label %if.then36

if.end13.if.end69_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then36:                                        ; preds = %if.end13
  %and39 = and i32 %27, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %and57 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool40.not, label %if.else54, label %if.then41

if.then41:                                        ; preds = %if.then36
  br i1 %tobool58.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %30 = or i16 %switch.offset, 48
  br label %if.end69

if.else:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %31 = or i16 %switch.offset, 64
  br label %if.end69

if.else54:                                        ; preds = %if.then36
  br i1 %tobool58.not, label %if.else63, label %if.then59

if.then59:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #9
  %32 = or i16 %switch.offset, 16
  br label %if.end69

if.else63:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #9
  %33 = or i16 %switch.offset, 32
  br label %if.end69

if.end69:                                         ; preds = %if.else63, %if.then59, %if.else, %if.then46, %if.end13.if.end69_crit_edge
  %bits.1 = phi i16 [ %30, %if.then46 ], [ %31, %if.else ], [ %32, %if.then59 ], [ %33, %if.else63 ], [ %switch.offset, %if.end13.if.end69_crit_edge ]
  %34 = trunc i32 %27 to i16
  %35 = lshr i16 %34, 5
  %36 = and i16 %35, 2
  %37 = or i16 %bits.1, %36
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %40 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i.i = shl i32 %45, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %41, align 4
  %conv.i = zext i8 %47 to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 65, i16 noundef zeroext %37, i16 noundef zeroext %conv.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %cp210x_write_u16_reg.exit.thread, label %cp210x_write_u16_reg.exit

cp210x_write_u16_reg.exit.thread:                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %call4.i) #11
  br label %do.end

cp210x_write_u16_reg.exit:                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool84.not = icmp eq i32 %call4.i, 0
  br i1 %tobool84.not, label %cp210x_write_u16_reg.exit.if.end86_crit_edge, label %cp210x_write_u16_reg.exit.do.end_crit_edge

cp210x_write_u16_reg.exit.do.end_crit_edge:       ; preds = %cp210x_write_u16_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

cp210x_write_u16_reg.exit.if.end86_crit_edge:     ; preds = %cp210x_write_u16_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

do.end:                                           ; preds = %cp210x_write_u16_reg.exit.do.end_crit_edge, %cp210x_write_u16_reg.exit.thread
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call4.i) #11
  br label %if.end86

if.end86:                                         ; preds = %do.end, %cp210x_write_u16_reg.exit.if.end86_crit_edge
  tail call fastcc void @cp210x_set_flow_control(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios)
  %48 = ptrtoint ptr %termios14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %termios14, align 4
  %and88 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %50 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i.i, align 4
  %event_mode.i133 = getelementptr inbounds %struct.cp210x_port_private, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %event_mode.i133 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %event_mode.i133, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i134 = icmp eq i8 %53, 0
  br i1 %tobool89.not, label %if.else91, label %if.then90

if.then90:                                        ; preds = %if.end86
  br i1 %tobool.not.i134, label %if.end.i, label %if.then90.cleanup_crit_edge

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then90
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port, align 8
  %private.i.i = getelementptr inbounds %struct.usb_serial, ptr %55, i32 0, i32 15
  %56 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %private.i.i, align 4
  %no_event_mode.i = getelementptr inbounds %struct.cp210x_serial_private, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %no_event_mode.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %no_event_mode.i, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool2.not.i = icmp eq i8 %59, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %event_state.i = getelementptr inbounds %struct.cp210x_port_private, ptr %51, i32 0, i32 2
  %60 = ptrtoint ptr %event_state.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %event_state.i, align 4
  %61 = ptrtoint ptr %event_mode.i133 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %event_mode.i133, align 1
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port, align 8
  %64 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i.i, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i.i = shl i32 %69, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %65, align 4
  %conv.i.i = zext i8 %71 to i16
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i.i, i8 noundef zeroext 21, i8 noundef zeroext 65, i16 noundef zeroext 236, i16 noundef zeroext %conv.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %cp210x_write_u16_reg.exit.thread.i, label %cp210x_write_u16_reg.exit.i

cp210x_write_u16_reg.exit.thread.i:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i.i, ptr noundef nonnull @.str.26, i32 noundef 21, i32 noundef %call4.i.i) #11
  br label %do.end.i131

cp210x_write_u16_reg.exit.i:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool7.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool7.not.i, label %cp210x_write_u16_reg.exit.i.cleanup_crit_edge, label %cp210x_write_u16_reg.exit.i.do.end.i131_crit_edge

cp210x_write_u16_reg.exit.i.do.end.i131_crit_edge: ; preds = %cp210x_write_u16_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i131

cp210x_write_u16_reg.exit.i.cleanup_crit_edge:    ; preds = %cp210x_write_u16_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i131:                                      ; preds = %cp210x_write_u16_reg.exit.i.do.end.i131_crit_edge, %cp210x_write_u16_reg.exit.thread.i
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %call4.i.i) #11
  %72 = ptrtoint ptr %event_mode.i133 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %event_mode.i133, align 1
  br label %cleanup

if.else91:                                        ; preds = %if.end86
  br i1 %tobool.not.i134, label %if.else91.cleanup_crit_edge, label %if.end.i140

if.else91.cleanup_crit_edge:                      ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i140:                                      ; preds = %if.else91
  %73 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %port, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %shl.i.i.i135 = shl i32 %78, 8
  %or.i.i136 = or i32 %shl.i.i.i135, -2147483648
  %79 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %51, align 4
  %conv.i.i137 = zext i8 %80 to i16
  %call4.i.i138 = tail call i32 @usb_control_msg(ptr noundef %76, i32 noundef %or.i.i136, i8 noundef zeroext 21, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i137, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i138)
  %cmp.i.i139 = icmp slt i32 %call4.i.i138, 0
  br i1 %cmp.i.i139, label %cp210x_write_u16_reg.exit.thread.i142, label %cp210x_write_u16_reg.exit.i144

cp210x_write_u16_reg.exit.thread.i142:            ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i.i141 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i.i141, ptr noundef nonnull @.str.26, i32 noundef 21, i32 noundef %call4.i.i138) #11
  br label %do.end.i146

cp210x_write_u16_reg.exit.i144:                   ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i138)
  %tobool2.not.i143 = icmp eq i32 %call4.i.i138, 0
  br i1 %tobool2.not.i143, label %if.end4.i147, label %cp210x_write_u16_reg.exit.i144.do.end.i146_crit_edge

cp210x_write_u16_reg.exit.i144.do.end.i146_crit_edge: ; preds = %cp210x_write_u16_reg.exit.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i146

do.end.i146:                                      ; preds = %cp210x_write_u16_reg.exit.i144.do.end.i146_crit_edge, %cp210x_write_u16_reg.exit.thread.i142
  %dev.i145 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i145, ptr noundef nonnull @.str.42, i32 noundef %call4.i.i138) #11
  br label %cleanup

if.end4.i147:                                     ; preds = %cp210x_write_u16_reg.exit.i144
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %event_mode.i133 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %event_mode.i133, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i147, %do.end.i146, %if.else91.cleanup_crit_edge, %do.end.i131, %cp210x_write_u16_reg.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %lor.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp210x_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %cmp = icmp eq i32 %break_state, 0
  %not.cmp = xor i1 %cmp, true
  %. = zext i1 %not.cmp to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_break_ctl.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_break_ctl, %if.then3)) #7
          to label %do.end [label %if.then3], !srcloc !170

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %cond = select i1 %cmp, ptr @.str.46, ptr @.str.47
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_break_ctl.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then3, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %5, align 4
  %conv.i = zext i8 %11 to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 5, i8 noundef zeroext 65, i16 noundef zeroext %., i16 noundef zeroext %conv.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.end.cp210x_write_u16_reg.exit_crit_edge

do.end.cp210x_write_u16_reg.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_write_u16_reg.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %call4.i) #11
  br label %cp210x_write_u16_reg.exit

cp210x_write_u16_reg.exit:                        ; preds = %do.end.i, %do.end.cp210x_write_u16_reg.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cp210x_tx_empty(ptr noundef %port) #2 align 64 {
entry:
  %sts.i = alloca %struct.cp210x_comm_status, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %sts.i) #7
  %4 = call ptr @memset(ptr %sts.i, i32 255, i32 19)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 4
  %conv.i = zext i8 %8 to i16
  %call2.i = call i32 @usb_control_msg_recv(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 16, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %sts.i, i16 noundef zeroext 19, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end, label %cp210x_get_tx_queue_byte_count.exit

cp210x_get_tx_queue_byte_count.exit:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev3.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.48, i32 noundef %call2.i) #11
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %sts.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = getelementptr inbounds %struct.cp210x_comm_status, ptr %sts.i, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %sts.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cp210x_get_tx_queue_byte_count.exit
  %retval.0 = phi i1 [ %tobool1.not, %if.end ], [ true, %cp210x_get_tx_queue_byte_count.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_throttle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_unthrottle(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp210x_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %control = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %control) #7
  %2 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %control, align 1, !annotation !168
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 4
  %conv.i.i = zext i8 %10 to i16
  %call3.i.i = call i32 @usb_control_msg_recv(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i, ptr noundef nonnull %control, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end, label %cp210x_read_u8_reg.exit

cp210x_read_u8_reg.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.38, i32 noundef 8, i32 noundef 1, i32 noundef %call3.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %control, align 1
  %conv = zext i8 %12 to i32
  %and = shl nuw nsw i32 %conv, 1
  %or10 = and i32 %and, 38
  %and12 = shl nuw nsw i32 %conv, 3
  %13 = and i32 %and12, 256
  %or15 = or i32 %or10, %13
  %14 = and i32 %and, 128
  %or20 = or i32 %or15, %14
  %and22 = lshr i32 %conv, 1
  %15 = and i32 %and22, 64
  %or25 = or i32 %or20, %15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_tiocmget.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_tiocmget, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !170

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %16 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %control, align 1
  %conv31 = zext i8 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_tiocmget.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %conv31) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end, %cp210x_read_u8_reg.exit
  %retval.0 = phi i32 [ %call3.i.i, %cp210x_read_u8_reg.exit ], [ %or25, %if.then30 ], [ %or25, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %control) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp210x_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call fastcc i32 @cp210x_tiocmset_port(ptr noundef %1, i32 noundef %set, i32 noundef %clear)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_get_icount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp210x_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @cp210x_tiocmset_port(ptr noundef %port, i32 noundef 6, i32 noundef 0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @cp210x_tiocmset_port(ptr noundef %port, i32 noundef 0, i32 noundef 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp210x_process_read_urb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #7
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_mode = getelementptr inbounds %struct.cp210x_port_private, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %event_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %event_mode, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp30.not = icmp eq i32 %11, 0
  br i1 %cmp30.not, label %for.cond.preheader.if.end12_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %port7 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ch.031 = phi ptr [ %5, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %flag, align 1
  %call4 = call fastcc zeroext i1 @cp210x_process_char(ptr noundef %1, ptr noundef %ch.031, ptr noundef nonnull %flag)
  br i1 %call4, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %13 = ptrtoint ptr %ch.031 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ch.031, align 1
  %15 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flag, align 1
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i = icmp eq i8 %16, 0
  %21 = or i1 %cmp.i, %tobool.not.i
  br i1 %21, label %land.lhs.true.i, label %if.end6.if.end12.i_crit_edge

if.end6.if.end12.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end6
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 2
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp3.i = icmp slt i32 %23, %25
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  br i1 %tobool.not.i, label %if.then8.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %23
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %25
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %16, ptr %add.ptr.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then.i.if.end.i_crit_edge
  %27 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %28
  %29 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %14, ptr %add.ptr.i1.i, align 1
  br label %for.inc

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.end6.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port7, i8 noundef zeroext %14, i8 noundef zeroext %16) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end12.i, %if.end.i, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.033, 1
  %incdec.ptr = getelementptr i8, ptr %ch.031, i32 1
  %30 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %actual_length, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end12_crit_edge

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %port9 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port9, ptr noundef %5, i8 noundef zeroext 0, i32 noundef %7) #7
  br label %if.end12

if.end12:                                         ; preds = %if.else, %for.inc.if.end12_crit_edge, %for.cond.preheader.if.end12_crit_edge
  %port13 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp210x_determine_type(ptr nocapture noundef readonly %serial) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %partnum = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial, align 4
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %4 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface.i.i, align 4
  %cur_altsetting1.i.i = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cur_altsetting1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting1.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i = zext i8 %9 to i16
  %call2.i = tail call i32 @usb_control_msg_recv(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -64, i16 noundef zeroext 14091, i16 noundef zeroext %conv.i, ptr noundef %partnum, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %entry.do.body3_crit_edge, label %cp210x_read_vendor_block.exit

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

cp210x_read_vendor_block.exit:                    ; preds = %entry
  %10 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interface.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.10, i32 noundef 14091, i32 noundef 1, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %do.end, label %cp210x_read_vendor_block.exit.do.body3_crit_edge

cp210x_read_vendor_block.exit.do.body3_crit_edge: ; preds = %cp210x_read_vendor_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

do.end:                                           ; preds = %cp210x_read_vendor_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface.i.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  %14 = ptrtoint ptr %partnum to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %partnum, align 4
  br label %cleanup

do.body3:                                         ; preds = %cp210x_read_vendor_block.exit.do.body3_crit_edge, %entry.do.body3_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_determine_type.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_determine_type, %if.then7)) #7
          to label %do.end13 [label %if.then7], !srcloc !170

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interface.i.i, align 4
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %partnum to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %partnum, align 4
  %conv = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_determine_type.__UNIQUE_ID_ddebug256, ptr noundef %dev9, ptr noundef nonnull @.str.9, i32 noundef %conv) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then7, %do.body3
  %19 = ptrtoint ptr %partnum to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %partnum, align 4
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %20, label %do.end13.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 5, label %do.end13.sw.bb16_crit_edge
    i8 8, label %do.end13.sw.bb16_crit_edge42
    i8 32, label %do.end13.sw.bb18_crit_edge
    i8 33, label %do.end13.sw.bb18_crit_edge43
    i8 34, label %do.end13.sw.bb18_crit_edge44
  ]

do.end13.sw.bb18_crit_edge44:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18

do.end13.sw.bb18_crit_edge43:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18

do.end13.sw.bb18_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18

do.end13.sw.bb16_crit_edge42:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

do.end13.sw.bb16_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cp2102_determine_quirks(ptr noundef %serial)
  br label %cleanup

sw.bb16:                                          ; preds = %do.end13.sw.bb16_crit_edge, %do.end13.sw.bb16_crit_edge42
  %call17 = tail call fastcc i32 @cp210x_get_fw_version(ptr noundef %serial, i16 noundef zeroext 14)
  br label %cleanup

sw.bb18:                                          ; preds = %do.end13.sw.bb18_crit_edge, %do.end13.sw.bb18_crit_edge43, %do.end13.sw.bb18_crit_edge44
  %call19 = tail call fastcc i32 @cp210x_get_fw_version(ptr noundef %serial, i16 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %sw.bb18
  %fw_version = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65541, i32 %23)
  %cmp23 = icmp ult i32 %23, 65541
  br i1 %cmp23, label %if.then25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %no_flow_control = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %no_flow_control to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %no_flow_control, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end22.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %sw.bb16, %sw.bb, %do.end13.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp2102_determine_quirks(ptr nocapture noundef readonly %serial) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 2) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or4 = or i32 %shl.i, -2147483520
  %call5 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or4, i8 noundef zeroext -1, i8 noundef zeroext -64, i16 noundef zeroext 14091, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 2, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp eq i32 %call5, 1
  br i1 %cmp, label %do.body, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp2102_determine_quirks.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp2102_determine_quirks, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !170

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %7 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interface, align 4
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp2102_determine_quirks.__UNIQUE_ID_ddebug254, ptr noundef %dev12, ptr noundef nonnull @.str.13) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %no_event_mode = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %no_event_mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %no_event_mode, align 2
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end.if.end14_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp210x_get_fw_version(ptr nocapture noundef readonly %serial, i16 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %ver = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ver) #7
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ver, align 1, !annotation !168
  %3 = getelementptr inbounds [3 x i8], ptr %ver, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !168
  %5 = getelementptr inbounds [3 x i8], ptr %ver, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !168
  %7 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial, align 4
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %9 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface.i.i, align 4
  %cur_altsetting1.i.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cur_altsetting1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_altsetting1.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i = zext i8 %14 to i16
  %call2.i = call i32 @usb_control_msg_recv(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %conv.i, ptr noundef nonnull %ver, i16 noundef zeroext 3, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.body, label %cp210x_read_vendor_block.exit

cp210x_read_vendor_block.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interface.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  %conv4.i = zext i16 %value to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.10, i32 noundef %conv4.i, i32 noundef 3, i32 noundef %call2.i) #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_get_fw_version.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_get_fw_version, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !170

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interface.i.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ver, align 1
  %conv = zext i8 %20 to i32
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 1
  %conv8 = zext i8 %22 to i32
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %5, align 1
  %conv10 = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_get_fw_version.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %25 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ver, align 1
  %conv13 = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %conv13, 16
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %3, align 1
  %conv15 = zext i8 %28 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or = or i32 %shl16, %shl
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %5, align 1
  %conv18 = zext i8 %30 to i32
  %or19 = or i32 %or, %conv18
  %fw_version = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or19, ptr %fw_version, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cp210x_read_vendor_block.exit
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ver) #7
  ret i32 %call2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp210x_gpio_direction_get(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %gpio_input = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_input to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gpio_input, align 2
  %conv = zext i16 %3 to i32
  %shl = shl nuw i32 1, %gpio
  %and = and i32 %shl, %conv
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp210x_gpio_direction_input(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %partnum = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %partnum to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %partnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp eq i8 %3, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_pushpull = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %gpio_pushpull to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gpio_pushpull, align 2
  %conv3 = zext i16 %5 to i32
  %shl = shl nuw i32 1, %gpio
  %and = and i32 %shl, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cp210x_gpio_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef 1)
  %gpio_input = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %gpio_input to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gpio_input, align 2
  %8 = trunc i32 %shl to i16
  %conv8 = or i16 %7, %8
  store i16 %conv8, ptr %gpio_input, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp210x_gpio_direction_output(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %shl = shl nuw i32 1, %gpio
  %gpio_input = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_input to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gpio_input, align 2
  %4 = trunc i32 %shl to i16
  %5 = xor i16 %4, -1
  %conv2 = and i16 %3, %5
  store i16 %conv2, ptr %gpio_input, align 2
  tail call void @cp210x_gpio_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp210x_gpio_get(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  %mask = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mask) #7
  %interface = getelementptr inbounds %struct.usb_serial, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %call2 = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %partnum = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %partnum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %partnum, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %5, label %sw.default [
    i8 5, label %if.end.sw.epilog_crit_edge
    i8 8, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %if.end.sw.epilog_crit_edge
  %req_type.0 = phi i8 [ -64, %sw.default ], [ -63, %sw.bb3 ], [ -63, %if.end.sw.epilog_crit_edge ]
  %len.0 = phi i32 [ 1, %sw.default ], [ 2, %sw.bb3 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %mask, align 2
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %10 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interface, align 4
  %cur_altsetting1.i.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cur_altsetting1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_altsetting1.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i = zext i8 %15 to i16
  %conv1.i = trunc i32 %len.0 to i16
  %call2.i = call i32 @usb_control_msg_recv(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext %req_type.0, i16 noundef zeroext 194, i16 noundef zeroext %conv.i, ptr noundef nonnull %mask, i16 noundef zeroext %conv1.i, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %16 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interface, align 4
  br i1 %tobool.not.i, label %cp210x_read_vendor_block.exit.thread, label %cp210x_read_vendor_block.exit

cp210x_read_vendor_block.exit.thread:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @usb_autopm_put_interface(ptr noundef %17) #7
  br label %if.end8

cp210x_read_vendor_block.exit:                    ; preds = %sw.epilog
  %dev3.i = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.10, i32 noundef 194, i32 noundef %len.0, i32 noundef %call2.i) #11
  %18 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interface, align 4
  call void @usb_autopm_put_interface(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %cp210x_read_vendor_block.exit.cleanup_crit_edge, label %cp210x_read_vendor_block.exit.if.end8_crit_edge

cp210x_read_vendor_block.exit.if.end8_crit_edge:  ; preds = %cp210x_read_vendor_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

cp210x_read_vendor_block.exit.cleanup_crit_edge:  ; preds = %cp210x_read_vendor_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %cp210x_read_vendor_block.exit.if.end8_crit_edge, %cp210x_read_vendor_block.exit.thread
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mask, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21) #7
  %conv9 = zext i16 %22 to i32
  %23 = lshr i32 %conv9, %gpio
  %24 = and i32 %23, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %cp210x_read_vendor_block.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %if.end8 ], [ %call2, %entry.cleanup_crit_edge ], [ %call2.i, %cp210x_read_vendor_block.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mask) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cp210x_gpio_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  %buf16 = alloca %struct.cp210x_gpio_write16, align 2
  %buf = alloca %struct.cp210x_gpio_write, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf16) #7
  %2 = ptrtoint ptr %buf16 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %buf16, align 2, !annotation !168
  %3 = getelementptr inbounds %struct.cp210x_gpio_write16, ptr %buf16, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !168
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf, align 1, !annotation !168
  %6 = getelementptr inbounds %struct.cp210x_gpio_write, ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp = icmp eq i32 %value, 1
  %shl = shl nuw i32 1, %gpio
  %conv = trunc i32 %shl to i16
  %state.0 = select i1 %cmp, i16 %conv, i16 0
  %interface = getelementptr inbounds %struct.usb_serial, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interface, align 4
  %call4 = tail call i32 @usb_autopm_get_interface(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %entry
  %partnum = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %partnum to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %partnum, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %11, label %sw.default [
    i8 5, label %sw.bb
    i8 8, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end6
  %conv8 = trunc i32 %shl to i8
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8, ptr %buf, align 1
  %conv10 = trunc i16 %state.0 to i8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10, ptr %6, align 1
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %17 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interface, align 4
  %cur_altsetting1.i.i = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cur_altsetting1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur_altsetting1.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i = zext i8 %22 to i16
  %call2.i = call i32 @usb_control_msg_send(ptr noundef %16, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 65, i16 noundef zeroext 14305, i16 noundef zeroext %conv.i, ptr noundef nonnull %buf, i16 noundef zeroext 2, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %do.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interface, align 4
  %dev3.i = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.18, i32 noundef 14305, i32 noundef 2, i32 noundef %call2.i) #11
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %26 = ptrtoint ptr %buf16 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %buf16, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %state.0)
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %3, align 2
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call, align 4
  %31 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %interface, align 4
  %cur_altsetting1.i.i47 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %cur_altsetting1.i.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur_altsetting1.i.i47, align 4
  %bInterfaceNumber.i.i48 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %bInterfaceNumber.i.i48 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bInterfaceNumber.i.i48, align 2
  %conv.i49 = zext i8 %36 to i16
  %call2.i50 = call i32 @usb_control_msg_send(ptr noundef %30, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 65, i16 noundef zeroext 14305, i16 noundef zeroext %conv.i49, ptr noundef nonnull %buf16, i16 noundef zeroext 4, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i50)
  %tobool.not.i51 = icmp eq i32 %call2.i50, 0
  br i1 %tobool.not.i51, label %sw.bb13.sw.epilog_crit_edge, label %do.end.i53

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i53:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %interface, align 4
  %dev3.i52 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i52, ptr noundef nonnull @.str.18, i32 noundef 14305, i32 noundef 4, i32 noundef %call2.i50) #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %conv17 = zext i16 %state.0 to i32
  %shl18 = shl nuw nsw i32 %conv17, 8
  %or = or i32 %shl18, %shl
  %conv20 = trunc i32 %or to i16
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i = shl i32 %42, 8
  %or23 = or i32 %shl.i, -2147483648
  %call24 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or23, i8 noundef zeroext -1, i8 noundef zeroext 64, i16 noundef zeroext 14305, i16 noundef zeroext %conv20, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end.i53, %sw.bb13.sw.epilog_crit_edge, %do.end.i, %sw.bb.sw.epilog_crit_edge
  %result.0 = phi i32 [ %call24, %sw.default ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %call2.i, %do.end.i ], [ 0, %sw.bb13.sw.epilog_crit_edge ], [ %call2.i50, %do.end.i53 ]
  %43 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %interface, align 4
  call void @usb_autopm_put_interface(ptr noundef %44) #7
  br label %out

out:                                              ; preds = %sw.epilog, %entry.out_crit_edge
  %result.1 = phi i32 [ %call4, %entry.out_crit_edge ], [ %result.0, %sw.epilog ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1)
  %cmp26 = icmp slt i32 %result.1, 0
  br i1 %cmp26, label %do.end, label %out.if.end31_crit_edge

out.if.end31_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end:                                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %interface, align 4
  %dev30 = getelementptr inbounds %struct.usb_interface, ptr %46, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.16, i32 noundef %result.1) #11
  br label %if.end31

if.end31:                                         ; preds = %do.end, %out.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf16) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp210x_gpio_set_config(ptr noundef %gc, i32 noundef %gpio, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %trunc = trunc i32 %config to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %trunc, label %entry.if.end12_crit_edge [
    i8 8, label %land.lhs.true
    i8 6, label %land.lhs.true5
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %gpio_pushpull = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %gpio_pushpull to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %gpio_pushpull, align 2
  %conv = zext i16 %4 to i32
  %shl = shl nuw i32 1, %gpio
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true5:                                   ; preds = %entry
  %gpio_pushpull6 = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %gpio_pushpull6 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %gpio_pushpull6, align 2
  %conv7 = zext i16 %6 to i32
  %shl8 = shl nuw i32 1, %gpio
  %and9 = and i32 %shl8, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end12_crit_edge

land.lhs.true5.if.end12_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true5.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %if.end12 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp210x_gpio_init_valid_mask(ptr noundef %gc, ptr noundef %valid_mask, i32 noundef %ngpios) #2 align 64 {
entry:
  %altfunc_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %interface = getelementptr inbounds %struct.usb_serial, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %altfunc_mask) #7
  %gpio_altfunc = getelementptr inbounds %struct.cp210x_serial_private, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %gpio_altfunc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gpio_altfunc, align 4
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %altfunc_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %altfunc_mask, align 4
  call void @__bitmap_complement(ptr noundef %valid_mask, ptr noundef nonnull %altfunc_mask, i32 noundef %ngpios) #7
  %call.i = call i32 @_find_first_bit_be(ptr noundef %valid_mask, i32 noundef %ngpios) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %ngpios)
  %cmp4.i = icmp eq i32 %call.i, %ngpios
  br i1 %cmp4.i, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_gpio_init_valid_mask.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_gpio_init_valid_mask, %if.then7)) #7
          to label %if.end24 [label %if.then7], !srcloc !170

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_gpio_init_valid_mask.__UNIQUE_ID_ddebug252, ptr noundef %dev2, ptr noundef nonnull @.str.21) #7
  br label %if.end24

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_gpio_init_valid_mask.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_gpio_init_valid_mask, %if.then20)) #7
          to label %if.end24 [label %if.then20], !srcloc !170

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_gpio_init_valid_mask.__UNIQUE_ID_ddebug253, ptr noundef %dev2, ptr noundef nonnull @.str.22, i32 noundef %ngpios, ptr noundef %valid_mask) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %do.body8, %if.then7, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %altfunc_mask) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_complement(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp210x_change_speed(ptr noundef %tty, ptr noundef %port, ptr noundef readonly %old_termios) unnamed_addr #2 align 64 {
entry:
  %le32_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_ospeed, align 4
  %min_speed = getelementptr inbounds %struct.cp210x_serial_private, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %min_speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_speed, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  %max_speed = getelementptr inbounds %struct.cp210x_serial_private, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_speed, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  %use_actual_rate = getelementptr inbounds %struct.cp210x_serial_private, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %use_actual_rate to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use_actual_rate, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 366, i32 %11)
  %cmp.i = icmp ult i32 %11, 366
  %spec.select.i = select i1 %cmp.i, i32 8, i32 2
  %mul1.i = mul i32 %spec.select.i, %11
  %div211.i = lshr exact i32 %mul1.i, 1
  %add.i = add nuw i32 %div211.i, 48000000
  %div3.i = udiv i32 %add.i, %mul1.i
  %mul5.i = mul i32 %div3.i, %spec.select.i
  %div6.i = udiv i32 48000000, %mul5.i
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %11)
  %cmp9 = icmp ult i32 %11, 1000000
  br i1 %cmp9, label %if.then10, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %11)
  %cmp1.not.i = icmp ugt i32 %11, 300
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then10.cp210x_get_an205_rate.exit_crit_edge

if.then10.cp210x_get_an205_rate.exit_crit_edge:   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %11)
  %cmp1.not.1.i = icmp ugt i32 %11, 600
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.i.cp210x_get_an205_rate.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %11)
  %cmp1.not.2.i = icmp ugt i32 %11, 1200
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.1.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800, i32 %11)
  %cmp1.not.3.i = icmp ugt i32 %11, 1800
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.2.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2400, i32 %11)
  %cmp1.not.4.i = icmp ugt i32 %11, 2400
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.3.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %11)
  %cmp1.not.5.i = icmp ugt i32 %11, 4000
  br i1 %cmp1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.4.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4803, i32 %11)
  %cmp1.not.6.i = icmp ugt i32 %11, 4803
  br i1 %cmp1.not.6.i, label %for.inc.6.i, label %for.inc.5.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.5.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7207, i32 %11)
  %cmp1.not.7.i = icmp ugt i32 %11, 7207
  br i1 %cmp1.not.7.i, label %for.inc.7.i, label %for.inc.6.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.6.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9612, i32 %11)
  %cmp1.not.8.i = icmp ugt i32 %11, 9612
  br i1 %cmp1.not.8.i, label %for.inc.8.i, label %for.inc.7.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.7.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14428, i32 %11)
  %cmp1.not.9.i = icmp ugt i32 %11, 14428
  br i1 %cmp1.not.9.i, label %for.inc.9.i, label %for.inc.8.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.8.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16062, i32 %11)
  %cmp1.not.10.i = icmp ugt i32 %11, 16062
  br i1 %cmp1.not.10.i, label %for.inc.10.i, label %for.inc.9.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.9.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19250, i32 %11)
  %cmp1.not.11.i = icmp ugt i32 %11, 19250
  br i1 %cmp1.not.11.i, label %for.inc.11.i, label %for.inc.10.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.10.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.11.i:                                     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28912, i32 %11)
  %cmp1.not.12.i = icmp ugt i32 %11, 28912
  br i1 %cmp1.not.12.i, label %for.inc.12.i, label %for.inc.11.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.11.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.12.i:                                     ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 38601, i32 %11)
  %cmp1.not.13.i = icmp ugt i32 %11, 38601
  br i1 %cmp1.not.13.i, label %for.inc.13.i, label %for.inc.12.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.12.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 51558, i32 %11)
  %cmp1.not.14.i = icmp ugt i32 %11, 51558
  br i1 %cmp1.not.14.i, label %for.inc.14.i, label %for.inc.13.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.13.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.14.i:                                     ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56280, i32 %11)
  %cmp1.not.15.i = icmp ugt i32 %11, 56280
  br i1 %cmp1.not.15.i, label %for.inc.15.i, label %for.inc.14.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.14.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.15.i:                                     ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 58053, i32 %11)
  %cmp1.not.16.i = icmp ugt i32 %11, 58053
  br i1 %cmp1.not.16.i, label %for.inc.16.i, label %for.inc.15.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.15.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.16.i:                                     ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64111, i32 %11)
  %cmp1.not.17.i = icmp ugt i32 %11, 64111
  br i1 %cmp1.not.17.i, label %for.inc.17.i, label %for.inc.16.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.16.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.17.i:                                     ; preds = %for.inc.16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 77608, i32 %11)
  %cmp1.not.18.i = icmp ugt i32 %11, 77608
  br i1 %cmp1.not.18.i, label %for.inc.18.i, label %for.inc.17.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.17.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.18.i:                                     ; preds = %for.inc.17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 117028, i32 %11)
  %cmp1.not.19.i = icmp ugt i32 %11, 117028
  br i1 %cmp1.not.19.i, label %for.inc.19.i, label %for.inc.18.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.18.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.19.i:                                     ; preds = %for.inc.18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 129347, i32 %11)
  %cmp1.not.20.i = icmp ugt i32 %11, 129347
  br i1 %cmp1.not.20.i, label %for.inc.20.i, label %for.inc.19.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.19.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.20.i:                                     ; preds = %for.inc.19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 156868, i32 %11)
  %cmp1.not.21.i = icmp ugt i32 %11, 156868
  br i1 %cmp1.not.21.i, label %for.inc.21.i, label %for.inc.20.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.20.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.21.i:                                     ; preds = %for.inc.20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 237832, i32 %11)
  %cmp1.not.22.i = icmp ugt i32 %11, 237832
  br i1 %cmp1.not.22.i, label %for.inc.22.i, label %for.inc.21.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.21.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.22.i:                                     ; preds = %for.inc.21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 254234, i32 %11)
  %cmp1.not.23.i = icmp ugt i32 %11, 254234
  br i1 %cmp1.not.23.i, label %for.inc.23.i, label %for.inc.22.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.22.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.23.i:                                     ; preds = %for.inc.22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 273066, i32 %11)
  %cmp1.not.24.i = icmp ugt i32 %11, 273066
  br i1 %cmp1.not.24.i, label %for.inc.24.i, label %for.inc.23.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.23.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.24.i:                                     ; preds = %for.inc.23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 491520, i32 %11)
  %cmp1.not.25.i = icmp ugt i32 %11, 491520
  br i1 %cmp1.not.25.i, label %for.inc.25.i, label %for.inc.24.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.24.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.25.i:                                     ; preds = %for.inc.24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 567138, i32 %11)
  %cmp1.not.26.i = icmp ugt i32 %11, 567138
  br i1 %cmp1.not.26.i, label %for.inc.26.i, label %for.inc.25.i.cp210x_get_an205_rate.exit_crit_edge

for.inc.25.i.cp210x_get_an205_rate.exit_crit_edge: ; preds = %for.inc.25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cp210x_get_an205_rate.exit

for.inc.26.i:                                     ; preds = %for.inc.25.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 670254, i32 %11)
  %cmp1.not.27.i = icmp ugt i32 %11, 670254
  %spec.select.i53 = select i1 %cmp1.not.27.i, i32 28, i32 27
  br label %cp210x_get_an205_rate.exit

cp210x_get_an205_rate.exit:                       ; preds = %for.inc.26.i, %for.inc.25.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.24.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.23.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.22.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.21.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.20.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.19.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.18.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.17.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.16.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.15.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.14.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.13.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.12.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.11.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.10.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.9.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.8.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.7.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.6.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.5.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.4.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.3.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.2.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.1.i.cp210x_get_an205_rate.exit_crit_edge, %for.inc.i.cp210x_get_an205_rate.exit_crit_edge, %if.then10.cp210x_get_an205_rate.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then10.cp210x_get_an205_rate.exit_crit_edge ], [ 1, %for.inc.i.cp210x_get_an205_rate.exit_crit_edge ], [ 2, %for.inc.1.i.cp210x_get_an205_rate.exit_crit_edge ], [ 3, %for.inc.2.i.cp210x_get_an205_rate.exit_crit_edge ], [ 4, %for.inc.3.i.cp210x_get_an205_rate.exit_crit_edge ], [ 5, %for.inc.4.i.cp210x_get_an205_rate.exit_crit_edge ], [ 6, %for.inc.5.i.cp210x_get_an205_rate.exit_crit_edge ], [ 7, %for.inc.6.i.cp210x_get_an205_rate.exit_crit_edge ], [ 8, %for.inc.7.i.cp210x_get_an205_rate.exit_crit_edge ], [ 9, %for.inc.8.i.cp210x_get_an205_rate.exit_crit_edge ], [ 10, %for.inc.9.i.cp210x_get_an205_rate.exit_crit_edge ], [ 11, %for.inc.10.i.cp210x_get_an205_rate.exit_crit_edge ], [ 12, %for.inc.11.i.cp210x_get_an205_rate.exit_crit_edge ], [ 13, %for.inc.12.i.cp210x_get_an205_rate.exit_crit_edge ], [ 14, %for.inc.13.i.cp210x_get_an205_rate.exit_crit_edge ], [ 15, %for.inc.14.i.cp210x_get_an205_rate.exit_crit_edge ], [ 16, %for.inc.15.i.cp210x_get_an205_rate.exit_crit_edge ], [ 17, %for.inc.16.i.cp210x_get_an205_rate.exit_crit_edge ], [ 18, %for.inc.17.i.cp210x_get_an205_rate.exit_crit_edge ], [ 19, %for.inc.18.i.cp210x_get_an205_rate.exit_crit_edge ], [ 20, %for.inc.19.i.cp210x_get_an205_rate.exit_crit_edge ], [ 21, %for.inc.20.i.cp210x_get_an205_rate.exit_crit_edge ], [ 22, %for.inc.21.i.cp210x_get_an205_rate.exit_crit_edge ], [ 23, %for.inc.22.i.cp210x_get_an205_rate.exit_crit_edge ], [ 24, %for.inc.23.i.cp210x_get_an205_rate.exit_crit_edge ], [ 25, %for.inc.24.i.cp210x_get_an205_rate.exit_crit_edge ], [ 26, %for.inc.25.i.cp210x_get_an205_rate.exit_crit_edge ], [ %spec.select.i53, %for.inc.26.i ]
  %arrayidx2.i = getelementptr [29 x %struct.cp210x_rate], ptr @cp210x_an205_table1, i32 0, i32 %i.0.lcssa.i
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  br label %do.body

do.body:                                          ; preds = %cp210x_get_an205_rate.exit, %if.else.do.body_crit_edge, %if.then
  %baud.0 = phi i32 [ %div6.i, %if.then ], [ %15, %cp210x_get_an205_rate.exit ], [ %11, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_change_speed.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_change_speed, %if.then18)) #7
          to label %do.end [label %if.then18], !srcloc !170

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_change_speed.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %baud.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le32_val.i) #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %baud.0) #7
  %17 = ptrtoint ptr %le32_val.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %le32_val.i, align 4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %21, align 4
  %conv.i.i = zext i8 %25 to i16
  %call3.i.i = call i32 @usb_control_msg_send(ptr noundef %23, i8 noundef zeroext 0, i8 noundef zeroext 30, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i, ptr noundef nonnull %le32_val.i, i16 noundef zeroext 4, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %cp210x_write_u32_reg.exit.thread, label %do.end25

cp210x_write_u32_reg.exit.thread:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le32_val.i) #7
  br label %if.end32

do.end25:                                         ; preds = %do.end
  %dev4.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.33, i32 noundef 30, i32 noundef 4, i32 noundef %call3.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le32_val.i) #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.32, i32 noundef %baud.0) #11
  %tobool27.not = icmp eq ptr %old_termios, null
  br i1 %tobool27.not, label %do.end25.if.end32_crit_edge, label %if.then28

do.end25.if.end32_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then28:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  %c_ospeed29 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 7
  %26 = ptrtoint ptr %c_ospeed29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_ospeed29, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %do.end25.if.end32_crit_edge, %cp210x_write_u32_reg.exit.thread
  %baud.1 = phi i32 [ %27, %if.then28 ], [ 9600, %do.end25.if.end32_crit_edge ], [ %baud.0, %cp210x_write_u32_reg.exit.thread ]
  call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %baud.1, i32 noundef %baud.1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cp210x_set_flow_control(ptr nocapture noundef %tty, ptr noundef %port, ptr noundef readonly %old_termios) unnamed_addr #2 align 64 {
entry:
  %chars = alloca %struct.cp210x_special_chars, align 4
  %flow_ctl = alloca %struct.cp210x_flow_ctl, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %chars) #7
  %6 = getelementptr inbounds %struct.cp210x_special_chars, ptr %chars, i32 0, i32 4
  %7 = getelementptr inbounds %struct.cp210x_special_chars, ptr %chars, i32 0, i32 5
  %8 = call ptr @memset(ptr %chars, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %flow_ctl) #7
  %9 = getelementptr inbounds %struct.cp210x_flow_ctl, ptr %flow_ctl, i32 0, i32 1
  %10 = getelementptr inbounds %struct.cp210x_flow_ctl, ptr %flow_ctl, i32 0, i32 2
  %11 = getelementptr inbounds %struct.cp210x_flow_ctl, ptr %flow_ctl, i32 0, i32 3
  %no_flow_control = getelementptr inbounds %struct.cp210x_serial_private, ptr %3, i32 0, i32 10
  %12 = call ptr @memset(ptr %flow_ctl, i32 255, i32 16)
  %13 = ptrtoint ptr %no_flow_control to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %no_flow_control, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %15 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c_cflag, align 4
  %and = and i32 %16, 2147483647
  store i32 %and, ptr %c_cflag, align 4
  %17 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %termios, align 4
  %and3 = and i32 %18, -5121
  store i32 %and3, ptr %termios, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool4.not = icmp eq ptr %old_termios, null
  br i1 %tobool4.not, label %if.end.if.end42_crit_edge, label %land.lhs.true

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end
  %c_cflag6 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %19 = ptrtoint ptr %c_cflag6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_cflag6, align 4
  %c_cflag8 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %21 = ptrtoint ptr %c_cflag8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c_cflag8, align 4
  %23 = xor i32 %22, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp = icmp sgt i32 %23, -1
  br i1 %cmp, label %land.lhs.true10, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true10:                                  ; preds = %land.lhs.true
  %termios5 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %24 = ptrtoint ptr %termios5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %termios5, align 4
  %26 = ptrtoint ptr %old_termios to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old_termios, align 4
  %28 = xor i32 %27, %25
  %29 = and i32 %28, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %land.lhs.true24, label %land.lhs.true10.if.end42_crit_edge

land.lhs.true10.if.end42_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true24:                                  ; preds = %land.lhs.true10
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %arrayidx27 = getelementptr %struct.ktermios, ptr %old_termios, i32 0, i32 5, i32 8
  %33 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp29 = icmp eq i8 %32, %34
  br i1 %cmp29, label %land.lhs.true31, label %land.lhs.true24.if.end42_crit_edge

land.lhs.true24.if.end42_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true31:                                  ; preds = %land.lhs.true24
  %arrayidx34 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %35 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx34, align 1
  %arrayidx37 = getelementptr %struct.ktermios, ptr %old_termios, i32 0, i32 5, i32 9
  %37 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp39 = icmp eq i8 %36, %38
  br i1 %cmp39, label %land.lhs.true31.cleanup_crit_edge, label %land.lhs.true31.if.end42_crit_edge

land.lhs.true31.if.end42_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true31.if.end42_crit_edge, %land.lhs.true24.if.end42_crit_edge, %land.lhs.true10.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge, %if.end.if.end42_crit_edge
  %termios43 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %39 = ptrtoint ptr %termios43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %termios43, align 4
  %41 = and i32 %40, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %if.end42.if.end62_crit_edge, label %if.then51

if.end42.if.end62_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then51:                                        ; preds = %if.end42
  %43 = ptrtoint ptr %chars to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %chars, align 4
  %arrayidx54 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx54, align 1
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %6, align 4
  %arrayidx57 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %47 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx57, align 1
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %7, align 1
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port, align 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %53, align 4
  %conv.i = zext i8 %57 to i16
  %call3.i = call i32 @usb_control_msg_send(ptr noundef %55, i8 noundef zeroext 0, i8 noundef zeroext 25, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %chars, i16 noundef zeroext 6, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.then51.if.end62_crit_edge, label %do.end

if.then51.if.end62_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end:                                           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %dev4.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.33, i32 noundef 25, i32 noundef 6, i32 noundef %call3.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.35, i32 noundef %call3.i) #11
  br label %if.end62

if.end62:                                         ; preds = %do.end, %if.then51.if.end62_crit_edge, %if.end42.if.end62_crit_edge
  %mutex = getelementptr inbounds %struct.cp210x_port_private, ptr %5, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port, align 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %61, align 4
  %conv.i195 = zext i8 %65 to i16
  %call3.i196 = call i32 @usb_control_msg_recv(ptr noundef %63, i8 noundef zeroext 0, i8 noundef zeroext 20, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext %conv.i195, ptr noundef nonnull %flow_ctl, i16 noundef zeroext 16, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i196)
  %tobool.not.i197 = icmp eq i32 %call3.i196, 0
  br i1 %tobool.not.i197, label %if.end66, label %cp210x_read_reg_block.exit

cp210x_read_reg_block.exit:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %dev4.i198 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i198, ptr noundef nonnull @.str.38, i32 noundef 20, i32 noundef 16, i32 noundef %call3.i196) #11
  br label %out_unlock

if.end66:                                         ; preds = %if.end62
  %66 = ptrtoint ptr %flow_ctl to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flow_ctl, align 4
  %68 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %9, align 4
  %70 = and i32 %67, -1929379841
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %dtr = getelementptr inbounds %struct.cp210x_port_private, ptr %5, i32 0, i32 6
  %72 = ptrtoint ptr %dtr to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dtr, align 1, !range !169
  %74 = zext i8 %73 to i32
  %ctl_hs.0 = or i32 %71, %74
  %75 = and i32 %69, 1073741823
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  %c_cflag77 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %77 = ptrtoint ptr %c_cflag77 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %c_cflag77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %tobool79.not = icmp sgt i32 %78, -1
  %and89 = and i32 %ctl_hs.0, -123
  %or81 = or i32 %ctl_hs.0, 8
  %.sink = select i1 %tobool79.not, i32 64, i32 128
  %ctl_hs.1 = select i1 %tobool79.not, i32 %and89, i32 %or81
  %rts90 = getelementptr inbounds %struct.cp210x_port_private, ptr %5, i32 0, i32 7
  %79 = ptrtoint ptr %rts90 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %rts90, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool91.not = icmp eq i8 %80, 0
  %or93 = select i1 %tobool91.not, i32 0, i32 %.sink
  %flow_repl.1 = or i32 %76, %or93
  %81 = xor i1 %tobool79.not, true
  %82 = ptrtoint ptr %termios43 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %termios43, align 4
  %and100 = and i32 %83, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.else104, label %if.then102

if.then102:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %or103 = or i32 %flow_repl.1, 2
  %84 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -2147483648, ptr %10, align 4
  %85 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -2147483648, ptr %11, align 4
  br label %if.end106

if.else104:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %and105 = and i32 %flow_repl.1, -3
  br label %if.end106

if.end106:                                        ; preds = %if.else104, %if.then102
  %flow_repl.3 = phi i32 [ %or103, %if.then102 ], [ %and105, %if.else104 ]
  %and114 = and i32 %flow_repl.3, -2
  %and109 = lshr i32 %83, 10
  %and109.lobit = and i32 %and109, 1
  %flow_repl.4 = or i32 %and114, %and109.lobit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_set_flow_control.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_set_flow_control, %if.then121)) #7
          to label %do.end125 [label %if.then121], !srcloc !170

if.then121:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %dev122 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_set_flow_control.__UNIQUE_ID_ddebug247, ptr noundef %dev122, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %ctl_hs.1, i32 noundef %flow_repl.4) #7
  br label %do.end125

do.end125:                                        ; preds = %if.then121, %if.end106
  %86 = call i32 @llvm.bswap.i32(i32 %ctl_hs.1)
  %87 = ptrtoint ptr %flow_ctl to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %flow_ctl, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %flow_repl.4)
  %89 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %9, align 4
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %port, align 8
  %92 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %driver_data.i.i, align 4
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %91, align 4
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %93, align 4
  %conv.i201 = zext i8 %97 to i16
  %call3.i202 = call i32 @usb_control_msg_send(ptr noundef %95, i8 noundef zeroext 0, i8 noundef zeroext 19, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i201, ptr noundef nonnull %flow_ctl, i16 noundef zeroext 16, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i202)
  %tobool.not.i203 = icmp eq i32 %call3.i202, 0
  br i1 %tobool.not.i203, label %if.end131, label %cp210x_write_reg_block.exit206

cp210x_write_reg_block.exit206:                   ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  %dev4.i204 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i204, ptr noundef nonnull @.str.33, i32 noundef 19, i32 noundef 16, i32 noundef %call3.i202) #11
  br label %out_unlock

if.end131:                                        ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  %crtscts133 = getelementptr inbounds %struct.cp210x_port_private, ptr %5, i32 0, i32 5
  %frombool134 = zext i1 %81 to i8
  %98 = ptrtoint ptr %crtscts133 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %frombool134, ptr %crtscts133, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end131, %cp210x_write_reg_block.exit206, %cp210x_read_reg_block.exit
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %land.lhs.true31.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %flow_ctl) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %chars) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_hw_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp210x_tiocmset_port(ptr noundef %port, i32 noundef %set, i32 noundef %clear) unnamed_addr #2 align 64 {
entry:
  %flow_ctl = alloca %struct.cp210x_flow_ctl, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %flow_ctl) #7
  %2 = getelementptr inbounds %struct.cp210x_flow_ctl, ptr %flow_ctl, i32 0, i32 1
  %mutex = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 4
  %3 = call ptr @memset(ptr %flow_ctl, i32 255, i32 16)
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rts = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %rts to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %rts, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %control.0 = phi i16 [ 514, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and5 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dtr = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %dtr, align 1
  %6 = or i16 %control.0, 257
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge
  %control.1 = phi i16 [ %6, %if.then7 ], [ %control.0, %if.end.if.end14_crit_edge ]
  %and15 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end25_crit_edge, label %if.then17

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %rts18 = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %rts18 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %rts18, align 2
  %8 = and i16 %control.1, -515
  %9 = or i16 %8, 512
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.end14.if.end25_crit_edge
  %control.2 = phi i16 [ %9, %if.then17 ], [ %control.1, %if.end14.if.end25_crit_edge ]
  %and26 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end36_crit_edge, label %if.then28

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %dtr29 = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %dtr29 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dtr29, align 1
  %11 = and i16 %control.2, -258
  %12 = or i16 %11, 256
  br label %if.end36

if.end36:                                         ; preds = %if.then28, %if.end25.if.end36_crit_edge
  %control.3 = phi i16 [ %12, %if.then28 ], [ %control.2, %if.end25.if.end36_crit_edge ]
  %crtscts = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %crtscts to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %crtscts, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool37.not = icmp eq i8 %14, 0
  %15 = and i16 %control.3, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool41.not = icmp eq i16 %15, 0
  %or.cond = select i1 %tobool37.not, i1 true, i1 %tobool41.not
  br i1 %or.cond, label %do.body72, label %if.then42

if.then42:                                        ; preds = %if.end36
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port, align 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %19, align 4
  %conv.i = zext i8 %23 to i16
  %call3.i = call i32 @usb_control_msg_recv(ptr noundef %21, i8 noundef zeroext 0, i8 noundef zeroext 20, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %flow_ctl, i16 noundef zeroext 16, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end46, label %cp210x_read_reg_block.exit

cp210x_read_reg_block.exit:                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %dev4.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.38, i32 noundef 20, i32 noundef 16, i32 noundef %call3.i) #11
  br label %out_unlock

if.end46:                                         ; preds = %if.then42
  %24 = ptrtoint ptr %flow_ctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flow_ctl, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %2, align 4
  %28 = and i32 %25, -50331649
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %dtr48 = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %dtr48 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dtr48, align 1, !range !169
  %32 = zext i8 %31 to i32
  %ctl_hs.0 = or i32 %29, %32
  %33 = and i32 %27, 1073741823
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %rts55 = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %rts55 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rts55, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool56.not = icmp eq i8 %36, 0
  %or58 = or i32 %34, 128
  %flow_repl.0 = select i1 %tobool56.not, i32 %34, i32 %or58
  %37 = call i32 @llvm.bswap.i32(i32 %ctl_hs.0)
  %38 = ptrtoint ptr %flow_ctl to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %flow_ctl, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %flow_repl.0)
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_tiocmset_port.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_tiocmset_port, %if.then68)) #7
          to label %do.end [label %if.then68], !srcloc !170

if.then68:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_tiocmset_port.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.52, i32 noundef %ctl_hs.0, i32 noundef %flow_repl.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then68, %if.end46
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port, align 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %44, align 4
  %conv.i131 = zext i8 %48 to i16
  %call3.i132 = call i32 @usb_control_msg_send(ptr noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 19, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv.i131, ptr noundef nonnull %flow_ctl, i16 noundef zeroext 16, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i132)
  %tobool.not.i133 = icmp eq i32 %call3.i132, 0
  br i1 %tobool.not.i133, label %do.end.out_unlock_crit_edge, label %do.end.i135

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

do.end.i135:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev4.i134 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i134, ptr noundef nonnull @.str.33, i32 noundef 19, i32 noundef 16, i32 noundef %call3.i132) #11
  br label %out_unlock

do.body72:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_tiocmset_port.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_tiocmset_port, %if.then84)) #7
          to label %do.end89 [label %if.then84], !srcloc !170

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %dev85 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv86 = zext i16 %control.3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_tiocmset_port.__UNIQUE_ID_ddebug249, ptr noundef %dev85, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %conv86) #7
  br label %do.end89

do.end89:                                         ; preds = %if.then84, %do.body72
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port, align 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_data.i.i, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i.i = shl i32 %56, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %52, align 4
  %conv.i137 = zext i8 %58 to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or.i, i8 noundef zeroext 7, i8 noundef zeroext 65, i16 noundef zeroext %control.3, i16 noundef zeroext %conv.i137, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end.i138, label %do.end89.out_unlock_crit_edge

do.end89.out_unlock_crit_edge:                    ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

do.end.i138:                                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.26, i32 noundef 7, i32 noundef %call4.i) #11
  br label %out_unlock

out_unlock:                                       ; preds = %do.end.i138, %do.end89.out_unlock_crit_edge, %do.end.i135, %do.end.out_unlock_crit_edge, %cp210x_read_reg_block.exit
  %ret.0 = phi i32 [ %call3.i, %cp210x_read_reg_block.exit ], [ 0, %do.end.out_unlock_crit_edge ], [ %call3.i132, %do.end.i135 ], [ %call4.i, %do.end89.out_unlock_crit_edge ], [ %call4.i, %do.end.i138 ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %flow_ctl) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cp210x_process_char(ptr noundef %port, ptr nocapture noundef %ch, ptr nocapture noundef writeonly %flag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %event_state = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %event_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 3, label %sw.bb24
    i32 4, label %do.body27
    i32 2, label %do.body50
    i32 5, label %do.body72
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ch, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %6)
  %cmp = icmp eq i8 %6, -20
  br i1 %cmp, label %sw.bb.cleanup.sink.split_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  %7 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ch, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %8, label %do.end20 [
    i8 0, label %do.body
    i8 1, label %sw.bb3.cleanup.sink.split_crit_edge
    i8 2, label %sw.bb14
    i8 3, label %sw.bb16
  ]

sw.bb3.cleanup.sink.split_crit_edge:              ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body:                                          ; preds = %sw.bb3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_process_char.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_process_char, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !170

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_process_char.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -20, ptr %ch, align 1
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end20:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %conv4 = zext i8 %8 to i32
  %dev21 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.56, i32 noundef %conv4) #11
  br label %cleanup.sink.split

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ch, align 1
  %lsr = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %lsr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %lsr, align 4
  br label %cleanup.sink.split

do.body27:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_process_char.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_process_char, %if.then39)) #7
          to label %do.end46 [label %if.then39], !srcloc !170

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %dev40 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %lsr41 = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %lsr41 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lsr41, align 4
  %conv42 = zext i8 %15 to i32
  %16 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ch, align 1
  %conv43 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_process_char.__UNIQUE_ID_ddebug239, ptr noundef %dev40, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.54, i32 noundef %conv42, i32 noundef %conv43) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then39, %do.body27
  %lsr47 = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %lsr47 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lsr47, align 4
  %conv.i = zext i8 %19 to i32
  %and.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  %brk.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 9
  %20 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brk.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %brk.i, align 4
  br label %if.end15.sink.split.i

if.else.i:                                        ; preds = %do.end46
  %and2.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else7.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %parity.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 7
  %22 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %parity.i, align 4
  %inc6.i = add i32 %23, 1
  store i32 %inc6.i, ptr %parity.i, align 4
  br label %if.end15.sink.split.i

if.else7.i:                                       ; preds = %if.else.i
  %and9.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else7.i.if.end15.i_crit_edge, label %if.then11.i

if.else7.i.if.end15.i_crit_edge:                  ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  %frame.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 6
  %24 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame.i, align 8
  %inc13.i = add i32 %25, 1
  store i32 %inc13.i, ptr %frame.i, align 8
  br label %if.end15.sink.split.i

if.end15.sink.split.i:                            ; preds = %if.then11.i, %if.then4.i, %if.then.i
  %.sink.i = phi i8 [ 3, %if.then4.i ], [ 2, %if.then11.i ], [ 1, %if.then.i ]
  %26 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink.i, ptr %flag, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end15.sink.split.i, %if.else7.i.if.end15.i_crit_edge
  %and17.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.cleanup.sink.split_crit_edge, label %if.then19.i

if.end15.i.cleanup.sink.split_crit_edge:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then19.i:                                      ; preds = %if.end15.i
  %overrun.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 8
  %27 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %overrun.i, align 8
  %inc21.i = add i32 %28, 1
  store i32 %inc21.i, ptr %overrun.i, align 8
  %port22.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %tail.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 0, i32 8
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then19.i.if.end12.i.i_crit_edge

if.then19.i.if.end12.i.i_crit_edge:               ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %if.then19.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 2
  %35 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp3.i.i = icmp slt i32 %34, %36
  br i1 %cmp3.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %34
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %36
  %37 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 4, ptr %add.ptr.i.i.i, align 1
  %38 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %39, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %39
  %40 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %add.ptr.i1.i.i, align 1
  br label %cleanup.sink.split

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.then19.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port22.i, i8 noundef zeroext 0, i8 noundef zeroext 4) #7
  br label %cleanup.sink.split

do.body50:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_process_char.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_process_char, %if.then62)) #7
          to label %do.end67 [label %if.then62], !srcloc !170

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %dev63 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %41 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ch, align 1
  %conv64 = zext i8 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_process_char.__UNIQUE_ID_ddebug240, ptr noundef %dev63, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.54, i32 noundef %conv64) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %do.body50
  %43 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ch, align 1
  %lsr68 = getelementptr inbounds %struct.cp210x_port_private, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %lsr68 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %lsr68, align 4
  %conv.i132 = zext i8 %44 to i32
  %and.i133 = and i32 %conv.i132, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i133)
  %tobool.not.i134 = icmp eq i32 %and.i133, 0
  br i1 %tobool.not.i134, label %if.else.i140, label %if.then.i137

if.then.i137:                                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  %brk.i135 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 9
  %46 = ptrtoint ptr %brk.i135 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %brk.i135, align 4
  %inc.i136 = add i32 %47, 1
  store i32 %inc.i136, ptr %brk.i135, align 4
  br label %if.end15.sink.split.i151

if.else.i140:                                     ; preds = %do.end67
  %and2.i138 = and i32 %conv.i132, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i138)
  %tobool3.not.i139 = icmp eq i32 %and2.i138, 0
  br i1 %tobool3.not.i139, label %if.else7.i146, label %if.then4.i143

if.then4.i143:                                    ; preds = %if.else.i140
  call void @__sanitizer_cov_trace_pc() #9
  %parity.i141 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 7
  %48 = ptrtoint ptr %parity.i141 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %parity.i141, align 4
  %inc6.i142 = add i32 %49, 1
  store i32 %inc6.i142, ptr %parity.i141, align 4
  br label %if.end15.sink.split.i151

if.else7.i146:                                    ; preds = %if.else.i140
  %and9.i144 = and i32 %conv.i132, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i144)
  %tobool10.not.i145 = icmp eq i32 %and9.i144, 0
  br i1 %tobool10.not.i145, label %if.else7.i146.if.end15.i154_crit_edge, label %if.then11.i149

if.else7.i146.if.end15.i154_crit_edge:            ; preds = %if.else7.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i154

if.then11.i149:                                   ; preds = %if.else7.i146
  call void @__sanitizer_cov_trace_pc() #9
  %frame.i147 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 6
  %50 = ptrtoint ptr %frame.i147 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %frame.i147, align 8
  %inc13.i148 = add i32 %51, 1
  store i32 %inc13.i148, ptr %frame.i147, align 8
  br label %if.end15.sink.split.i151

if.end15.sink.split.i151:                         ; preds = %if.then11.i149, %if.then4.i143, %if.then.i137
  %.sink.i150 = phi i8 [ 3, %if.then4.i143 ], [ 2, %if.then11.i149 ], [ 1, %if.then.i137 ]
  %52 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %.sink.i150, ptr %flag, align 1
  br label %if.end15.i154

if.end15.i154:                                    ; preds = %if.end15.sink.split.i151, %if.else7.i146.if.end15.i154_crit_edge
  %and17.i152 = and i32 %conv.i132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i152)
  %tobool18.not.i153 = icmp eq i32 %and17.i152, 0
  br i1 %tobool18.not.i153, label %if.end15.i154.cleanup.sink.split_crit_edge, label %if.then19.i162

if.end15.i154.cleanup.sink.split_crit_edge:       ; preds = %if.end15.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then19.i162:                                   ; preds = %if.end15.i154
  %overrun.i155 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 8
  %53 = ptrtoint ptr %overrun.i155 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %overrun.i155, align 8
  %inc21.i156 = add i32 %54, 1
  store i32 %inc21.i156, ptr %overrun.i155, align 8
  %port22.i157 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %tail.i.i158 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 0, i32 8
  %55 = ptrtoint ptr %tail.i.i158 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i158, align 4
  %flags.i.i159 = getelementptr inbounds %struct.tty_buffer, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %flags.i.i159 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i.i159, align 4
  %and.i.i160 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i160)
  %tobool.not.i.i161 = icmp eq i32 %and.i.i160, 0
  br i1 %tobool.not.i.i161, label %land.lhs.true.i.i166, label %if.then19.i162.if.end12.i.i174_crit_edge

if.then19.i162.if.end12.i.i174_crit_edge:         ; preds = %if.then19.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i174

land.lhs.true.i.i166:                             ; preds = %if.then19.i162
  %used.i.i163 = getelementptr inbounds %struct.tty_buffer, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %used.i.i163 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %used.i.i163, align 4
  %size.i.i164 = getelementptr inbounds %struct.tty_buffer, ptr %56, i32 0, i32 2
  %61 = ptrtoint ptr %size.i.i164 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size.i.i164, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp3.i.i165 = icmp slt i32 %60, %62
  br i1 %cmp3.i.i165, label %if.end.i.i172, label %land.lhs.true.i.i166.if.end12.i.i174_crit_edge

land.lhs.true.i.i166.if.end12.i.i174_crit_edge:   ; preds = %land.lhs.true.i.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i174

if.end.i.i172:                                    ; preds = %land.lhs.true.i.i166
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i.i167 = getelementptr inbounds %struct.tty_buffer, ptr %56, i32 0, i32 6
  %add.ptr.i.i.i.i168 = getelementptr i8, ptr %data.i.i.i.i167, i32 %60
  %add.ptr.i.i.i169 = getelementptr i8, ptr %add.ptr.i.i.i.i168, i32 %62
  %63 = ptrtoint ptr %add.ptr.i.i.i169 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 4, ptr %add.ptr.i.i.i169, align 1
  %64 = ptrtoint ptr %used.i.i163 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %used.i.i163, align 4
  %inc.i.i170 = add i32 %65, 1
  store i32 %inc.i.i170, ptr %used.i.i163, align 4
  %add.ptr.i1.i.i171 = getelementptr i8, ptr %data.i.i.i.i167, i32 %65
  %66 = ptrtoint ptr %add.ptr.i1.i.i171 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %add.ptr.i1.i.i171, align 1
  br label %cleanup.sink.split

if.end12.i.i174:                                  ; preds = %land.lhs.true.i.i166.if.end12.i.i174_crit_edge, %if.then19.i162.if.end12.i.i174_crit_edge
  %call13.i.i173 = tail call i32 @__tty_insert_flip_char(ptr noundef %port22.i157, i8 noundef zeroext 0, i8 noundef zeroext 4) #7
  br label %cleanup.sink.split

do.body72:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cp210x_process_char.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cp210x_process_char, %if.then84)) #7
          to label %cleanup.sink.split [label %if.then84], !srcloc !170

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %dev85 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %67 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ch, align 1
  %conv86 = zext i8 %68 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cp210x_process_char.__UNIQUE_ID_ddebug241, ptr noundef %dev85, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.54, i32 noundef %conv86) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then84, %do.body72, %if.end12.i.i174, %if.end.i.i172, %if.end15.i154.cleanup.sink.split_crit_edge, %if.end12.i.i, %if.end.i.i, %if.end15.i.cleanup.sink.split_crit_edge, %sw.bb24, %do.end20, %sw.bb16, %sw.bb14, %do.end, %sw.bb3.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 4, %sw.bb24 ], [ 0, %do.end20 ], [ 5, %sw.bb16 ], [ 2, %sw.bb14 ], [ 0, %do.end ], [ 1, %sw.bb.cleanup.sink.split_crit_edge ], [ 3, %sw.bb3.cleanup.sink.split_crit_edge ], [ 0, %if.end15.i.cleanup.sink.split_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.end12.i.i ], [ 0, %if.end15.i154.cleanup.sink.split_crit_edge ], [ 0, %if.end.i.i172 ], [ 0, %if.end12.i.i174 ], [ 0, %do.body72 ], [ 0, %if.then84 ]
  %retval.0.ph = phi i1 [ true, %sw.bb24 ], [ true, %do.end20 ], [ true, %sw.bb16 ], [ true, %sw.bb14 ], [ false, %do.end ], [ true, %sw.bb.cleanup.sink.split_crit_edge ], [ true, %sw.bb3.cleanup.sink.split_crit_edge ], [ false, %if.end15.i.cleanup.sink.split_crit_edge ], [ false, %if.end.i.i ], [ false, %if.end12.i.i ], [ true, %if.end15.i154.cleanup.sink.split_crit_edge ], [ true, %if.end.i.i172 ], [ true, %if.end12.i.i174 ], [ true, %do.body72 ], [ true, %if.then84 ]
  %69 = ptrtoint ptr %event_state to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink, ptr %event_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.bb.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__initcall__kmod_cp210x__257_2162_usb_serial_module_init6, !1, !"__initcall__kmod_cp210x__257_2162_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/cp210x.c", i32 2162, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description258, !4, !"__UNIQUE_ID_description258", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/cp210x.c", i32 2164, i32 1}
!5 = !{ptr @__UNIQUE_ID_file259, !6, !"__UNIQUE_ID_file259", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/cp210x.c", i32 2165, i32 1}
!7 = !{ptr @__UNIQUE_ID_license260, !6, !"__UNIQUE_ID_license260", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @id_table, !10, !"id_table", i1 false, i1 false}
!10 = !{!"../drivers/usb/serial/cp210x.c", i32 53, i32 35}
!11 = !{ptr @serial_drivers, !12, !"serial_drivers", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/cp210x.c", i32 316, i32 41}
!13 = !{ptr @cp210x_device, !14, !"cp210x_device", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/cp210x.c", i32 288, i32 33}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/cp210x.c", i32 2141, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cp210x_attach._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @cp210x_attach._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/serial/cp210x.c", i32 2095, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cp210x_determine_type._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @cp210x_determine_type._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/cp210x.c", i32 2101, i32 2}
!31 = !{ptr @cp210x_determine_type.__UNIQUE_ID_ddebug256, !30, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/cp210x.c", i32 673, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cp210x_read_vendor_block._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cp210x_read_vendor_block._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/serial/cp210x.c", i32 2059, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cp2102_determine_quirks.__UNIQUE_ID_ddebug254, !38, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/serial/cp210x.c", i32 2078, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cp210x_get_fw_version.__UNIQUE_ID_ddebug255, !42, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!45 = !{ptr @cp210x_gpio_init.lock_key, !46, !"lock_key", i1 false, i1 false}
!46 = !{!"../drivers/usb/serial/cp210x.c", i32 1937, i32 11}
!47 = !{ptr @cp210x_gpio_init.request_key, !46, !"request_key", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/serial/cp210x.c", i32 1526, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cp210x_gpio_set._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @cp210x_gpio_set._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/serial/cp210x.c", i32 754, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cp210x_write_vendor_block._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @cp210x_write_vendor_block._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/serial/cp210x.c", i32 1603, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cp210x_gpio_init_valid_mask.__UNIQUE_ID_ddebug252, !59, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/serial/cp210x.c", i32 1605, i32 3}
!64 = !{ptr @cp210x_gpio_init_valid_mask.__UNIQUE_ID_ddebug253, !63, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!65 = !{ptr @cp210x_port_probe.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/usb/serial/cp210x.c", i32 1978, i32 2}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/serial/cp210x.c", i32 771, i32 3}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cp210x_open._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cp210x_open._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/cp210x.c", i32 697, i32 3}
!75 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cp210x_write_u16_reg._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @cp210x_write_u16_reg._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/serial/cp210x.c", i32 1289, i32 3}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @cp210x_set_termios._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @cp210x_set_termios._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/cp210x.c", i32 1059, i32 2}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @cp210x_change_speed.__UNIQUE_ID_ddebug246, !84, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/serial/cp210x.c", i32 1061, i32 3}
!89 = !{ptr @cp210x_change_speed._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cp210x_change_speed._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @cp210x_an205_table1, !92, !"cp210x_an205_table1", i1 false, i1 false}
!92 = !{!"../drivers/usb/serial/cp210x.c", i32 952, i32 33}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/serial/cp210x.c", i32 720, i32 3}
!95 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @cp210x_write_reg_block._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @cp210x_write_reg_block._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/serial/cp210x.c", i32 1160, i32 4}
!100 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @cp210x_set_flow_control._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @cp210x_set_flow_control._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/serial/cp210x.c", i32 1215, i32 2}
!105 = !{ptr @cp210x_set_flow_control.__UNIQUE_ID_ddebug247, !104, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/serial/cp210x.c", i32 644, i32 3}
!108 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @cp210x_read_reg_block._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @cp210x_read_reg_block._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/cp210x.c", i32 1088, i32 3}
!113 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cp210x_enable_event_mode._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @cp210x_enable_event_mode._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/serial/cp210x.c", i32 1103, i32 3}
!118 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @cp210x_disable_event_mode._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @cp210x_disable_event_mode._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/serial/cp210x.c", i32 1425, i32 2}
!123 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @cp210x_break_ctl.__UNIQUE_ID_ddebug251, !122, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!125 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/serial/cp210x.c", i32 926, i32 3}
!129 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @cp210x_get_tx_queue_byte_count._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @cp210x_get_tx_queue_byte_count._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/serial/cp210x.c", i32 1411, i32 2}
!134 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @cp210x_tiocmget.__UNIQUE_ID_ddebug250, !133, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/serial/cp210x.c", i32 1370, i32 3}
!138 = !{ptr @cp210x_tiocmset_port.__UNIQUE_ID_ddebug248, !137, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/serial/cp210x.c", i32 1376, i32 3}
!141 = !{ptr @cp210x_tiocmset_port.__UNIQUE_ID_ddebug249, !140, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/serial/cp210x.c", i32 839, i32 4}
!144 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @cp210x_process_char.__UNIQUE_ID_ddebug238, !143, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!146 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/serial/cp210x.c", i32 853, i32 4}
!148 = !{ptr @cp210x_process_char._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @cp210x_process_char._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/serial/cp210x.c", i32 863, i32 3}
!152 = !{ptr @cp210x_process_char.__UNIQUE_ID_ddebug239, !151, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!153 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/serial/cp210x.c", i32 869, i32 3}
!155 = !{ptr @cp210x_process_char.__UNIQUE_ID_ddebug240, !154, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/serial/cp210x.c", i32 875, i32 3}
!158 = !{ptr @cp210x_process_char.__UNIQUE_ID_ddebug241, !157, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"auto-init"}
!169 = !{i8 0, i8 2}
!170 = !{i64 2148754759, i64 2148754764, i64 2148754777, i64 2148754821, i64 2148754855, i64 2148754876}
