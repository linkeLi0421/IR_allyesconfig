; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/io_ti.c_pt.bc'
source_filename = "../drivers/usb/serial/io_ti.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.edgeport_serial = type { %struct.product_info, i8, i8, %struct.mutex, i32, ptr, %struct.delayed_work, i32, i8 }
%struct.product_info = type <{ i32, i8 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_serial_endpoints = type { i8, i8, i8, i8, [16 x ptr], [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.edgeport_port = type { i16, i16, i8, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, i8, %struct.spinlock, i32, i32 }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ti_i2c_desc = type <{ i8, i16, i8, [0 x i8] }>
%struct.firmware = type { i32, ptr, ptr }
%struct.edgeport_fw_hdr = type <{ i8, i8, i16, i16, i8 }>
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.edge_ti_manuf_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ti_i2c_firmware_rec = type { i8, i8, [0 x i8] }
%struct.ti_i2c_image_header = type <{ i16, i8 }>
%struct.ump_uart_config = type { i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.out_endpoint_desc_block = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@__initcall__kmod_io_ti__346_2742_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @edgeport_1port_device, ptr @edgeport_2port_device, ptr null], [20 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author347 = internal constant [69 x i8] c"io_ti.author=Greg Kroah-Hartman <greg@kroah.com> and David Iacovelli\00", section ".modinfo", align 1
@__UNIQUE_ID_description348 = internal constant [45 x i8] c"io_ti.description=Edgeport USB Serial Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file349 = internal constant [36 x i8] c"io_ti.file=drivers/usb/serial/io_ti\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [18 x i8] c"io_ti.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [34 x i8] c"io_ti.firmware=edgeport/down3.bin\00", section ".modinfo", align 1
@__param_str_ignore_cpu_rev = internal constant [21 x i8] c"io_ti.ignore_cpu_rev\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ignore_cpu_rev = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ignore_cpu_rev = internal constant %struct.kernel_param { ptr @__param_str_ignore_cpu_rev, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @ignore_cpu_rev } }, section "__param", align 4
@__UNIQUE_ID_ignore_cpu_revtype352 = internal constant [35 x i8] c"io_ti.parmtype=ignore_cpu_rev:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_cpu_rev353 = internal constant [78 x i8] c"io_ti.parm=ignore_cpu_rev:Ignore the cpu revision when connecting to a device\00", section ".modinfo", align 1
@__param_str_default_uart_mode = internal constant [24 x i8] c"io_ti.default_uart_mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@default_uart_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_default_uart_mode = internal constant %struct.kernel_param { ptr @__param_str_default_uart_mode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @default_uart_mode } }, section "__param", align 4
@__UNIQUE_ID_default_uart_modetype354 = internal constant [37 x i8] c"io_ti.parmtype=default_uart_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_default_uart_mode355 = internal constant [61 x i8] c"io_ti.parm=default_uart_mode:Default uart_mode, 0=RS232, ...\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"io_ti\00", [26 x i8] zeroinitializer }, align 32
@id_table_combined = internal constant { [34 x %struct.usb_device_id], [208 x i8] } { [34 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5640, i16 533, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 771, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 772, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 773, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 774, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 775, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 776, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 778, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 777, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 779, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 780, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 782, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 517, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 539, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 519, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 524, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 525, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 535, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 518, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 540, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 541, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 542, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 578, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 580, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 530, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 583, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@edgeport_1port_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @edgeport_1port_id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @edge_startup, ptr @edge_calc_num_ports, ptr @edge_disconnect, ptr @edge_release, ptr @edge_port_probe, ptr @edge_port_remove, ptr @edge_suspend, ptr @edge_resume, ptr null, ptr @edge_open, ptr @edge_close, ptr @edge_write, ptr @edge_write_room, ptr null, ptr null, ptr null, ptr @edge_set_termios, ptr @edge_break, ptr @edge_chars_in_buffer, ptr null, ptr @edge_tx_empty, ptr @edge_throttle, ptr @edge_unthrottle, ptr @edge_tiocmget, ptr @edge_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr null, ptr null, ptr null, ptr @edge_interrupt_callback, ptr null, ptr @edge_bulk_in_callback, ptr @edge_bulk_out_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@edgeport_2port_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.215, ptr @edgeport_2port_id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.216, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 2, i8 0, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @edge_startup, ptr @edge_calc_num_ports, ptr @edge_disconnect, ptr @edge_release, ptr @edge_port_probe, ptr @edge_port_remove, ptr @edge_suspend, ptr @edge_resume, ptr null, ptr @edge_open, ptr @edge_close, ptr @edge_write, ptr @edge_write_room, ptr null, ptr null, ptr null, ptr @edge_set_termios, ptr @edge_break, ptr @edge_chars_in_buffer, ptr null, ptr @edge_tx_empty, ptr @edge_throttle, ptr @edge_unthrottle, ptr @edge_tiocmget, ptr @edge_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr null, ptr null, ptr null, ptr @edge_interrupt_callback, ptr null, ptr @edge_bulk_in_callback, ptr @edge_bulk_out_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Edgeport TI 1 port adapter\00", [37 x i8] zeroinitializer }, align 32
@edgeport_1port_id_table = internal constant { [17 x %struct.usb_device_id], [104 x i8] } { [17 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5640, i16 533, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 771, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 772, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 773, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 774, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 775, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 776, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 778, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 777, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 779, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 780, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 782, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [104 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edgeport_ti_1\00", [18 x i8] zeroinitializer }, align 32
@edge_startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&edge_serial->es_lock\00", [42 x i8] zeroinitializer }, align 32
@edge_startup.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"(work_completion)(&(&edge_serial->heartbeat_work)->work)\00", [39 x i8] zeroinitializer }, align 32
@edge_startup.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&(&edge_serial->heartbeat_work)->timer\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@edge_heartbeat_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 2458, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - Incomplete heartbeat\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"edge_heartbeat_work\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/serial/io_ti.c\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@edge_heartbeat_work._entry_ptr = internal global ptr @edge_heartbeat_work._entry, section ".printk_index", align 4
@read_download_mem.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.10, ptr @.str.14, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read_download_mem\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - @ %x for %d\0A\00", [46 x i8] zeroinitializer }, align 32
@read_download_mem.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.10, ptr @.str.14, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@read_download_mem.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.10, ptr @.str.15, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - ERROR %x\0A\00", [17 x i8] zeroinitializer }, align 32
@ti_vread_sync.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.10, ptr @.str.17, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti_vread_sync\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - wanted to read %d, but only read %d\0A\00", [54 x i8] zeroinitializer }, align 32
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.19, ptr @.str.20, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@read_boot_mem.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.10, ptr @.str.15, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_boot_mem\00", [18 x i8] zeroinitializer }, align 32
@read_boot_mem.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.10, ptr @.str.22, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - start_address = %x, length = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edgeport/down3.bin\00", [45 x i8] zeroinitializer }, align 32
@download_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.10, i32 1010, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to load image \22%s\22 err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"download_fw\00", [20 x i8] zeroinitializer }, align 32
@download_fw._entry_ptr = internal global ptr @download_fw._entry, section ".printk_index", align 4
@download_fw._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.10, i32 1041, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - no interface set, error!\0A\00", [33 x i8] zeroinitializer }, align 32
@download_fw._entry_ptr.28 = internal global ptr @download_fw._entry.26, section ".printk_index", align 4
@check_fw_sanity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.10, i32 967, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"incomplete fw header\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_fw_sanity\00", [16 x i8] zeroinitializer }, align 32
@check_fw_sanity._entry_ptr = internal global ptr @check_fw_sanity._entry, section ".printk_index", align 4
@check_fw_sanity._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.10, i32 976, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad fw size (expected: %u, got: %zu)\0A\00", [58 x i8] zeroinitializer }, align 32
@check_fw_sanity._entry_ptr.33 = internal global ptr @check_fw_sanity._entry.31, section ".printk_index", align 4
@check_fw_sanity._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.10, i32 985, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bad fw checksum (expected: 0x%x, got: 0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@check_fw_sanity._entry_ptr.36 = internal global ptr @check_fw_sanity._entry.34, section ".printk_index", align 4
@choose_config.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.10, ptr @.str.38, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"choose_config\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - Number of Interfaces = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@choose_config.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.10, ptr @.str.39, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - MAX Power            = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@choose_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.10, i32 588, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - bNumInterfaces is not 1, ERROR!\0A\00", [58 x i8] zeroinitializer }, align 32
@choose_config._entry_ptr = internal global ptr @choose_config._entry, section ".printk_index", align 4
@do_download_mode.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.42, i8 1, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_download_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - RUNNING IN DOWNLOAD MODE\0A\00", [33 x i8] zeroinitializer }, align 32
@do_download_mode.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.43, i8 1, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - DOWNLOAD MODE -- BAD I2C\0A\00", [33 x i8] zeroinitializer }, align 32
@do_download_mode.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.44, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - Wrong CPU Rev %d (Must be 2)\0A\00", [61 x i8] zeroinitializer }, align 32
@do_download_mode.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.45, i8 1, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - Found Type FIRMWARE (Type 2) record\0A\00", [54 x i8] zeroinitializer }, align 32
@do_download_mode.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.46, i8 1, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s - >> FW Versions Device %d.%d  Driver %d.%d\0A\00", [48 x i8] zeroinitializer }, align 32
@do_download_mode.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.47, i8 1, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - Update I2C dld from %d.%d to %d.%d\0A\00", [55 x i8] zeroinitializer }, align 32
@do_download_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.41, ptr @.str.10, i32 1227, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - error resetting device\0A\00", [35 x i8] zeroinitializer }, align 32
@do_download_mode._entry_ptr = internal global ptr @do_download_mode._entry, section ".printk_index", align 4
@do_download_mode.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.49, i8 1, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - HARDWARE RESET\0A\00", [43 x i8] zeroinitializer }, align 32
@do_download_mode.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.50, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - HARDWARE RESET return %d\0A\00", [33 x i8] zeroinitializer }, align 32
@do_download_mode.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.51, i8 1, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s - Found Type BLANK FIRMWARE (Type F2) record\0A\00", [47 x i8] zeroinitializer }, align 32
@do_download_mode.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.52, i8 1, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - can't read header back\0A\00", [35 x i8] zeroinitializer }, align 32
@do_download_mode.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.53, i8 1, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - write download record failed\0A\00", [61 x i8] zeroinitializer }, align 32
@do_download_mode.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.54, i8 1, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - Start firmware update\0A\00", [36 x i8] zeroinitializer }, align 32
@do_download_mode.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.10, ptr @.str.55, i8 1, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - Update complete 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@do_download_mode._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.41, ptr @.str.10, i32 1363, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - UMPC_COPY_DNLD_TO_I2C failed\0A\00", [61 x i8] zeroinitializer }, align 32
@do_download_mode._entry_ptr.58 = internal global ptr @do_download_mode._entry.56, section ".printk_index", align 4
@check_i2c_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.10, i32 696, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - invalid buffer signature\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_i2c_image\00", [16 x i8] zeroinitializer }, align 32
@check_i2c_image._entry_ptr = internal global ptr @check_i2c_image._entry, section ".printk_index", align 4
@check_i2c_image.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.10, ptr @.str.61, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - structure too big, erroring out.\0A\00", [57 x i8] zeroinitializer }, align 32
@check_i2c_image.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.10, ptr @.str.62, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s Type = 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@valid_csum.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.10, ptr @.str.64, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"valid_csum\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - Mismatch %x - %x\00", [42 x i8] zeroinitializer }, align 32
@get_manuf_info.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.10, ptr @.str.66, i8 0, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_manuf_info\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - Edge Descriptor not found in I2C\0A\00", [57 x i8] zeroinitializer }, align 32
@get_manuf_info.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.10, ptr @.str.67, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - IonConfig      0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@get_manuf_info.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.10, ptr @.str.68, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - Version          %d\0A\00", [38 x i8] zeroinitializer }, align 32
@get_manuf_info.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.10, ptr @.str.69, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - Cpu/Board      0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@get_manuf_info.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.10, ptr @.str.70, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - NumPorts         %d\0A\00", [38 x i8] zeroinitializer }, align 32
@get_manuf_info.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.10, ptr @.str.71, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - NumVirtualPorts  %d\0A\00", [38 x i8] zeroinitializer }, align 32
@get_manuf_info.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.10, ptr @.str.72, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - TotalPorts       %d\0A\00", [38 x i8] zeroinitializer }, align 32
@write_boot_mem.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.10, ptr @.str.74, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write_boot_mem\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - start_sddr = %x, length = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@write_i2c_mem.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.10, ptr @.str.76, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write_i2c_mem\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s - BytesInFirstPage Addr = %x, length = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@write_i2c_mem.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.10, ptr @.str.77, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - ERROR %d\0A\00", [17 x i8] zeroinitializer }, align 32
@write_i2c_mem.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.10, ptr @.str.78, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - Page Write Addr = %x, length = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@write_i2c_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.10, i32 503, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@write_i2c_mem._entry_ptr = internal global ptr @write_i2c_mem._entry, section ".printk_index", align 4
@do_boot_mode.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.10, ptr @.str.80, i8 1, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_boot_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - RUNNING IN BOOT MODE\0A\00", [37 x i8] zeroinitializer }, align 32
@do_boot_mode.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.10, ptr @.str.81, i8 1, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - VID = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@do_boot_mode.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.10, ptr @.str.44, i8 1, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@do_boot_mode.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.10, ptr @.str.82, i8 1, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s - Downloading operational code image version %d.%d (TI UMP)\0A\00", [32 x i8] zeroinitializer }, align 32
@do_boot_mode.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.10, ptr @.str.83, i8 1, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s - Error downloading operational code image\0A\00", [49 x i8] zeroinitializer }, align 32
@do_boot_mode.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.10, ptr @.str.84, i8 1, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s - Download successful -- Device rebooting...\0A\00", [47 x i8] zeroinitializer }, align 32
@do_boot_mode.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.10, ptr @.str.85, i8 1, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - STAYING IN BOOT MODE\0A\00", [37 x i8] zeroinitializer }, align 32
@i2c_type_bootmode.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.10, ptr @.str.87, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_type_bootmode\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - read 2 status error = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_type_bootmode.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.10, ptr @.str.88, i8 0, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - read 2 data = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@i2c_type_bootmode.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.10, ptr @.str.89, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - ROM_TYPE_II\0A\00", [46 x i8] zeroinitializer }, align 32
@i2c_type_bootmode.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.10, ptr @.str.90, i8 0, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - read 3 status error = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_type_bootmode.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.10, ptr @.str.88, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@i2c_type_bootmode.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.10, ptr @.str.91, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - ROM_TYPE_III\0A\00", [45 x i8] zeroinitializer }, align 32
@i2c_type_bootmode.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.10, ptr @.str.92, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s - Unknown\0A\00", [18 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@edge_calc_num_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.10, i32 2476, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"required endpoints missing\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"edge_calc_num_ports\00", [44 x i8] zeroinitializer }, align 32
@edge_calc_num_ports._entry_ptr = internal global ptr @edge_calc_num_ports._entry, section ".printk_index", align 4
@edge_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&edge_port->ep_lock\00", [44 x i8] zeroinitializer }, align 32
@edge_port_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.10, i32 2564, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown port number\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"edge_port_probe\00", [16 x i8] zeroinitializer }, align 32
@edge_port_probe._entry_ptr = internal global ptr @edge_port_probe._entry, section ".printk_index", align 4
@edge_port_probe.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.10, ptr @.str.98, i8 2, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s - port_number = %d, uart_base = %04x, dma_address = %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@dev_attr_uart_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @uart_mode_show, ptr @uart_mode_store }, [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@uart_mode_store.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.10, ptr @.str.102, i8 2, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uart_mode_store\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: setting uart_mode = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@uart_mode_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.10, i32 2625, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - uart_mode %d is invalid\0A\00", [34 x i8] zeroinitializer }, align 32
@uart_mode_store._entry_ptr = internal global ptr @uart_mode_store._entry, section ".printk_index", align 4
@edge_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.10, i32 1851, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - cannot send clear loopback command, %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"edge_open\00", [22 x i8] zeroinitializer }, align 32
@edge_open._entry_ptr = internal global ptr @edge_open._entry, section ".printk_index", align 4
@edge_open.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.10, ptr @.str.106, i8 1, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - Sending UMPC_OPEN_PORT\0A\00", [35 x i8] zeroinitializer }, align 32
@edge_open._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.105, ptr @.str.10, i32 1878, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - cannot send open command, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@edge_open._entry_ptr.109 = internal global ptr @edge_open._entry.107, section ".printk_index", align 4
@edge_open._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.105, ptr @.str.10, i32 1886, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - cannot send start DMA command, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@edge_open._entry_ptr.112 = internal global ptr @edge_open._entry.110, section ".printk_index", align 4
@edge_open._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.105, ptr @.str.10, i32 1895, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - cannot send clear buffers command, %d\0A\00", [52 x i8] zeroinitializer }, align 32
@edge_open._entry_ptr.115 = internal global ptr @edge_open._entry.113, section ".printk_index", align 4
@edge_open._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.105, ptr @.str.10, i32 1903, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - cannot send read MSR command, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@edge_open._entry_ptr.118 = internal global ptr @edge_open._entry.116, section ".printk_index", align 4
@edge_open.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.10, ptr @.str.119, i8 1, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ShadowMSR 0x%X\0A\00", [16 x i8] zeroinitializer }, align 32
@edge_open.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.10, ptr @.str.120, i8 1, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ShadowMCR 0x%X\0A\00", [16 x i8] zeroinitializer }, align 32
@edge_open._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.105, ptr @.str.10, i32 1924, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - usb_submit_urb failed with value %d\0A\00", [54 x i8] zeroinitializer }, align 32
@edge_open._entry_ptr.123 = internal global ptr @edge_open._entry.121, section ".printk_index", align 4
@edge_open._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.105, ptr @.str.10, i32 1944, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s - read bulk usb_submit_urb failed with value %d\0A\00", [44 x i8] zeroinitializer }, align 32
@edge_open._entry_ptr.126 = internal global ptr @edge_open._entry.124, section ".printk_index", align 4
@purge_port.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.10, ptr @.str.128, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"purge_port\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - port %d, mask %x\0A\00", [41 x i8] zeroinitializer }, align 32
@edge_close.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.10, ptr @.str.130, i8 1, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edge_close\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - send umpc_close_port\0A\00", [37 x i8] zeroinitializer }, align 32
@edge_write.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.10, ptr @.str.132, i8 1, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edge_write\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - write request of 0 bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.edge_send = private unnamed_addr constant [10 x i8] c"edge_send\00", align 1
@edge_send.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@edge_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @__func__.edge_send, ptr @.str.10, i32 2056, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - failed submitting write urb, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@edge_send._entry_ptr = internal global ptr @edge_send._entry, section ".printk_index", align 4
@edge_write_room.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.10, ptr @.str.135, i8 2, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"edge_write_room\00", [16 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - returns %u\0A\00", [47 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.137, i8 2, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"change_port_settings\00", [43 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - data bits = 5\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.138, i8 2, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - data bits = 6\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.139, i8 2, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - data bits = 7\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.140, i8 2, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - data bits = 8\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.141, i8 2, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - parity = odd\0A\00", [45 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.142, i8 2, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - parity = even\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.143, i8 2, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - parity = none\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.144, i8 2, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - stop bits = 2\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.145, i8 2, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - stop bits = 1\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.146, i8 2, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - RTS/CTS is enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.147, i8 2, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - RTS/CTS is disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.148, i8 2, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s - INBOUND XON/XOFF is enabled, XON = %2x, XOFF = %2x\0A\00", [39 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.149, i8 2, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - INBOUND XON/XOFF is disabled\0A\00", [61 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.150, i8 2, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s - OUTBOUND XON/XOFF is enabled, XON = %2x, XOFF = %2x\0A\00", [38 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.151, i8 2, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - OUTBOUND XON/XOFF is disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.152, i8 2, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - baud rate = %d, wBaudRate = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.153, i8 2, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wBaudRate:   %d\0A\00", [47 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.154, i8 2, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wFlags:    0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.155, i8 2, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bDataBits:   %d\0A\00", [47 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.156, i8 2, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bParity:     %d\0A\00", [47 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.157, i8 2, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bStopBits:   %d\0A\00", [47 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.158, i8 2, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cXon:        %d\0A\00", [47 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.159, i8 2, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cXoff:       %d\0A\00", [47 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.160, i8 2, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bUartMode:   %d\0A\00", [47 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.10, ptr @.str.161, i8 2, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s - error %d when trying to write config to device\0A\00", [43 x i8] zeroinitializer }, align 32
@edge_break.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.162, ptr @.str.10, ptr @.str.163, i8 2, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edge_break\00", [21 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s - error %d sending break set/clear command.\0A\00", [48 x i8] zeroinitializer }, align 32
@edge_chars_in_buffer.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.164, ptr @.str.10, ptr @.str.135, i8 2, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edge_chars_in_buffer\00", [43 x i8] zeroinitializer }, align 32
@tx_active.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.165, ptr @.str.10, ptr @.str.166, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx_active\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - XByteCount    0x%X\0A\00", [39 x i8] zeroinitializer }, align 32
@tx_active.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.165, ptr @.str.10, ptr @.str.167, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - LSR = 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@tx_active.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.165, ptr @.str.10, ptr @.str.168, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - return %d\0A\00", [16 x i8] zeroinitializer }, align 32
@edge_throttle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.10, i32 2133, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - failed to write stop character, %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edge_throttle\00", [18 x i8] zeroinitializer }, align 32
@edge_throttle._entry_ptr = internal global ptr @edge_throttle._entry, section ".printk_index", align 4
@edge_unthrottle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.10, i32 2160, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - failed to write start character, %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"edge_unthrottle\00", [16 x i8] zeroinitializer }, align 32
@edge_unthrottle._entry_ptr = internal global ptr @edge_unthrottle._entry, section ".printk_index", align 4
@edge_unthrottle._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.10, i32 2172, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - read bulk usb_submit_urb failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@edge_unthrottle._entry_ptr.175 = internal global ptr @edge_unthrottle._entry.173, section ".printk_index", align 4
@edge_tiocmget.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.176, ptr @.str.10, ptr @.str.177, i8 2, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edge_tiocmget\00", [18 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s -- %x\0A\00", [22 x i8] zeroinitializer }, align 32
@restore_mcr.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.178, ptr @.str.10, ptr @.str.179, i8 1, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"restore_mcr\00", [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s - %x\0A\00", [23 x i8] zeroinitializer }, align 32
@edge_interrupt_callback.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.180, ptr @.str.10, ptr @.str.181, i8 1, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"edge_interrupt_callback\00", [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@edge_interrupt_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.10, i32 1645, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@edge_interrupt_callback._entry_ptr = internal global ptr @edge_interrupt_callback._entry, section ".printk_index", align 4
@edge_interrupt_callback.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.180, ptr @.str.10, ptr @.str.183, i8 1, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - no data in urb\0A\00", [43 x i8] zeroinitializer }, align 32
@edge_interrupt_callback.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.180, ptr @.str.10, ptr @.str.184, i8 1, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - expecting packet of size 2, got %d\0A\00", [55 x i8] zeroinitializer }, align 32
@edge_interrupt_callback.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.180, ptr @.str.10, ptr @.str.185, i8 1, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - port_number %d, function %d, info 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@edge_interrupt_callback._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.180, ptr @.str.10, i32 1668, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad port number %d\0A\00", [44 x i8] zeroinitializer }, align 32
@edge_interrupt_callback._entry_ptr.188 = internal global ptr @edge_interrupt_callback._entry.186, section ".printk_index", align 4
@edge_interrupt_callback.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.180, ptr @.str.10, ptr @.str.189, i8 1, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - edge_port not found\0A\00", [38 x i8] zeroinitializer }, align 32
@edge_interrupt_callback.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.180, ptr @.str.10, ptr @.str.190, i8 1, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - LSR Event Port %u LSR Status = %02x\0A\00", [54 x i8] zeroinitializer }, align 32
@edge_interrupt_callback.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.180, ptr @.str.10, ptr @.str.191, i8 1, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - ===== Port %d LSR Status = %02x ======\0A\00", [51 x i8] zeroinitializer }, align 32
@edge_interrupt_callback.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.180, ptr @.str.10, ptr @.str.192, i8 1, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.192 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - ===== Port %u MSR Status = %02x ======\0A\00", [51 x i8] zeroinitializer }, align 32
@edge_interrupt_callback._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.180, ptr @.str.10, i32 1707, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - Unknown Interrupt code from UMP %x\0A\00", [55 x i8] zeroinitializer }, align 32
@edge_interrupt_callback._entry_ptr.195 = internal global ptr @edge_interrupt_callback._entry.193, section ".printk_index", align 4
@edge_interrupt_callback._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.180, ptr @.str.10, i32 1717, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@edge_interrupt_callback._entry_ptr.198 = internal global ptr @edge_interrupt_callback._entry.196, section ".printk_index", align 4
@handle_new_lsr.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.199, ptr @.str.10, ptr @.str.200, i8 1, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.199 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_new_lsr\00", [17 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s - %02x\0A\00", [21 x i8] zeroinitializer }, align 32
@edge_tty_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.10, i32 1796, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - dropping data, %d bytes lost\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edge_tty_recv\00", [18 x i8] zeroinitializer }, align 32
@edge_tty_recv._entry_ptr = internal global ptr @edge_tty_recv._entry, section ".printk_index", align 4
@handle_new_msr.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.203, ptr @.str.10, ptr @.str.200, i8 1, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.203 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_new_msr\00", [17 x i8] zeroinitializer }, align 32
@edge_bulk_in_callback.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.204, ptr @.str.10, ptr @.str.181, i8 1, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.204 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"edge_bulk_in_callback\00", [42 x i8] zeroinitializer }, align 32
@edge_bulk_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.204, ptr @.str.10, i32 1741, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - nonzero read bulk status received: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@edge_bulk_in_callback._entry_ptr = internal global ptr @edge_bulk_in_callback._entry, section ".printk_index", align 4
@edge_bulk_in_callback._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.204, ptr @.str.10, i32 1748, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - stopping read!\0A\00", [43 x i8] zeroinitializer }, align 32
@edge_bulk_in_callback._entry_ptr.208 = internal global ptr @edge_bulk_in_callback._entry.206, section ".printk_index", align 4
@edge_bulk_in_callback.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.204, ptr @.str.10, ptr @.str.209, i8 1, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.209 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s ===== Port %u LSR Status = %02x, Data = %02x ======\0A\00", [40 x i8] zeroinitializer }, align 32
@edge_bulk_in_callback.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.204, ptr @.str.10, ptr @.str.210, i8 1, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.210 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s - close pending, dropping data on the floor\0A\00", [48 x i8] zeroinitializer }, align 32
@edge_bulk_in_callback._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.204, ptr @.str.10, i32 1785, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@edge_bulk_in_callback._entry_ptr.212 = internal global ptr @edge_bulk_in_callback._entry.211, section ".printk_index", align 4
@edge_bulk_out_callback.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.213, ptr @.str.10, ptr @.str.181, i8 1, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.213 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"edge_bulk_out_callback\00", [41 x i8] zeroinitializer }, align 32
@edge_bulk_out_callback.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@edge_bulk_out_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.213, ptr @.str.10, i32 1822, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - nonzero write bulk status received: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@edge_bulk_out_callback._entry_ptr = internal global ptr @edge_bulk_out_callback._entry, section ".printk_index", align 4
@.str.215 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Edgeport TI 2 port adapter\00", [37 x i8] zeroinitializer }, align 32
@edgeport_2port_id_table = internal constant { [18 x %struct.usb_device_id], [112 x i8] } { [18 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5640, i16 517, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 539, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 519, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 524, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 525, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 535, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 518, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 540, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 541, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 542, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 578, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 580, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 530, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 583, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [112 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edgeport_ti_2\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4610, i64 18178]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.218 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.219 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.220 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.222 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.223 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 82]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 4, i64 2, i64 7]
@__sancov_gen_cov_switch_values.225 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 82]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 82]
@__sancov_gen_cov_switch_values.228 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.229 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2738, i32 41 }
@___asan_gen_.232 = private unnamed_addr constant [15 x i8] c"ignore_cpu_rev\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 212, i32 13 }
@___asan_gen_.235 = private unnamed_addr constant [18 x i8] c"default_uart_mode\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 213, i32 12 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2742, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant [18 x i8] c"id_table_combined\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 173, i32 35 }
@___asan_gen_.244 = private unnamed_addr constant [22 x i8] c"edgeport_1port_device\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2662, i32 33 }
@___asan_gen_.247 = private unnamed_addr constant [22 x i8] c"edgeport_2port_device\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2700, i32 33 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2667, i32 18 }
@___asan_gen_.253 = private unnamed_addr constant [24 x i8] c"edgeport_1port_id_table\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 130, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2665, i32 12 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2495, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2497, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2457, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 328, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 354, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 266, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 393, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 389, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 394, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1004, i32 24 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1009, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1041, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 967, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 975, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 984, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 582, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 584, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 588, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1077, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1081, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1101, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1120, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1155, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1165, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1226, i32 5 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1235, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1243, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1282, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1329, i32 5 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1338, i32 5 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1350, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1358, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1361, i32 5 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 696, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 713, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 717, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 664, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 767, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 781, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 782, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 783, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 784, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 785, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 786, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 431, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 455, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 470, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 488, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 503, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1385, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1394, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1477, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1485, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1492, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1499, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 876, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 878, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 880, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 889, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 893, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 898, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2476, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2549, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2564, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2569, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [19 x i8] c"dev_attr_uart_mode\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2629, i32 8 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2610, i32 22 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2620, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2625, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1849, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1872, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1877, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1885, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1893, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1902, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1907, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1911, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1922, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1942, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 308, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1984, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2004, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant [23 x i8] c"edge_send.__print_once\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2054, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2086, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2237, i32 7 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2241, i32 7 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2245, i32 7 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2250, i32 7 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2258, i32 4 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2262, i32 4 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2266, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2271, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2274, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2281, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2283, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2297, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2300, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2305, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2308, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2328, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2330, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2331, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2332, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2333, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2334, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2335, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2336, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2337, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2346, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2431, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2103, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 547, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 555, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 566, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2133, i32 4 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2160, i32 4 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2170, i32 4 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2414, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1516, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1640, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1644, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1650, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1658, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1664, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1668, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1675, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1685, i32 4 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1690, i32 4 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1699, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1705, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1715, i32 3 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1590, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1795, i32 3 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1553, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1738, i32 3 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1741, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1748, i32 3 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1756, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1767, i32 4 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1785, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1817, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant [36 x i8] c"edge_bulk_out_callback.__print_once\00", align 1
@___asan_gen_.906 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 1821, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2705, i32 18 }
@___asan_gen_.915 = private unnamed_addr constant [24 x i8] c"edgeport_2port_id_table\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 150, i32 35 }
@___asan_gen_.918 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.919 = private constant [30 x i8] c"../drivers/usb/serial/io_ti.c\00", align 1
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.919, i32 2703, i32 12 }
@llvm.compiler.used = appending global [280 x ptr] [ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_default_uart_mode355, ptr @__UNIQUE_ID_default_uart_modetype354, ptr @__UNIQUE_ID_description348, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_ignore_cpu_rev353, ptr @__UNIQUE_ID_ignore_cpu_revtype352, ptr @__UNIQUE_ID_license350, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_io_ti__346_2742_usb_serial_module_init6, ptr @__param_default_uart_mode, ptr @__param_ignore_cpu_rev, ptr @check_fw_sanity._entry, ptr @check_fw_sanity._entry.31, ptr @check_fw_sanity._entry.34, ptr @check_fw_sanity._entry_ptr, ptr @check_fw_sanity._entry_ptr.33, ptr @check_fw_sanity._entry_ptr.36, ptr @check_i2c_image._entry, ptr @check_i2c_image._entry_ptr, ptr @choose_config._entry, ptr @choose_config._entry_ptr, ptr @do_download_mode._entry, ptr @do_download_mode._entry.56, ptr @do_download_mode._entry_ptr, ptr @do_download_mode._entry_ptr.58, ptr @download_fw._entry, ptr @download_fw._entry.26, ptr @download_fw._entry_ptr, ptr @download_fw._entry_ptr.28, ptr @edge_bulk_in_callback._entry, ptr @edge_bulk_in_callback._entry.206, ptr @edge_bulk_in_callback._entry.211, ptr @edge_bulk_in_callback._entry_ptr, ptr @edge_bulk_in_callback._entry_ptr.208, ptr @edge_bulk_in_callback._entry_ptr.212, ptr @edge_bulk_out_callback._entry, ptr @edge_bulk_out_callback._entry_ptr, ptr @edge_calc_num_ports._entry, ptr @edge_calc_num_ports._entry_ptr, ptr @edge_heartbeat_work._entry, ptr @edge_heartbeat_work._entry_ptr, ptr @edge_interrupt_callback._entry, ptr @edge_interrupt_callback._entry.186, ptr @edge_interrupt_callback._entry.193, ptr @edge_interrupt_callback._entry.196, ptr @edge_interrupt_callback._entry_ptr, ptr @edge_interrupt_callback._entry_ptr.188, ptr @edge_interrupt_callback._entry_ptr.195, ptr @edge_interrupt_callback._entry_ptr.198, ptr @edge_open._entry, ptr @edge_open._entry.107, ptr @edge_open._entry.110, ptr @edge_open._entry.113, ptr @edge_open._entry.116, ptr @edge_open._entry.121, ptr @edge_open._entry.124, ptr @edge_open._entry_ptr, ptr @edge_open._entry_ptr.109, ptr @edge_open._entry_ptr.112, ptr @edge_open._entry_ptr.115, ptr @edge_open._entry_ptr.118, ptr @edge_open._entry_ptr.123, ptr @edge_open._entry_ptr.126, ptr @edge_port_probe._entry, ptr @edge_port_probe._entry_ptr, ptr @edge_send._entry, ptr @edge_send._entry_ptr, ptr @edge_throttle._entry, ptr @edge_throttle._entry_ptr, ptr @edge_tty_recv._entry, ptr @edge_tty_recv._entry_ptr, ptr @edge_unthrottle._entry, ptr @edge_unthrottle._entry.173, ptr @edge_unthrottle._entry_ptr, ptr @edge_unthrottle._entry_ptr.175, ptr @uart_mode_store._entry, ptr @uart_mode_store._entry_ptr, ptr @usb_serial_module_exit, ptr @write_i2c_mem._entry, ptr @write_i2c_mem._entry_ptr, ptr @serial_drivers, ptr @ignore_cpu_rev, ptr @default_uart_mode, ptr @.str, ptr @id_table_combined, ptr @edgeport_1port_device, ptr @edgeport_2port_device, ptr @.str.1, ptr @edgeport_1port_id_table, ptr @.str.2, ptr @edge_startup.__key, ptr @.str.3, ptr @edge_startup.__key.4, ptr @.str.5, ptr @edge_startup.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @edge_port_probe.__key, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @dev_attr_uart_mode, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @edge_send.__print_once, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.194, ptr @.str.197, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @.str.213, ptr @edge_bulk_out_callback.__print_once, ptr @.str.214, ptr @.str.215, ptr @edgeport_2port_id_table, ptr @.str.216], section "llvm.metadata"
@0 = internal global [232 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ignore_cpu_rev to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_uart_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_combined to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edgeport_1port_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edgeport_2port_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edgeport_1port_id_table to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_startup.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_startup.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_heartbeat_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_fw._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fw_sanity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fw_sanity._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fw_sanity._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @choose_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_download_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_download_mode._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_i2c_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_i2c_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_calc_num_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_port_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_uart_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_mode_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_send.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_throttle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_unthrottle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_unthrottle._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_interrupt_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_interrupt_callback._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_interrupt_callback._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_interrupt_callback._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_tty_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_bulk_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_bulk_in_callback._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_bulk_in_callback._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_bulk_out_callback.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_bulk_out_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edgeport_2port_id_table to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table_combined) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_startup(ptr noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %es_lock = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %es_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @edge_startup.__key) #11
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %serial1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %serial, ptr %serial1, align 8
  %heartbeat_work = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %heartbeat_work, i32 noundef 0) #11
  %2 = ptrtoint ptr %heartbeat_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %heartbeat_work, align 4
  %lockdep_map = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @edge_startup.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry10 = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %3 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry10, ptr %entry10, align 8
  %prev.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @edge_heartbeat_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @edge_startup.__key.6) #11
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %private.i, align 4
  %call21 = tail call fastcc i32 @download_fw(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then22, label %if.end23

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end23:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp24.not = icmp eq i32 %call21, 0
  br i1 %cmp24.not, label %if.end26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %fw_version = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1104, i32 %8)
  %cmp28 = icmp sgt i32 %8, 1104
  br i1 %cmp28, label %if.then29, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then29:                                        ; preds = %if.end26
  %9 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial1, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 16, i32 8
  %13 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idProduct, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %if.then29.if.end37_crit_edge [
    i16 4610, label %if.then29.if.then35_crit_edge
    i16 18178, label %if.then29.if.then35_crit_edge59
  ]

if.then29.if.then35_crit_edge59:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.then29.if.then35_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.then29.if.end37_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then35:                                        ; preds = %if.then29.if.then35_crit_edge, %if.then29.if.then35_crit_edge59
  %use_heartbeat = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %use_heartbeat to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %use_heartbeat, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then29.if.end37_crit_edge, %if.end26.if.end37_crit_edge
  %use_heartbeat.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %use_heartbeat.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %use_heartbeat.i, align 4, !range !563
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end37.cleanup_crit_edge, label %if.end.i

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %heartbeat_work, i32 noundef 4000) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end37.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then22 ], [ -12, %entry.cleanup_crit_edge ], [ 1, %if.end23.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_calc_num_ports(ptr nocapture noundef readonly %serial, ptr nocapture noundef readonly %epds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %type = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %num_ports2 = getelementptr inbounds %struct.usb_serial_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_ports2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_ports2, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp ugt i8 %9, 1
  br i1 %cmp, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %epds to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %epds, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %5)
  %cmp7 = icmp ult i8 %11, %5
  br i1 %cmp7, label %if.then.do.end_crit_edge, label %lor.lhs.false

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then
  %num_bulk_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 1
  %12 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_bulk_out, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %5)
  %cmp11 = icmp ult i8 %13, %5
  br i1 %cmp11, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false13

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %num_interrupt_in = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 2
  %14 = ptrtoint ptr %num_interrupt_in to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_interrupt_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp15 = icmp eq i8 %15, 0
  br i1 %cmp15, label %lor.lhs.false13.do.end_crit_edge, label %lor.lhs.false13.if.end18_crit_edge

lor.lhs.false13.if.end18_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

lor.lhs.false13.do.end_crit_edge:                 ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false13.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.then.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.93) #15
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false13.if.end18_crit_edge, %entry.if.end18_crit_edge
  %conv19 = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %conv19, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_disconnect(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %heartbeat_work = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 6
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %heartbeat_work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_release(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %heartbeat_work = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 6
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %heartbeat_work) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %ep_lock, ptr noundef nonnull @.str.95, ptr noundef nonnull @edge_port_probe.__key, i16 noundef signext 3) #11
  %port2 = getelementptr inbounds %struct.edgeport_port, ptr %call7.i.i, i32 0, i32 11
  %1 = ptrtoint ptr %port2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %port, ptr %port2, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %edge_serial = getelementptr inbounds %struct.edgeport_port, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %edge_serial to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %edge_serial, align 8
  %7 = load i32, ptr @default_uart_mode, align 4
  %conv = trunc i32 %7 to i8
  %bUartMode = getelementptr inbounds %struct.edgeport_port, ptr %call7.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %bUartMode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %bUartMode, align 8
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %9 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_number, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.217)
  switch i8 %10, label %do.end10 [
    i8 0, label %do.body.do.body11_crit_edge
    i8 1, label %sw.bb5
  ]

do.body.do.body11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

sw.bb5:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

do.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #15
  br label %err

do.body11:                                        ; preds = %sw.bb5, %do.body.do.body11_crit_edge
  %.sink55 = phi i16 [ -80, %sw.bb5 ], [ -96, %do.body.do.body11_crit_edge ]
  %.sink = phi i16 [ -240, %sw.bb5 ], [ -248, %do.body.do.body11_crit_edge ]
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %.sink55, ptr %call7.i.i, align 8
  %dma_address = getelementptr inbounds %struct.edgeport_port, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %.sink, ptr %dma_address, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_port_probe.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_port_probe, %if.then16)) #11
          to label %do.end26 [label %if.then16], !srcloc !564

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %dev17 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %14 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_number, align 4
  %conv19 = zext i8 %15 to i32
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %call7.i.i, align 8
  %conv21 = zext i16 %17 to i32
  %dma_address22 = getelementptr inbounds %struct.edgeport_port, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %dma_address22 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dma_address22, align 2
  %conv23 = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_port_probe.__UNIQUE_ID_ddebug344, ptr noundef %dev17, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then16, %do.body11
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %call.i = tail call i32 @device_create_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_uart_mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %if.end30, label %do.end26.err_crit_edge

do.end26.err_crit_edge:                           ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end30:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  %drain_delay = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 18
  %21 = ptrtoint ptr %drain_delay to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %drain_delay, align 4
  br label %cleanup

err:                                              ; preds = %do.end26.err_crit_edge, %do.end10
  %ret.0 = phi i32 [ -19, %do.end10 ], [ %call.i, %do.end26.err_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end30 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_port_remove(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_uart_mode) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_suspend(ptr nocapture noundef readonly %serial, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %heartbeat_work = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 6
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %heartbeat_work) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_resume(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %use_heartbeat.i = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %use_heartbeat.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_heartbeat.i, align 4, !range !563
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.edge_heartbeat_schedule.exit_crit_edge, label %if.end.i

entry.edge_heartbeat_schedule.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %edge_heartbeat_schedule.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %heartbeat_work.i = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %heartbeat_work.i, i32 noundef 4000) #11
  br label %edge_heartbeat_schedule.exit

edge_heartbeat_schedule.exit:                     ; preds = %if.end.i, %entry.edge_heartbeat_schedule.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %port2.i = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port2.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %port_number.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %port_number.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_number.i.i, align 4
  %conv.i.i = zext i8 %13 to i16
  %add.i.i = add nuw nsw i16 %conv.i.i, 3
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  %shl.i.i.i.i = shl i32 %15, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %call1.i.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i.i, i8 noundef zeroext -121, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i)
  %tobool.not = icmp sgt i32 %call1.i.i.i, -1
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, i32 noundef %call1.i.i.i) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %tty, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %if.then7

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.then7:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.i = icmp eq ptr %17, null
  br i1 %cmp.i, label %if.then7.cond.end_crit_edge, label %if.end.i

if.then7.cond.end_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  tail call fastcc void @change_port_settings(ptr noundef nonnull %tty, ptr noundef nonnull %17, ptr noundef %termios) #11
  br label %cond.end

cond.end:                                         ; preds = %if.end.i, %if.then7.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %ump_read_timeout = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %ump_read_timeout to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 20, ptr %ump_read_timeout, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_open.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_open, %if.then20)) #11
          to label %do.end24 [label %if.then20], !srcloc !564

if.then20:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev21 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_open.__UNIQUE_ID_ddebug308, ptr noundef %dev21, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105) #11
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %cond.end
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %23 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port_number.i, align 4
  %conv.i = zext i8 %24 to i16
  %add.i = add nuw nsw i16 %conv.i, 3
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 8
  %shl.i.i.i = shl i32 %26, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 137, i16 noundef zeroext %add.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool26.not = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  %dev31 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.105, i32 noundef %call1.i.i) #15
  br label %cleanup

if.end32:                                         ; preds = %do.end24
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %port_number.i, align 4
  %conv.i215 = zext i8 %32 to i16
  %add.i216 = add nuw nsw i16 %conv.i215, 3
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 8
  %shl.i.i.i217 = shl i32 %34, 8
  %or.i.i218 = or i32 %shl.i.i.i217, -2147483648
  %call1.i.i219 = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i.i218, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add.i216, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i219)
  %tobool34.not = icmp sgt i32 %call1.i.i219, -1
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %dev39 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.105, i32 noundef %call1.i.i219) #15
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %35 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port_number.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @purge_port.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_open, %if.then.i)) #11
          to label %purge_port.exit [label %if.then.i], !srcloc !564

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i220 = zext i8 %36 to i32
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @purge_port.__UNIQUE_ID_ddebug239, ptr noundef %dev.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127, i32 noundef %conv.i220, i32 noundef 3) #11
  br label %purge_port.exit

purge_port.exit:                                  ; preds = %if.then.i, %if.end40
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %port_number.i, align 4
  %conv.i.i221 = zext i8 %42 to i16
  %add.i.i222 = add nuw nsw i16 %conv.i.i221, 3
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 8
  %shl.i.i.i.i223 = shl i32 %44, 8
  %or.i.i.i224 = or i32 %shl.i.i.i.i223, -2147483648
  %call1.i.i.i225 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i.i.i224, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext %add.i.i222, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i225)
  %tobool42.not = icmp sgt i32 %call1.i.i.i225, -1
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %purge_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev47 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.105, i32 noundef %call1.i.i.i225) #15
  br label %cleanup

if.end48:                                         ; preds = %purge_port.exit
  %shadow_msr = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %port_number.i, align 4
  %conv.i227 = zext i8 %50 to i16
  %add.i228 = add nuw nsw i16 %conv.i227, 3
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %48, align 8
  %shl.i.i.i229 = shl i32 %52, 8
  %or1.i.i = or i32 %shl.i.i.i229, -2147483520
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %48, i32 noundef %or1.i.i, i8 noundef zeroext -119, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %add.i228, ptr noundef %shadow_msr, i16 noundef zeroext 1, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %if.end48.do.end54_crit_edge, label %if.end.i.i

if.end48.do.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54

if.end.i.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i)
  %cmp4.not.i.i = icmp eq i32 %call2.i.i, 1
  br i1 %cmp4.not.i.i, label %do.body57, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_vread_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_open, %if.then10.i.i)) #11
          to label %do.end54 [label %if.then10.i.i], !srcloc !564

if.then10.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev11.i.i = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_vread_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev11.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %call2.i.i) #11
  br label %do.end54

do.end54:                                         ; preds = %if.then10.i.i, %do.body.i.i, %if.end48.do.end54_crit_edge
  %retval.0.i.i233 = phi i32 [ -70, %do.body.i.i ], [ -70, %if.then10.i.i ], [ %call2.i.i, %if.end48.do.end54_crit_edge ]
  %dev55 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.105, i32 noundef %retval.0.i.i233) #15
  br label %cleanup

do.body57:                                        ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_open.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_open, %if.then69)) #11
          to label %do.end75 [label %if.then69], !srcloc !564

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  %dev70 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %53 = ptrtoint ptr %shadow_msr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %shadow_msr, align 4
  %conv72 = zext i8 %54 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_open.__UNIQUE_ID_ddebug309, ptr noundef %dev70, ptr noundef nonnull @.str.119, i32 noundef %conv72) #11
  br label %do.end75

do.end75:                                         ; preds = %if.then69, %do.body57
  %shadow_mcr = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %shadow_mcr to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %shadow_mcr, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_open.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_open, %if.then88)) #11
          to label %do.end94 [label %if.then88], !srcloc !564

if.then88:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #13
  %dev89 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %56 = ptrtoint ptr %shadow_mcr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %shadow_mcr, align 1
  %conv91 = zext i8 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_open.__UNIQUE_ID_ddebug310, ptr noundef %dev89, ptr noundef nonnull @.str.120, i32 noundef %conv91) #11
  br label %do.end94

do.end94:                                         ; preds = %if.then88, %do.end75
  %edge_serial95 = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 10
  %58 = ptrtoint ptr %edge_serial95 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %edge_serial95, align 4
  %es_lock = getelementptr inbounds %struct.edgeport_serial, ptr %59, i32 0, i32 3
  %call96 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %es_lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %do.end94.cleanup_crit_edge

do.end94.cleanup_crit_edge:                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end99:                                         ; preds = %do.end94
  %num_ports_open = getelementptr inbounds %struct.edgeport_serial, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %num_ports_open to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_ports_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp100 = icmp eq i32 %61, 0
  br i1 %cmp100, label %if.then102, label %if.end99.if.end113_crit_edge

if.end99.if.end113_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then102:                                       ; preds = %if.end99
  %serial103 = getelementptr inbounds %struct.edgeport_serial, ptr %59, i32 0, i32 5
  %62 = ptrtoint ptr %serial103 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %serial103, align 4
  %port104 = getelementptr inbounds %struct.usb_serial, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %port104 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port104, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %interrupt_in_urb, align 4
  %context = getelementptr inbounds %struct.urb, ptr %67, i32 0, i32 27
  %68 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %59, ptr %context, align 4
  %call105 = tail call i32 @usb_submit_urb(ptr noundef %67, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then102.if.end113_crit_edge, label %do.end110

if.then102.if.end113_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

do.end110:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  %dev111 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.105, i32 noundef %call105) #15
  br label %release_es_lock

if.end113:                                        ; preds = %if.then102.if.end113_crit_edge, %if.end99.if.end113_crit_edge
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %69 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_urb, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %70, i32 0, i32 10
  %71 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pipe, align 4
  %call114 = tail call i32 @usb_clear_halt(ptr noundef %5, i32 noundef %72) #11
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %73 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read_urb, align 4
  %pipe115 = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %pipe115 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pipe115, align 4
  %call116 = tail call i32 @usb_clear_halt(ptr noundef %5, i32 noundef %76) #11
  %77 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read_urb, align 4
  %ep_read_urb_state = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 14
  %79 = ptrtoint ptr %ep_read_urb_state to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %ep_read_urb_state, align 4
  %context118 = getelementptr inbounds %struct.urb, ptr %78, i32 0, i32 27
  %80 = ptrtoint ptr %context118 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %1, ptr %context118, align 4
  %call119 = tail call i32 @usb_submit_urb(ptr noundef %78, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end126, label %do.end124

do.end124:                                        ; preds = %if.end113
  %dev125 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev125, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.105, i32 noundef %call119) #15
  %81 = ptrtoint ptr %edge_serial95 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %edge_serial95, align 4
  %num_ports_open129 = getelementptr inbounds %struct.edgeport_serial, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %num_ports_open129 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_ports_open129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp130 = icmp eq i32 %84, 0
  br i1 %cmp130, label %if.then132, label %do.end124.release_es_lock_crit_edge

do.end124.release_es_lock_crit_edge:              ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_es_lock

if.end126:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %num_ports_open to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_ports_open, align 4
  %inc = add i32 %86, 1
  store i32 %inc, ptr %num_ports_open, align 4
  br label %release_es_lock

if.then132:                                       ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %port, align 8
  %port134 = getelementptr inbounds %struct.usb_serial, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %port134 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %port134, align 4
  %interrupt_in_urb136 = getelementptr inbounds %struct.usb_serial_port, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %interrupt_in_urb136 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %interrupt_in_urb136, align 4
  tail call void @usb_kill_urb(ptr noundef %92) #11
  br label %release_es_lock

release_es_lock:                                  ; preds = %if.then132, %if.end126, %do.end124.release_es_lock_crit_edge, %do.end110
  %status.0 = phi i32 [ %call105, %do.end110 ], [ %call119, %if.then132 ], [ %call119, %do.end124.release_es_lock_crit_edge ], [ 0, %if.end126 ]
  tail call void @mutex_unlock(ptr noundef %es_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %release_es_lock, %do.end94.cleanup_crit_edge, %do.end54, %do.end46, %do.end38, %do.end30, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i.i.i, %do.end ], [ %call1.i.i, %do.end30 ], [ %call1.i.i219, %do.end38 ], [ %call1.i.i.i225, %do.end46 ], [ %retval.0.i.i233, %do.end54 ], [ %status.0, %release_es_lock ], [ -19, %entry.cleanup_crit_edge ], [ -512, %do.end94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %cmp = icmp eq ptr %3, null
  %cmp2 = icmp eq ptr %5, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %close_pending = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %close_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %close_pending, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %7 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #11
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %9 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %10) #11
  %ep_write_urb_in_use = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 15
  %11 = ptrtoint ptr %ep_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ep_write_urb_in_use, align 4
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 13
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %12 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %out, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call6) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_close.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_close, %if.then16)) #11
          to label %do.end19 [label %if.then16], !srcloc !564

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_close.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.129) #11
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %if.end
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %19 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_number.i, align 4
  %conv.i = zext i8 %20 to i16
  %add.i = add nuw nsw i16 %conv.i, 3
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 8
  %shl.i.i.i = shl i32 %22, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i.i, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  %es_lock = getelementptr inbounds %struct.edgeport_serial, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %es_lock, i32 noundef 0) #11
  %edge_serial21 = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 10
  %23 = ptrtoint ptr %edge_serial21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %edge_serial21, align 4
  %num_ports_open = getelementptr inbounds %struct.edgeport_serial, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %num_ports_open to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_ports_open, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %num_ports_open, align 4
  %27 = load ptr, ptr %edge_serial21, align 4
  %num_ports_open23 = getelementptr inbounds %struct.edgeport_serial, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %num_ports_open23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_ports_open23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp24 = icmp slt i32 %29, 1
  br i1 %cmp24, label %if.then26, label %do.end19.if.end31_crit_edge

do.end19.if.end31_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then26:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 8
  %port28 = getelementptr inbounds %struct.usb_serial, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %port28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port28, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %35) #11
  %36 = ptrtoint ptr %edge_serial21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %edge_serial21, align 4
  %num_ports_open30 = getelementptr inbounds %struct.edgeport_serial, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %num_ports_open30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %num_ports_open30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %do.end19.if.end31_crit_edge
  tail call void @mutex_unlock(ptr noundef %es_lock) #11
  %39 = ptrtoint ptr %close_pending to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %close_pending, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_write(ptr noundef %tty, ptr noundef %port, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_write.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_write, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !564

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_write.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.131) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %cmp6 = icmp eq ptr %1, null
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %close_pending = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %close_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %close_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp9 = icmp eq i32 %3, 1
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 13
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %call23 = tail call i32 @__kfifo_in(ptr noundef %write_fifo, ptr noundef %data, i32 noundef %count) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call17) #11
  tail call fastcc void @edge_send(ptr noundef %port, ptr noundef %tty)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ %call23, %if.end11 ], [ 0, %if.then4 ], [ -19, %if.end5.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %close_pending = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %close_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %close_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %do.body4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 13
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22
  %mask = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %add = add i32 %7, 1
  %8 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out, align 4
  %sub.neg = sub i32 %11, %9
  %sub11 = add i32 %add, %sub.neg
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call7) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_write_room.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_write_room, %if.then20)) #11
          to label %cleanup [label %if.then20], !srcloc !564

if.then20:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_write_room.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.134, i32 noundef %sub11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %sub11, %if.then20 ], [ %sub11, %do.body4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_set_termios(ptr noundef %tty, ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @change_port_settings(ptr noundef %tty, ptr noundef nonnull %1, ptr noundef %old_termios)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_break(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp = icmp eq i32 %break_state, -1
  %port2.i = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port2.i, align 4
  %conv3.i = zext i1 %cmp to i16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %port_number.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %port_number.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_number.i.i, align 4
  %conv.i.i = zext i8 %11 to i16
  %add.i.i = add nuw nsw i16 %conv.i.i, 3
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 8
  %shl.i.i.i.i = shl i32 %13, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %call1.i.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i.i.i, i8 noundef zeroext -120, i8 noundef zeroext 64, i16 noundef zeroext %conv3.i, i16 noundef zeroext %add.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  %14 = tail call i32 @llvm.smin.i32(i32 %call1.i.i.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i)
  %tobool.not = icmp sgt i32 %call1.i.i.i, -1
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_break.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_break, %if.then7)) #11
          to label %if.end9 [label %if.then7], !srcloc !564

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_break.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.162, i32 noundef %14) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_chars_in_buffer(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 13
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %sub = sub i32 %5, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call4) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_chars_in_buffer.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_chars_in_buffer, %if.then14)) #11
          to label %cleanup [label %if.then14], !srcloc !564

if.then14:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_chars_in_buffer.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.164, i32 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %sub, %if.then14 ], [ %sub, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @edge_tx_empty(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @tx_active(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_throttle(ptr noundef %tty) #2 align 64 {
entry:
  %stop_char = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %4 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %termios, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.end8.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end8.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stop_char) #11
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %stop_char to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %stop_char, align 1
  %close_pending.i = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %close_pending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %close_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp9.i = icmp eq i32 %10, 1
  br i1 %cmp9.i, label %if.end8.i.do.end_crit_edge, label %edge_write.exit

if.end8.i.do.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

edge_write.exit:                                  ; preds = %if.end8.i
  %ep_lock.i = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 13
  %call17.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock.i) #11
  %write_fifo.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22
  %call23.i = call i32 @__kfifo_in(ptr noundef %write_fifo.i, ptr noundef nonnull %stop_char, i32 noundef 1) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock.i, i32 noundef %call17.i) #11
  call fastcc void @edge_send(ptr noundef %1, ptr noundef %tty) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23.i)
  %cmp4 = icmp slt i32 %call23.i, 1
  br i1 %cmp4, label %edge_write.exit.do.end_crit_edge, label %edge_write.exit.if.end6_crit_edge

edge_write.exit.if.end6_crit_edge:                ; preds = %edge_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

edge_write.exit.do.end_crit_edge:                 ; preds = %edge_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %edge_write.exit.do.end_crit_edge, %if.end8.i.do.end_crit_edge
  %retval.0.i26 = phi i32 [ %call23.i, %edge_write.exit.do.end_crit_edge ], [ -19, %if.end8.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, i32 noundef %retval.0.i26) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end, %edge_write.exit.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stop_char) #11
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool10.not = icmp sgt i32 %12, -1
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  %ep_lock.i23 = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 13
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock.i23) #11
  %ep_read_urb_state.i = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %ep_read_urb_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ep_read_urb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5.i = icmp eq i32 %14, 0
  br i1 %cmp5.i, label %if.then.i, label %if.then11.stop_read.exit_crit_edge

if.then11.stop_read.exit_crit_edge:               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop_read.exit

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %ep_read_urb_state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %ep_read_urb_state.i, align 4
  br label %stop_read.exit

stop_read.exit:                                   ; preds = %if.then.i, %if.then11.stop_read.exit_crit_edge
  %shadow_mcr.i = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %shadow_mcr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shadow_mcr.i, align 1
  %18 = and i8 %17, -3
  store i8 %18, ptr %shadow_mcr.i, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock.i23, i32 noundef %call2.i) #11
  br label %cleanup

cleanup:                                          ; preds = %stop_read.exit, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_unthrottle(ptr noundef %tty) #2 align 64 {
entry:
  %start_char = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %4 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %termios, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.end8.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end8.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start_char) #11
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %start_char to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %start_char, align 1
  %close_pending.i = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %close_pending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %close_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp9.i = icmp eq i32 %10, 1
  br i1 %cmp9.i, label %if.end8.i.do.end_crit_edge, label %edge_write.exit

if.end8.i.do.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

edge_write.exit:                                  ; preds = %if.end8.i
  %ep_lock.i = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 13
  %call17.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock.i) #11
  %write_fifo.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22
  %call23.i = call i32 @__kfifo_in(ptr noundef %write_fifo.i, ptr noundef nonnull %start_char, i32 noundef 1) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock.i, i32 noundef %call17.i) #11
  call fastcc void @edge_send(ptr noundef %1, ptr noundef %tty) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23.i)
  %cmp4 = icmp slt i32 %call23.i, 1
  br i1 %cmp4, label %edge_write.exit.do.end_crit_edge, label %edge_write.exit.if.end6_crit_edge

edge_write.exit.if.end6_crit_edge:                ; preds = %edge_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

edge_write.exit.do.end_crit_edge:                 ; preds = %edge_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %edge_write.exit.do.end_crit_edge, %if.end8.i.do.end_crit_edge
  %retval.0.i37 = phi i32 [ %call23.i, %edge_write.exit.do.end_crit_edge ], [ -19, %if.end8.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172, i32 noundef %retval.0.i37) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end, %edge_write.exit.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start_char) #11
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool10.not = icmp sgt i32 %12, -1
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  %ep_lock.i34 = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 13
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock.i34) #11
  %ep_read_urb_state.i = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %ep_read_urb_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ep_read_urb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp5.i = icmp eq i32 %14, 2
  br i1 %cmp5.i, label %if.then.i, label %if.then11.restart_read.exit_crit_edge

if.then11.restart_read.exit_crit_edge:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %restart_read.exit

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %port.i = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port.i, align 4
  %read_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_urb.i, align 4
  %call7.i = call i32 @usb_submit_urb(ptr noundef %18, i32 noundef 2592) #11
  br label %restart_read.exit

restart_read.exit:                                ; preds = %if.then.i, %if.then11.restart_read.exit_crit_edge
  %status.0.i = phi i32 [ %call7.i, %if.then.i ], [ 0, %if.then11.restart_read.exit_crit_edge ]
  %19 = ptrtoint ptr %ep_read_urb_state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ep_read_urb_state.i, align 4
  %shadow_mcr.i = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %shadow_mcr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shadow_mcr.i, align 1
  %22 = or i8 %21, 2
  store i8 %22, ptr %shadow_mcr.i, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock.i34, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool13.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool13.not, label %restart_read.exit.cleanup_crit_edge, label %do.end17

restart_read.exit.cleanup_crit_edge:              ; preds = %restart_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end17:                                         ; preds = %restart_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev18 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.172, i32 noundef %status.0.i) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %restart_read.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %shadow_msr = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %shadow_msr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadow_msr, align 4
  %conv6 = zext i8 %5 to i32
  %shadow_mcr = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %shadow_mcr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shadow_mcr, align 1
  %conv7 = zext i8 %7 to i32
  %and = shl nuw nsw i32 %conv7, 1
  %or = and i32 %and, 6
  %and11 = shl nuw nsw i32 %conv6, 1
  %8 = and i32 %and11, 32
  %and15 = lshr i32 %conv6, 1
  %9 = and i32 %and15, 64
  %10 = and i32 %and11, 128
  %and23 = shl nuw nsw i32 %conv6, 3
  %11 = and i32 %and23, 256
  %or14 = or i32 %9, %8
  %or18 = or i32 %or14, %10
  %or22 = or i32 %or18, %11
  %or26 = or i32 %or22, %or
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_tiocmget.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_tiocmget, %if.then)) #11
          to label %do.end34 [label %if.then], !srcloc !564

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_tiocmget.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.176, i32 noundef %or26) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then, %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call3) #11
  ret i32 %or26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %shadow_mcr = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %shadow_mcr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadow_mcr, align 1
  %conv6 = zext i8 %5 to i32
  %and = lshr i32 %set, 1
  %and12 = lshr i32 %set, 11
  %6 = and i32 %and12, 16
  %7 = and i32 %and, 3
  %8 = or i32 %7, %6
  %9 = or i32 %8, %conv6
  %and17 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %and20 = and i32 %9, 253
  %mcr.3 = select i1 %tobool18.not, i32 %9, i32 %and20
  %and22 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %and25 = and i32 %mcr.3, 254
  %mcr.4 = select i1 %tobool23.not, i32 %mcr.3, i32 %and25
  %and27 = and i32 %clear, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %and30 = and i32 %mcr.4, 239
  %mcr.5 = select i1 %tobool28.not, i32 %mcr.4, i32 %and30
  %conv32 = trunc i32 %mcr.5 to i8
  %10 = ptrtoint ptr %shadow_mcr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv32, ptr %shadow_mcr, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call3) #11
  tail call fastcc void @restore_mcr(ptr noundef %3, i8 noundef zeroext %conv32)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_get_icount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_interrupt_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status1, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %7, label %do.end8 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge270
    i32 -108, label %entry.do.body_crit_edge271
  ]

entry.do.body_crit_edge271:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge270:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge270, %entry.do.body_crit_edge271
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then)) #11
          to label %cleanup [label %if.then], !srcloc !564

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev4, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug294, ptr noundef %dev5, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.180, i32 noundef %7) #11
  br label %cleanup

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev9 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.180, i32 noundef %7) #15
  br label %exit

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %do.body13, label %if.end31

do.body13:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then25)) #11
          to label %exit [label %if.then25], !srcloc !564

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %dev26 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %13 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev26, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug295, ptr noundef %dev27, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.180) #11
  br label %exit

if.end31:                                         ; preds = %sw.epilog
  %serial = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then.i)) #11
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !564

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev33, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.180, i32 noundef %5, i32 noundef %5, ptr noundef %3) #11
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end51, label %do.body35

do.body35:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then47)) #11
          to label %exit [label %if.then47], !srcloc !564

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug296, ptr noundef %dev33, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.180, i32 noundef %5) #11
  br label %exit

if.end51:                                         ; preds = %usb_serial_debug_data.exit
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %conv = zext i8 %20 to i32
  %21 = lshr i32 %conv, 6
  %and = and i32 %21, 1
  %and54 = and i32 %conv, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then67)) #11
          to label %do.end72 [label %if.then67], !srcloc !564

if.then67:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx68 = getelementptr i8, ptr %3, i32 1
  %22 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug297, ptr noundef %dev33, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.180, i32 noundef %and, i32 noundef %and54, i32 noundef %conv69) #11
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %if.end51
  %24 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %serial, align 4
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_ports, align 1
  %conv74 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv74)
  %cmp75.not = icmp ult i32 %and, %conv74
  br i1 %cmp75.not, label %if.end81, label %do.end80

do.end80:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.187, i32 noundef %and) #15
  br label %exit

if.end81:                                         ; preds = %do.end72
  %arrayidx84 = getelementptr %struct.usb_serial, ptr %25, i32 0, i32 12, i32 %and
  %28 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx84, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %29, i32 0, i32 32, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i, align 4
  %tobool86.not = icmp eq ptr %31, null
  br i1 %tobool86.not, label %do.body88, label %if.end104

do.body88:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then100)) #11
          to label %cleanup [label %if.then100], !srcloc !564

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug298, ptr noundef %dev33, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.180) #11
  br label %cleanup

if.end104:                                        ; preds = %if.end81
  %32 = zext i32 %and54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %and54, label %do.end169 [
    i32 3, label %sw.bb105
    i32 4, label %sw.bb147
  ]

sw.bb105:                                         ; preds = %if.end104
  %arrayidx106 = getelementptr i8, ptr %3, i32 1
  %33 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx106, align 1
  %and.i = shl i8 %34, 1
  %35 = and i8 %and.i, 2
  %36 = and i8 %and.i, 4
  %37 = and i8 %and.i, 8
  %38 = and i8 %and.i, 16
  %and28.i = lshr i8 %34, 4
  %39 = and i8 %and28.i, 1
  %40 = and i8 %34, 32
  %41 = or i8 %35, %40
  %42 = or i8 %41, %36
  %43 = or i8 %42, %37
  %44 = or i8 %43, %38
  %45 = or i8 %44, %39
  %conv108 = zext i8 %45 to i32
  %and109 = and i32 %conv108, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.body129, label %do.body112

do.body112:                                       ; preds = %sw.bb105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then124)) #11
          to label %do.end128 [label %if.then124], !srcloc !564

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug299, ptr noundef %dev33, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.180, i32 noundef %and, i32 noundef %conv108) #11
  br label %do.end128

do.end128:                                        ; preds = %if.then124, %do.body112
  %lsr_event = getelementptr inbounds %struct.edgeport_port, ptr %31, i32 0, i32 9
  %46 = ptrtoint ptr %lsr_event to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %lsr_event, align 4
  %lsr_mask = getelementptr inbounds %struct.edgeport_port, ptr %31, i32 0, i32 5
  %47 = ptrtoint ptr %lsr_mask to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %45, ptr %lsr_mask, align 1
  br label %exit

do.body129:                                       ; preds = %sw.bb105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then141)) #11
          to label %do.end145 [label %if.then141], !srcloc !564

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug300, ptr noundef %dev33, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.180, i32 noundef %and, i32 noundef %conv108) #11
  br label %do.end145

do.end145:                                        ; preds = %if.then141, %do.body129
  tail call fastcc void @handle_new_lsr(ptr noundef nonnull %31, i32 noundef 0, i8 noundef zeroext %45, i8 noundef zeroext 0)
  br label %exit

sw.bb147:                                         ; preds = %if.end104
  %arrayidx148 = getelementptr i8, ptr %3, i32 1
  %48 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx148, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then161)) #11
          to label %do.end165 [label %if.then161], !srcloc !564

if.then161:                                       ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #13
  %conv162 = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug301, ptr noundef %dev33, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.180, i32 noundef %and, i32 noundef %conv162) #11
  br label %do.end165

do.end165:                                        ; preds = %if.then161, %sw.bb147
  tail call fastcc void @handle_new_msr(ptr noundef nonnull %31, i8 noundef zeroext %49)
  br label %exit

do.end169:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  %dev170 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %50 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev170, align 4
  %dev171 = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  %arrayidx172 = getelementptr i8, ptr %3, i32 1
  %52 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx172, align 1
  %conv173 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev171, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.180, i32 noundef %conv173) #15
  br label %exit

exit:                                             ; preds = %do.end169, %do.end165, %do.end145, %do.end128, %do.end80, %if.then47, %do.body35, %if.then25, %do.body13, %do.end8
  %call175 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %exit.cleanup_crit_edge, label %do.end180

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end180:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev181 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %54 = ptrtoint ptr %dev181 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev181, align 4
  %dev182 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev182, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.180, i32 noundef %call175) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end180, %exit.cleanup_crit_edge, %if.then100, %do.body88, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_bulk_in_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %port = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %7, label %do.end9 [
    i32 -108, label %entry.do.body_crit_edge
    i32 -104, label %entry.do.body_crit_edge168
    i32 -2, label %entry.do.body_crit_edge169
    i32 0, label %if.end21
  ]

entry.do.body_crit_edge169:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge168:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge168, %entry.do.body_crit_edge169
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_in_callback, %if.then)) #11
          to label %cleanup [label %if.then], !srcloc !564

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev5 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev5, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_bulk_in_callback.__UNIQUE_ID_ddebug302, ptr noundef %dev6, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.204, i32 noundef %7) #11
  br label %cleanup

do.end9:                                          ; preds = %entry
  %dev10 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %11 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev10, align 4
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.204, i32 noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %7)
  %cond = icmp eq i32 %7, -32
  br i1 %cond, label %do.end9.do.body79_crit_edge, label %do.end18

do.end9.do.body79_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body79

do.end18:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.204) #15
  br label %cleanup

if.end21:                                         ; preds = %entry
  %port_number23 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %port_number23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_number23, align 4
  %conv = zext i8 %16 to i32
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp24.not = icmp eq i32 %18, 0
  br i1 %cmp24.not, label %if.end21.do.body79_crit_edge, label %land.lhs.true

if.end21.do.body79_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body79

land.lhs.true:                                    ; preds = %if.end21
  %lsr_event = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %lsr_event to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lsr_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not = icmp eq i32 %20, 0
  br i1 %tobool26.not, label %if.end49thread-pre-split, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  %21 = ptrtoint ptr %lsr_event to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %lsr_event, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_in_callback, %if.then41)) #11
          to label %do.end46 [label %if.then41], !srcloc !564

if.then41:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %lsr_mask = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %lsr_mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lsr_mask, align 1
  %conv42 = zext i8 %23 to i32
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %5, align 1
  %conv43 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_bulk_in_callback.__UNIQUE_ID_ddebug303, ptr noundef %dev1, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.204, i32 noundef %conv, i32 noundef %conv42, i32 noundef %conv43) #11
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %if.then27
  %lsr_mask47 = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %lsr_mask47 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lsr_mask47, align 1
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %5, align 1
  tail call fastcc void @handle_new_lsr(ptr noundef %1, i32 noundef 1, i8 noundef zeroext %27, i8 noundef zeroext %29)
  %30 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %actual_length, align 4
  %dec = add i32 %31, -1
  store i32 %dec, ptr %actual_length, align 4
  %incdec.ptr = getelementptr i8, ptr %5, i32 1
  br label %if.end49

if.end49thread-pre-split:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %actual_length, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49thread-pre-split, %do.end46
  %33 = phi i32 [ %.pr, %if.end49thread-pre-split ], [ %dec, %do.end46 ]
  %data.0 = phi ptr [ %5, %if.end49thread-pre-split ], [ %incdec.ptr, %do.end46 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool51.not = icmp eq i32 %33, 0
  br i1 %tobool51.not, label %if.end49.do.body79_crit_edge, label %if.then52

if.end49.do.body79_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body79

if.then52:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_in_callback, %if.then.i)) #11
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !564

if.then.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.204, i32 noundef %33, i32 noundef %33, ptr noundef %data.0) #11
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.then52
  %close_pending = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %close_pending to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %close_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool54.not = icmp eq i32 %35, 0
  br i1 %tobool54.not, label %if.else, label %do.body56

do.body56:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_in_callback, %if.then68)) #11
          to label %if.end74 [label %if.then68], !srcloc !564

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_bulk_in_callback.__UNIQUE_ID_ddebug304, ptr noundef %dev1, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.204) #11
  br label %if.end74

if.else:                                          ; preds = %usb_serial_debug_data.exit
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port, align 4
  %38 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %actual_length, align 4
  %port1.i = getelementptr inbounds %struct.usb_serial_port, ptr %37, i32 0, i32 1
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port1.i, ptr noundef %data.0, i8 noundef zeroext 0, i32 noundef %39) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %39, %call.i.i
  br i1 %cmp.i, label %do.end.i, label %if.else.edge_tty_recv.exit_crit_edge

if.else.edge_tty_recv.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %edge_tty_recv.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %37, i32 0, i32 32
  %sub.i = sub i32 %39, %call.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202, i32 noundef %sub.i) #15
  br label %edge_tty_recv.exit

edge_tty_recv.exit:                               ; preds = %do.end.i, %if.else.edge_tty_recv.exit_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %port1.i) #11
  br label %if.end74

if.end74:                                         ; preds = %edge_tty_recv.exit, %if.then68, %do.body56
  %40 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %actual_length, align 4
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 4
  %rx = getelementptr inbounds %struct.usb_serial_port, ptr %43, i32 0, i32 27, i32 5
  %44 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx, align 4
  %add = add i32 %45, %41
  store i32 %add, ptr %rx, align 4
  br label %do.body79

do.body79:                                        ; preds = %if.end74, %if.end49.do.body79_crit_edge, %if.end21.do.body79_crit_edge, %do.end9.do.body79_crit_edge
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 13
  %call84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %ep_read_urb_state = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 14
  %46 = ptrtoint ptr %ep_read_urb_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ep_read_urb_state, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %47, label %do.body79.if.end100.thread_crit_edge [
    i32 0, label %if.end100
    i32 1, label %if.then97
  ]

do.body79.if.end100.thread_crit_edge:             ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.thread

if.then97:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %ep_read_urb_state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %ep_read_urb_state, align 4
  br label %if.end100.thread

if.end100.thread:                                 ; preds = %if.then97, %do.body79.if.end100.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call84) #11
  br label %cleanup

if.end100:                                        ; preds = %do.body79
  %call92 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call84) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool102.not = icmp eq i32 %call92, 0
  br i1 %tobool102.not, label %if.end100.cleanup_crit_edge, label %do.end106

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.204, i32 noundef %call92) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %if.end100.cleanup_crit_edge, %if.end100.thread, %do.end18, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_bulk_out_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %ep_write_urb_in_use = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %ep_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ep_write_urb_in_use, align 4
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %5, label %do.body6 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge34
    i32 -108, label %entry.do.body_crit_edge35
  ]

entry.do.body_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge34, %entry.do.body_crit_edge35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_bulk_out_callback.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_out_callback, %if.then)) #11
          to label %cleanup [label %if.then], !srcloc !564

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_bulk_out_callback.__UNIQUE_ID_ddebug305, ptr noundef %dev5, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.213, i32 noundef %5) #11
  br label %cleanup

do.body6:                                         ; preds = %entry
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 12
  %10 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %do.body6.if.then10_crit_edge, label %lor.lhs.false

do.body6.if.then10_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

lor.lhs.false:                                    ; preds = %do.body6
  %.b32 = load i1, ptr @edge_bulk_out_callback.__print_once, align 1
  br i1 %.b32, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %do.body6.if.then10_crit_edge
  store i1 true, ptr @edge_bulk_out_callback.__print_once, align 1
  %dev14 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.213, i32 noundef %5) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then10, %lor.lhs.false.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %port18 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %call19 = tail call ptr @tty_port_tty_get(ptr noundef %port18) #11
  tail call fastcc void @edge_send(ptr noundef %1, ptr noundef %call19)
  tail call void @tty_kref_put(ptr noundef %call19) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_heartbeat_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %serial1.i.i = getelementptr i8, ptr %work, i32 -4
  %TI_I2C_Type.i.i = getelementptr i8, ptr %work, i32 -103
  %Size.i = getelementptr inbounds %struct.ti_i2c_desc, ptr %call7.i, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end3.i.do.body.i_crit_edge, %lor.lhs.false
  %start_address.0.i = phi i32 [ 2, %lor.lhs.false ], [ %add5.i, %if.end3.i.do.body.i_crit_edge ]
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %serial1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial1.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %TI_I2C_Type.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %TI_I2C_Type.i.i, align 1
  %call.i.i = tail call fastcc i32 @read_download_mem(ptr noundef %6, i32 noundef %start_address.0.i, i32 noundef 4, i8 noundef zeroext %8, ptr noundef nonnull %call7.i) #11
  br label %read_rom.exit.i

if.else.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i = tail call fastcc i32 @read_boot_mem(ptr noundef %add.ptr, i32 noundef %start_address.0.i, i32 noundef 4, ptr noundef nonnull %call7.i) #11
  br label %read_rom.exit.i

read_rom.exit.i:                                  ; preds = %if.else.i.i, %if.then.i.i
  %status.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i)
  %tobool.not.i = icmp eq i32 %status.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %read_rom.exit.i.do.end_crit_edge

read_rom.exit.i.do.end_crit_edge:                 ; preds = %read_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %read_rom.exit.i
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i = icmp eq i8 %10, 0
  br i1 %cmp.i, label %get_descriptor_addr.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %add.i = add nsw i32 %start_address.0.i, 4
  %11 = ptrtoint ptr %Size.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %Size.i, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #11
  %conv4.i = zext i16 %13 to i32
  %add5.i = add nsw i32 %add.i, %conv4.i
  %cmp6.i = icmp sgt i32 %add5.i, 16383
  br i1 %cmp6.i, label %if.end3.i.do.end_crit_edge, label %if.end3.i.do.body.i_crit_edge

if.end3.i.do.body.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end3.i.do.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

get_descriptor_addr.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_address.0.i)
  %tobool2.not = icmp eq i32 %start_address.0.i, 0
  br i1 %tobool2.not, label %get_descriptor_addr.exit.do.end_crit_edge, label %get_descriptor_addr.exit.if.end_crit_edge

get_descriptor_addr.exit.if.end_crit_edge:        ; preds = %get_descriptor_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

get_descriptor_addr.exit.do.end_crit_edge:        ; preds = %get_descriptor_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %get_descriptor_addr.exit.do.end_crit_edge, %if.end3.i.do.end_crit_edge, %read_rom.exit.i.do.end_crit_edge, %entry.do.end_crit_edge
  %serial3 = getelementptr i8, ptr %work, i32 -4
  %14 = ptrtoint ptr %serial3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial3, align 4
  %interface = getelementptr inbounds %struct.usb_serial, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %get_descriptor_addr.exit.if.end_crit_edge
  tail call void @kfree(ptr noundef %call7.i) #11
  %use_heartbeat.i = getelementptr i8, ptr %work, i32 104
  %18 = ptrtoint ptr %use_heartbeat.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %use_heartbeat.i, align 4, !range !563
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i8 = icmp eq i8 %19, 0
  br i1 %tobool.not.i8, label %if.end.edge_heartbeat_schedule.exit_crit_edge, label %if.end.i9

if.end.edge_heartbeat_schedule.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %edge_heartbeat_schedule.exit

if.end.i9:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work, i32 noundef 4000) #11
  br label %edge_heartbeat_schedule.exit

edge_heartbeat_schedule.exit:                     ; preds = %if.end.i9, %if.end.edge_heartbeat_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @download_fw(ptr nocapture noundef %serial) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %0 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial1, align 4
  %interface = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !565
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.23, ptr noundef %dev2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 4
  %7 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial1, align 4
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  %data.i = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp.i = icmp ult i32 %14, 7
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.29) #15
  br label %out

if.end.i:                                         ; preds = %if.end
  %length.i = getelementptr inbounds %struct.edgeport_fw_hdr, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %length.i, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16) #11
  %add.i = add i16 %17, 7
  %conv5.i = zext i16 %add.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv5.i)
  %cmp6.not.i = icmp eq i32 %14, %conv5.i
  br i1 %cmp6.not.i, label %for.cond.preheader.i, label %do.end11.i

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp1654.i = icmp ugt i32 %14, 7
  br i1 %cmp1654.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.32, i32 noundef %conv5.i, i32 noundef %14) #15
  br label %out

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %pos.056.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 7, %for.cond.preheader.i.for.body.i_crit_edge ]
  %checksum.055.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %12, i32 %pos.056.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %conv19.i = zext i8 %19 to i32
  %add21.i = add nuw nsw i32 %checksum.055.i, %conv19.i
  %inc.i = add nuw i32 %pos.056.i, 1
  %phi.cast.i = and i32 %add21.i, 255
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %checksum.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %phi.cast.i, %for.body.i.for.end.i_crit_edge ]
  %checksum24.i = getelementptr inbounds %struct.edgeport_fw_hdr, ptr %12, i32 0, i32 4
  %20 = ptrtoint ptr %checksum24.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %checksum24.i, align 1
  %conv25.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %checksum.0.lcssa.i, i32 %conv25.i)
  %cmp26.not.i = icmp eq i32 %checksum.0.lcssa.i, %conv25.i
  br i1 %cmp26.not.i, label %if.end7, label %do.end31.i

do.end31.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.35, i32 noundef %conv25.i, i32 noundef %checksum.0.lcssa.i) #15
  br label %out

if.end7:                                          ; preds = %for.end.i
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv = zext i8 %27 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %minor_version = getelementptr inbounds %struct.edgeport_fw_hdr, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %minor_version to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %minor_version, align 1
  %conv8 = zext i8 %29 to i32
  %add = or i32 %shl, %conv8
  %fw_version = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 7
  %30 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %fw_version, align 4
  %hardware_type = getelementptr inbounds %struct.product_info, ptr %serial, i32 0, i32 1
  %31 = ptrtoint ptr %hardware_type to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %hardware_type, align 4
  %TI_I2C_Type = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 1
  %32 = ptrtoint ptr %TI_I2C_Type to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -126, ptr %TI_I2C_Type, align 1
  %33 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %serial1, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @choose_config.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@download_fw, %if.then.i)) #11
          to label %do.body4.i [label %if.then.i], !srcloc !564

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  %config.i = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config.i, align 8
  %bNumInterfaces.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %bNumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bNumInterfaces.i, align 4
  %conv.i = zext i8 %40 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @choose_config.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %conv.i) #11
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i, %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @choose_config.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@download_fw, %if.then16.i)) #11
          to label %do.end22.i [label %if.then16.i], !srcloc !564

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev17.i = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  %config18.i = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 19
  %41 = ptrtoint ptr %config18.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config18.i, align 8
  %bMaxPower.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %bMaxPower.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bMaxPower.i, align 4
  %conv20.i = zext i8 %44 to i32
  %mul.i = shl nuw nsw i32 %conv20.i, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @choose_config.__UNIQUE_ID_ddebug253, ptr noundef %dev17.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %mul.i) #11
  br label %do.end22.i

do.end22.i:                                       ; preds = %if.then16.i, %do.body4.i
  %config23.i = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 19
  %45 = ptrtoint ptr %config23.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config23.i, align 8
  %bNumInterfaces25.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %bNumInterfaces25.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bNumInterfaces25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp.not.i = icmp eq i8 %48, 1
  br i1 %cmp.not.i, label %if.end14, label %choose_config.exit

choose_config.exit:                               ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev31.i = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.37) #15
  br label %out

if.end14:                                         ; preds = %do.end22.i
  %49 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %serial1, align 4
  %interface16 = getelementptr inbounds %struct.usb_serial, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %interface16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %interface16, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_altsetting, align 4
  %tobool17.not = icmp eq ptr %54, null
  br i1 %tobool17.not, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #15
  br label %out

if.end22:                                         ; preds = %if.end14
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bNumEndpoints, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp = icmp ugt i8 %56, 1
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %serial, align 4
  %58 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fw, align 4
  %call27 = call fastcc i32 @do_download_mode(ptr noundef %serial, ptr noundef %59)
  br label %out

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %serial, align 4
  %61 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fw, align 4
  %call30 = call fastcc i32 @do_boot_mode(ptr noundef %serial, ptr noundef %62)
  br label %out

out:                                              ; preds = %if.else, %if.then25, %do.end21, %choose_config.exit, %do.end31.i, %do.end11.i, %do.end.i
  %status.0 = phi i32 [ -19, %choose_config.exit ], [ %call27, %if.then25 ], [ %call30, %if.else ], [ -19, %do.end21 ], [ -22, %do.end.i ], [ -22, %do.end11.i ], [ -22, %do.end31.i ]
  %63 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %64) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %status.0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_descriptor_addr(ptr nocapture noundef %serial, i32 noundef %desc_type, ptr noundef %rom_desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial1.i = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %TI_I2C_Type.i = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 1
  %Size = getelementptr inbounds %struct.ti_i2c_desc, ptr %rom_desc, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end3.do.body_crit_edge, %entry
  %start_address.0 = phi i32 [ 2, %entry ], [ %add5, %if.end3.do.body_crit_edge ]
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %serial1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %TI_I2C_Type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %TI_I2C_Type.i, align 1
  %call.i = tail call fastcc i32 @read_download_mem(ptr noundef %5, i32 noundef %start_address.0, i32 noundef 4, i8 noundef zeroext %7, ptr noundef %rom_desc) #11
  br label %read_rom.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call fastcc i32 @read_boot_mem(ptr noundef %serial, i32 noundef %start_address.0, i32 noundef 4, ptr noundef %rom_desc) #11
  br label %read_rom.exit

read_rom.exit:                                    ; preds = %if.else.i, %if.then.i
  %status.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool.not, label %if.end, label %read_rom.exit.cleanup_crit_edge

read_rom.exit.cleanup_crit_edge:                  ; preds = %read_rom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %read_rom.exit
  %8 = ptrtoint ptr %rom_desc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rom_desc, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %desc_type)
  %cmp = icmp eq i32 %conv, %desc_type
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add = add nsw i32 %start_address.0, 4
  %10 = ptrtoint ptr %Size to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %Size, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv4 = zext i16 %12 to i32
  %add5 = add nsw i32 %add, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %add5)
  %cmp6 = icmp sgt i32 %add5, 16383
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  %or.cond = select i1 %cmp6, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end3.cleanup_crit_edge, label %if.end3.do.body_crit_edge

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %read_rom.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %read_rom.exit.cleanup_crit_edge ], [ %start_address.0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_rom(ptr nocapture noundef %serial, i32 noundef %start_address, i32 noundef %length, ptr noundef %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %2 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %TI_I2C_Type = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 1
  %6 = ptrtoint ptr %TI_I2C_Type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %TI_I2C_Type, align 1
  %call = tail call fastcc i32 @read_download_mem(ptr noundef %5, i32 noundef %start_address, i32 noundef %length, i8 noundef zeroext %7, ptr noundef %buffer)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc i32 @read_boot_mem(ptr noundef %serial, i32 noundef %start_address, i32 noundef %length, ptr noundef %buffer)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_download_mem(ptr noundef %dev, i32 noundef %start_address, i32 noundef %length, i8 noundef zeroext %address_type, ptr noundef %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_download_mem.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_download_mem, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !564

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_download_mem.__UNIQUE_ID_ddebug240, ptr noundef %dev3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef %start_address, i32 noundef %length) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool4.not107 = icmp eq i32 %length, 0
  br i1 %tobool4.not107, label %do.end.cleanup_crit_edge, label %while.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %do.end
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %conv31 = zext i8 %address_type to i16
  br label %while.body

while.body:                                       ; preds = %if.end60.while.body_crit_edge, %while.body.lr.ph
  %start_address.addr.0111 = phi i32 [ %start_address, %while.body.lr.ph ], [ %add, %if.end60.while.body_crit_edge ]
  %length.addr.0110 = phi i32 [ %length, %while.body.lr.ph ], [ %sub, %if.end60.while.body_crit_edge ]
  %buffer.addr.0108 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr, %if.end60.while.body_crit_edge ]
  %0 = tail call i32 @llvm.smin.i32(i32 %length.addr.0110, i32 64)
  %conv7 = and i32 %0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv7)
  %cmp8 = icmp ugt i32 %conv7, 1
  br i1 %cmp8, label %do.body11, label %while.body.if.end29_crit_edge

while.body.if.end29_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.body11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_download_mem.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_download_mem, %if.then23)) #11
          to label %if.end29 [label %if.then23], !srcloc !564

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_download_mem.__UNIQUE_ID_ddebug241, ptr noundef %dev24, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef %start_address.addr.0111, i32 noundef %conv7) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %do.body11, %while.body.if.end29_crit_edge
  %conv30 = trunc i32 %start_address.addr.0111 to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv30)
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shl.i.i = shl i32 %3, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %conv.i = trunc i32 %conv7 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or1.i, i8 noundef zeroext -110, i8 noundef zeroext -64, i16 noundef zeroext %conv31, i16 noundef zeroext %1, ptr noundef %buffer.addr.0108, i16 noundef zeroext %conv.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end29.do.body36_crit_edge, label %if.end.i

if.end29.do.body36_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %conv7)
  %cmp4.not.i = icmp eq i32 %call2.i, %conv7
  br i1 %cmp4.not.i, label %if.end53, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_vread_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_download_mem, %if.then10.i)) #11
          to label %do.body36 [label %if.then10.i], !srcloc !564

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_vread_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev24, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %conv7, i32 noundef %call2.i) #11
  br label %do.body36

do.body36:                                        ; preds = %if.then10.i, %do.body.i, %if.end29.do.body36_crit_edge
  %retval.0.i95100 = phi i32 [ -70, %do.body.i ], [ -70, %if.then10.i ], [ %call2.i, %if.end29.do.body36_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_download_mem.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_download_mem, %if.then48)) #11
          to label %cleanup [label %if.then48], !srcloc !564

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_download_mem.__UNIQUE_ID_ddebug242, ptr noundef %dev24, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i95100) #11
  br label %cleanup

if.end53:                                         ; preds = %if.end.i
  br i1 %cmp8, label %if.then57, label %if.end53.if.end60_crit_edge

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_download_mem, %if.then.i)) #11
          to label %if.end60 [label %if.then.i], !srcloc !564

if.then.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev24, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13, i32 noundef %conv7, i32 noundef %conv7, ptr noundef %buffer.addr.0108) #11
  br label %if.end60

if.end60:                                         ; preds = %if.then.i, %if.then57, %if.end53.if.end60_crit_edge
  %add = add i32 %conv7, %start_address.addr.0111
  %add.ptr = getelementptr i8, ptr %buffer.addr.0108, i32 %conv7
  %sub = sub i32 %length.addr.0110, %conv7
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %if.end60.cleanup_crit_edge, label %if.end60.while.body_crit_edge

if.end60.while.body_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end60.cleanup_crit_edge, %if.then48, %do.body36, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i95100, %if.then48 ], [ %retval.0.i95100, %do.body36 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_boot_mem(ptr nocapture noundef %serial, i32 noundef %start_address, i32 noundef %length, ptr noundef %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp67 = icmp sgt i32 %length, 0
  br i1 %cmp67, label %for.body.lr.ph, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

for.body.lr.ph:                                   ; preds = %entry
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %TI_I2C_Type = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.cond.do.body12_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.do.body12_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %0 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %TI_I2C_Type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %TI_I2C_Type, align 1
  %conv = zext i8 %5 to i16
  %add = add i32 %i.068, %start_address
  %conv2 = trunc i32 %add to i16
  %arrayidx = getelementptr i8, ptr %buffer, i32 %i.068
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %7, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or1.i, i8 noundef zeroext -110, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext %conv2, ptr noundef %arrayidx, i16 noundef zeroext 1, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %for.body.do.body_crit_edge, label %if.end.i

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp4.not.i = icmp eq i32 %call2.i, 1
  br i1 %cmp4.not.i, label %for.cond, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_vread_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_boot_mem, %if.then10.i)) #11
          to label %do.body [label %if.then10.i], !srcloc !564

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev11.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_vread_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev11.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %call2.i) #11
  br label %do.body

do.body:                                          ; preds = %if.then10.i, %do.body.i, %for.body.do.body_crit_edge
  %retval.0.i5356 = phi i32 [ -70, %do.body.i ], [ -70, %if.then10.i ], [ %call2.i, %for.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_boot_mem.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_boot_mem, %if.then7)) #11
          to label %cleanup [label %if.then7], !srcloc !564

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_boot_mem.__UNIQUE_ID_ddebug243, ptr noundef %dev10, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i5356) #11
  br label %cleanup

do.body12:                                        ; preds = %for.cond.do.body12_crit_edge, %entry.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_boot_mem.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_boot_mem, %if.then24)) #11
          to label %do.end30 [label %if.then24], !srcloc !564

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %serial25 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %12 = ptrtoint ptr %serial25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial25, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_boot_mem.__UNIQUE_ID_ddebug244, ptr noundef %dev27, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %start_address, i32 noundef %length) #11
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body12
  %serial31 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %16 = ptrtoint ptr %serial31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serial31, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_boot_mem, %if.then.i)) #11
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !564

if.then.i:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev33, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %length, i32 noundef %length, ptr noundef %buffer) #11
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %do.end30
  %TiReadI2C = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 2
  %20 = ptrtoint ptr %TiReadI2C to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %TiReadI2C, align 2
  br label %cleanup

cleanup:                                          ; preds = %usb_serial_debug_data.exit, %if.then7, %do.body
  %retval.0 = phi i32 [ 0, %usb_serial_debug_data.exit ], [ %retval.0.i5356, %if.then7 ], [ %retval.0.i5356, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_download_mode(ptr nocapture noundef %serial, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %0 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial1, align 4
  %interface = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !564

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug271, ptr noundef %dev2, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call fastcc i32 @check_i2c_image(ptr noundef %serial)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end24, label %do.body8

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then20)) #11
          to label %cleanup322 [label %if.then20], !srcloc !564

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug272, ptr noundef %dev2, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41) #11
  br label %cleanup322

if.end24:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 10) #14
  %tobool26.not = icmp eq ptr %call7.i, null
  br i1 %tobool26.not, label %if.end24.cleanup322_crit_edge, label %if.end28

if.end24.cleanup322_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup322

if.end28:                                         ; preds = %if.end24
  %call29 = tail call fastcc i32 @get_manuf_info(ptr noundef %serial, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end32:                                         ; preds = %if.end28
  %7 = load i8, ptr @ignore_cpu_rev, align 1, !range !563
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool33.not = icmp eq i8 %7, 0
  br i1 %tobool33.not, label %land.lhs.true, label %if.end32.if.end53_crit_edge

if.end32.if.end53_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end32
  %CpuRev_BoardRev.i = getelementptr inbounds %struct.edge_ti_manuf_descriptor, ptr %call7.i, i32 0, i32 3
  %8 = ptrtoint ptr %CpuRev_BoardRev.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %CpuRev_BoardRev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %9)
  %cmp = icmp ult i8 %9, 32
  br i1 %cmp, label %do.body36, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

do.body36:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then48)) #11
          to label %do.end52 [label %if.then48], !srcloc !564

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %CpuRev_BoardRev.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %CpuRev_BoardRev.i, align 1
  %12 = lshr i8 %11, 4
  %conv2.i506 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug273, ptr noundef %dev2, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41, i32 noundef %conv2.i506) #11
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body36
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end53:                                         ; preds = %land.lhs.true.if.end53_crit_edge, %if.end32.if.end53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i470 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4) #14
  %tobool55.not = icmp eq ptr %call7.i470, null
  br i1 %tobool55.not, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end57:                                         ; preds = %if.end53
  %TI_I2C_Type.i.i = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 1
  %Size.i = getelementptr inbounds %struct.ti_i2c_desc, ptr %call7.i470, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end3.i.do.body.i_crit_edge, %if.end57
  %start_address.0.i = phi i32 [ 2, %if.end57 ], [ %add5.i, %if.end3.i.do.body.i_crit_edge ]
  %14 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serial1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %TI_I2C_Type.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %TI_I2C_Type.i.i, align 1
  %call.i.i = tail call fastcc i32 @read_download_mem(ptr noundef %19, i32 noundef %start_address.0.i, i32 noundef 4, i8 noundef zeroext %21, ptr noundef nonnull %call7.i470) #11
  br label %read_rom.exit.i

if.else.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i = tail call fastcc i32 @read_boot_mem(ptr noundef %serial, i32 noundef %start_address.0.i, i32 noundef 4, ptr noundef nonnull %call7.i470) #11
  br label %read_rom.exit.i

read_rom.exit.i:                                  ; preds = %if.else.i.i, %if.then.i.i
  %status.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i)
  %tobool.not.i = icmp eq i32 %status.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %read_rom.exit.i.if.else_crit_edge

read_rom.exit.i.if.else_crit_edge:                ; preds = %read_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.i:                                         ; preds = %read_rom.exit.i
  %22 = ptrtoint ptr %call7.i470 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call7.i470, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp.i = icmp eq i8 %23, 2
  br i1 %cmp.i, label %get_descriptor_addr.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %add.i = add nsw i32 %start_address.0.i, 4
  %24 = ptrtoint ptr %Size.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %Size.i, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #11
  %conv4.i = zext i16 %26 to i32
  %add5.i = add nsw i32 %add.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %add5.i)
  %cmp6.i = icmp sgt i32 %add5.i, 16383
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not.i = icmp eq i8 %23, 0
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %tobool10.not.i
  br i1 %or.cond.i, label %if.end3.i.if.else_crit_edge, label %if.end3.i.do.body.i_crit_edge

if.end3.i.do.body.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end3.i.if.else_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

get_descriptor_addr.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_address.0.i)
  %cmp59.not = icmp eq i32 %start_address.0.i, 0
  br i1 %cmp59.not, label %get_descriptor_addr.exit.if.else_crit_edge, label %if.then60

get_descriptor_addr.exit.if.else_crit_edge:       ; preds = %get_descriptor_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then60:                                        ; preds = %get_descriptor_addr.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then73)) #11
          to label %do.end76 [label %if.then73], !srcloc !564

if.then73:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug274, ptr noundef %dev2, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41) #11
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %if.then60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i474 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 2) #14
  %tobool78.not = icmp eq ptr %call7.i474, null
  br i1 %tobool78.not, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end80:                                         ; preds = %do.end76
  %add = add nsw i32 %start_address.0.i, 4
  %call81 = tail call fastcc i32 @read_rom(ptr noundef %serial, i32 noundef %add, i32 noundef 2, ptr noundef nonnull %call7.i474)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.then83

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i474) #11
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end84:                                         ; preds = %if.end80
  %28 = ptrtoint ptr %call7.i474 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %call7.i474, align 8
  %conv = zext i8 %29 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %Ver_Minor = getelementptr inbounds %struct.ti_i2c_firmware_rec, ptr %call7.i474, i32 0, i32 1
  %30 = ptrtoint ptr %Ver_Minor to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %Ver_Minor, align 1
  %conv85 = zext i8 %31 to i32
  %add86 = or i32 %shl, %conv85
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  %conv87 = zext i8 %33 to i32
  %shl88 = shl nuw nsw i32 %conv87, 8
  %minor_version = getelementptr inbounds %struct.edgeport_fw_hdr, ptr %5, i32 0, i32 1
  %34 = ptrtoint ptr %minor_version to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %minor_version, align 1
  %conv89 = zext i8 %35 to i32
  %add90 = or i32 %shl88, %conv89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then103)) #11
          to label %do.end114 [label %if.then103], !srcloc !564

if.then103:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %call7.i474 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %call7.i474, align 8
  %conv105 = zext i8 %37 to i32
  %38 = ptrtoint ptr %Ver_Minor to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %Ver_Minor, align 1
  %conv107 = zext i8 %39 to i32
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %5, align 1
  %conv109 = zext i8 %41 to i32
  %42 = ptrtoint ptr %minor_version to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %minor_version, align 1
  %conv111 = zext i8 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug275, ptr noundef %dev2, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41, i32 noundef %conv105, i32 noundef %conv107, i32 noundef %conv109, i32 noundef %conv111) #11
  br label %do.end114

do.end114:                                        ; preds = %if.then103, %if.end84
  call void @__sanitizer_cov_trace_cmp4(i32 %add86, i32 %add90)
  %cmp115 = icmp ult i32 %add86, %add90
  br i1 %cmp115, label %do.body118, label %cleanup

do.body118:                                       ; preds = %do.end114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then130)) #11
          to label %do.end141 [label %if.then130], !srcloc !564

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %call7.i474 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %call7.i474, align 8
  %conv132 = zext i8 %45 to i32
  %46 = ptrtoint ptr %Ver_Minor to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %Ver_Minor, align 1
  %conv134 = zext i8 %47 to i32
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %5, align 1
  %conv136 = zext i8 %49 to i32
  %50 = ptrtoint ptr %minor_version to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %minor_version, align 1
  %conv138 = zext i8 %51 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug276, ptr noundef %dev2, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.41, i32 noundef %conv132, i32 noundef %conv134, i32 noundef %conv136, i32 noundef %conv138) #11
  br label %do.end141

do.end141:                                        ; preds = %if.then130, %do.body118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i481 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3264, i32 noundef 1) #14
  %tobool143.not = icmp eq ptr %call7.i481, null
  br i1 %tobool143.not, label %if.then144, label %if.end145

if.then144:                                       ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i474) #11
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end145:                                        ; preds = %do.end141
  %53 = ptrtoint ptr %call7.i481 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -14, ptr %call7.i481, align 8
  %call146 = tail call fastcc i32 @write_rom(ptr noundef %serial, i32 noundef %start_address.0.i, i32 noundef 1, ptr noundef nonnull %call7.i481)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %if.then148

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i481) #11
  tail call void @kfree(ptr noundef nonnull %call7.i474) #11
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end149:                                        ; preds = %if.end145
  %call150 = tail call fastcc i32 @read_rom(ptr noundef %serial, i32 noundef %start_address.0.i, i32 noundef 1, ptr noundef nonnull %call7.i481)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end153, label %if.then152

if.then152:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i481) #11
  tail call void @kfree(ptr noundef nonnull %call7.i474) #11
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end153:                                        ; preds = %if.end149
  %54 = ptrtoint ptr %call7.i481 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %call7.i481, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %55)
  %cmp155.not = icmp eq i8 %55, -14
  br i1 %cmp155.not, label %do.body162, label %do.end160

do.end160:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.41) #15
  tail call void @kfree(ptr noundef nonnull %call7.i481) #11
  tail call void @kfree(ptr noundef nonnull %call7.i474) #11
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

do.body162:                                       ; preds = %if.end153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then174)) #11
          to label %do.end177 [label %if.then174], !srcloc !564

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug277, ptr noundef %dev2, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.41) #11
  br label %do.end177

do.end177:                                        ; preds = %if.then174, %do.body162
  %56 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %serial1, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %shl.i.i = shl i32 %61, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i, i8 noundef zeroext -127, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then193)) #11
          to label %do.end196 [label %if.then193], !srcloc !564

if.then193:                                       ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #13
  %62 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug278, ptr noundef %dev2, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.41, i32 noundef %62) #11
  br label %do.end196

do.end196:                                        ; preds = %if.then193, %do.end177
  tail call void @kfree(ptr noundef nonnull %call7.i481) #11
  tail call void @kfree(ptr noundef nonnull %call7.i474) #11
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

cleanup:                                          ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #13
  %fw_version = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 7
  %63 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add86, ptr %fw_version, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i474) #11
  br label %if.end321

if.else:                                          ; preds = %get_descriptor_addr.exit.if.else_crit_edge, %if.end3.i.if.else_crit_edge, %read_rom.exit.i.if.else_crit_edge
  %call199 = tail call fastcc i32 @get_descriptor_addr(ptr noundef %serial, i32 noundef 242, ptr noundef nonnull %call7.i470)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %cmp200.not = icmp eq i32 %call199, 0
  br i1 %cmp200.not, label %if.else.if.end321_crit_edge, label %if.then202

if.else.if.end321_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end321

if.then202:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i488 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3264, i32 noundef 6) #14
  %tobool204.not = icmp eq ptr %call7.i488, null
  br i1 %tobool204.not, label %if.then205, label %if.end206

if.then205:                                       ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end206:                                        ; preds = %if.then202
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i489 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3264, i32 noundef 6) #14
  %tobool208.not = icmp eq ptr %call7.i489, null
  br i1 %tobool208.not, label %if.then209, label %do.body211

if.then209:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i488) #11
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

do.body211:                                       ; preds = %if.end206
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then223)) #11
          to label %do.end226 [label %if.then223], !srcloc !564

if.then223:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug279, ptr noundef %dev2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.41) #11
  br label %do.end226

do.end226:                                        ; preds = %if.then223, %do.body211
  %call227 = tail call fastcc i32 @build_i2c_fw_hdr(ptr noundef nonnull %call7.i488, ptr noundef %fw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end230, label %if.then229

if.then229:                                       ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i489) #11
  tail call void @kfree(ptr noundef nonnull %call7.i488) #11
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end230:                                        ; preds = %do.end226
  %call231 = tail call fastcc i32 @write_rom(ptr noundef %serial, i32 noundef %call199, i32 noundef 6, ptr noundef nonnull %call7.i488)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %if.end234, label %if.then233

if.then233:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i489) #11
  tail call void @kfree(ptr noundef nonnull %call7.i488) #11
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end234:                                        ; preds = %if.end230
  %call235 = tail call fastcc i32 @read_rom(ptr noundef %serial, i32 noundef %call199, i32 noundef 6, ptr noundef nonnull %call7.i489)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end254, label %do.body238

do.body238:                                       ; preds = %if.end234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then250)) #11
          to label %do.end253 [label %if.then250], !srcloc !564

if.then250:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug280, ptr noundef %dev2, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.41) #11
  br label %do.end253

do.end253:                                        ; preds = %if.then250, %do.body238
  tail call void @kfree(ptr noundef nonnull %call7.i489) #11
  tail call void @kfree(ptr noundef nonnull %call7.i488) #11
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end254:                                        ; preds = %if.end234
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %call7.i489, ptr noundef nonnull dereferenceable(6) %call7.i488, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool256.not = icmp eq i32 %bcmp, 0
  br i1 %tobool256.not, label %if.end274, label %do.body258

do.body258:                                       ; preds = %if.end254
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then270)) #11
          to label %do.end273 [label %if.then270], !srcloc !564

if.then270:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug281, ptr noundef %dev2, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.41) #11
  br label %do.end273

do.end273:                                        ; preds = %if.then270, %do.body258
  tail call void @kfree(ptr noundef nonnull %call7.i489) #11
  tail call void @kfree(ptr noundef nonnull %call7.i488) #11
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end274:                                        ; preds = %if.end254
  tail call void @kfree(ptr noundef nonnull %call7.i489) #11
  tail call void @kfree(ptr noundef nonnull %call7.i488) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then287)) #11
          to label %do.end290 [label %if.then287], !srcloc !564

if.then287:                                       ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug282, ptr noundef %dev2, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.41) #11
  br label %do.end290

do.end290:                                        ; preds = %if.then287, %if.end274
  %66 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %serial1, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %shl.i.i508 = shl i32 %71, 8
  %or.i509 = or i32 %shl.i.i508, -2147483648
  %call1.i510 = tail call i32 @usb_control_msg(ptr noundef %69, i32 noundef %or.i509, i8 noundef zeroext -126, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 10000) #11
  %72 = tail call i32 @llvm.smin.i32(i32 %call1.i510, i32 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_download_mode.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_download_mode, %if.then306)) #11
          to label %do.end309 [label %if.then306], !srcloc !564

if.then306:                                       ; preds = %do.end290
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_download_mode.__UNIQUE_ID_ddebug283, ptr noundef %dev2, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.41, i32 noundef %72) #11
  br label %do.end309

do.end309:                                        ; preds = %if.then306, %do.end290
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i510)
  %tobool310.not = icmp sgt i32 %call1.i510, -1
  br i1 %tobool310.not, label %do.end309.if.end321_crit_edge, label %do.end314

do.end309.if.end321_crit_edge:                    ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end321

do.end314:                                        ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.41) #15
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

if.end321:                                        ; preds = %do.end309.if.end321_crit_edge, %if.else.if.end321_crit_edge, %cleanup
  tail call void @kfree(ptr noundef nonnull %call7.i470) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup322

cleanup322:                                       ; preds = %if.end321, %do.end314, %do.end273, %do.end253, %if.then233, %if.then229, %if.then209, %if.then205, %do.end196, %do.end160, %if.then152, %if.then148, %if.then144, %if.then83, %if.then79, %if.then56, %do.end52, %if.then31, %if.end24.cleanup322_crit_edge, %if.then20, %do.body8
  %retval.2 = phi i32 [ %call29, %if.then31 ], [ 0, %if.end321 ], [ -12, %if.then56 ], [ -22, %do.end52 ], [ %call5, %if.then20 ], [ -12, %if.end24.cleanup322_crit_edge ], [ %call5, %do.body8 ], [ -12, %if.then79 ], [ %call81, %if.then83 ], [ -12, %if.then144 ], [ %call146, %if.then148 ], [ %call150, %if.then152 ], [ -19, %do.end160 ], [ -19, %do.end196 ], [ -12, %if.then205 ], [ -12, %if.then209 ], [ -22, %if.then229 ], [ -22, %if.then233 ], [ %call235, %do.end253 ], [ -22, %do.end273 ], [ %72, %do.end314 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_boot_mode(ptr nocapture noundef %serial, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %0 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial1, align 4
  %interface = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_boot_mode.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_boot_mode, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !564

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_boot_mode.__UNIQUE_ID_ddebug284, ptr noundef %dev2, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 16, i32 7
  %10 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2070, i16 %11)
  %cmp.not = icmp eq i16 %11, 2070
  br i1 %cmp.not, label %if.end36, label %do.body15

do.body15:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_boot_mode.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_boot_mode, %if.then27)) #11
          to label %do.end35 [label %if.then27], !srcloc !564

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %idVendor31 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 16, i32 7
  %16 = ptrtoint ptr %idVendor31 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %idVendor31, align 8
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv32 = zext i16 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_boot_mode.__UNIQUE_ID_ddebug285, ptr noundef %dev2, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef %conv32) #11
  br label %do.end35

do.end35:                                         ; preds = %if.then27, %do.body15
  %TI_I2C_Type = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 1
  %19 = ptrtoint ptr %TI_I2C_Type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -126, ptr %TI_I2C_Type, align 1
  br label %do.body147

if.end36:                                         ; preds = %do.end
  %call37 = tail call fastcc i32 @i2c_type_bootmode(ptr noundef %serial)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.do.body147_crit_edge

if.end36.do.body147_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body147

if.end40:                                         ; preds = %if.end36
  %call41 = tail call fastcc i32 @check_i2c_image(ptr noundef %serial)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end40.do.body147_crit_edge

if.end40.do.body147_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body147

if.then43:                                        ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 10) #14
  %tobool45.not = icmp eq ptr %call7.i, null
  br i1 %tobool45.not, label %if.then43.cleanup165_crit_edge, label %if.end47

if.then43.cleanup165_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup165

if.end47:                                         ; preds = %if.then43
  %call48 = tail call fastcc i32 @get_manuf_info(ptr noundef %serial, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %do.body147

if.end51:                                         ; preds = %if.end47
  %21 = load i8, ptr @ignore_cpu_rev, align 1, !range !563
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool52.not = icmp eq i8 %21, 0
  br i1 %tobool52.not, label %land.lhs.true, label %if.end51.if.end74_crit_edge

if.end51.if.end74_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

land.lhs.true:                                    ; preds = %if.end51
  %CpuRev_BoardRev.i = getelementptr inbounds %struct.edge_ti_manuf_descriptor, ptr %call7.i, i32 0, i32 3
  %22 = ptrtoint ptr %CpuRev_BoardRev.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %CpuRev_BoardRev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %23)
  %cmp54 = icmp ult i8 %23, 32
  br i1 %cmp54, label %do.body57, label %land.lhs.true.if.end74_crit_edge

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

do.body57:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_boot_mode.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_boot_mode, %if.then69)) #11
          to label %do.end73 [label %if.then69], !srcloc !564

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %CpuRev_BoardRev.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %CpuRev_BoardRev.i, align 1
  %26 = lshr i8 %25, 4
  %conv2.i231 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_boot_mode.__UNIQUE_ID_ddebug286, ptr noundef %dev2, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.79, i32 noundef %conv2.i231) #11
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body57
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %do.body147

if.end74:                                         ; preds = %land.lhs.true.if.end74_crit_edge, %if.end51.if.end74_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 15875, i32 noundef 3264, i32 noundef 2) #17
  %tobool76.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool76.not, label %if.end74.cleanup165_crit_edge, label %if.end78

if.end74.cleanup165_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup165

if.end78:                                         ; preds = %if.end74
  %27 = call ptr @memset(ptr %call1.i.i, i32 255, i32 15875)
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fw, align 4
  %sub = add i32 %31, -4
  %32 = call ptr @memcpy(ptr %call1.i.i, ptr %arrayidx, i32 %sub)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end78
  %i.0246 = phi i32 [ 3, %if.end78 ], [ %inc, %for.body.for.body_crit_edge ]
  %cs.0245 = phi i8 [ 0, %if.end78 ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx83 = getelementptr i8, ptr %call1.i.i, i32 %i.0246
  %33 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx83, align 1
  %add = add i8 %34, %cs.0245
  %inc = add nuw nsw i32 %i.0246, 1
  %exitcond.not = icmp eq i32 %inc, 15875
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %35 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 62, ptr %call1.i.i, align 4096
  %CheckSum = getelementptr inbounds %struct.ti_i2c_image_header, ptr %call1.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %CheckSum to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %add, ptr %CheckSum, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_boot_mode.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_boot_mode, %if.then100)) #11
          to label %do.end105 [label %if.then100], !srcloc !564

if.then100:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %5, align 1
  %conv101 = zext i8 %38 to i32
  %minor_version = getelementptr inbounds %struct.edgeport_fw_hdr, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %minor_version to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %minor_version, align 1
  %conv102 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_boot_mode.__UNIQUE_ID_ddebug287, ptr noundef %dev2, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.79, i32 noundef %conv101, i32 noundef %conv102) #11
  br label %do.end105

do.end105:                                        ; preds = %if.then100, %for.end
  %call106 = tail call fastcc i32 @download_code(ptr noundef %serial, ptr noundef nonnull %call1.i.i)
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end125, label %do.body109

do.body109:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_boot_mode.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_boot_mode, %if.then121)) #11
          to label %cleanup165 [label %if.then121], !srcloc !564

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_boot_mode.__UNIQUE_ID_ddebug288, ptr noundef %dev2, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.79) #11
  br label %cleanup165

if.end125:                                        ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %serial, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_boot_mode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_boot_mode, %if.then138)) #11
          to label %cleanup165 [label %if.then138], !srcloc !564

if.then138:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_boot_mode.__UNIQUE_ID_ddebug289, ptr noundef %dev2, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.79) #11
  br label %cleanup165

do.body147:                                       ; preds = %do.end73, %if.then50, %if.end40.do.body147_crit_edge, %if.end36.do.body147_crit_edge, %do.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_boot_mode.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_boot_mode, %if.then159)) #11
          to label %do.end162 [label %if.then159], !srcloc !564

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_boot_mode.__UNIQUE_ID_ddebug290, ptr noundef %dev2, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.79) #11
  br label %do.end162

do.end162:                                        ; preds = %if.then159, %do.body147
  %42 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %serial, align 4
  br label %cleanup165

cleanup165:                                       ; preds = %do.end162, %if.then138, %if.end125, %if.then121, %do.body109, %if.end74.cleanup165_crit_edge, %if.then43.cleanup165_crit_edge
  %retval.1 = phi i32 [ 1, %do.end162 ], [ %call106, %do.body109 ], [ 1, %if.end125 ], [ 1, %if.then138 ], [ %call106, %if.then121 ], [ -12, %if.end74.cleanup165_crit_edge ], [ -12, %if.then43.cleanup165_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_i2c_image(ptr nocapture noundef %serial) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %0 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 4) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #17
  %tobool5.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end7

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %TI_I2C_Type.i = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 1
  %11 = ptrtoint ptr %TI_I2C_Type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %TI_I2C_Type.i, align 1
  %call.i = tail call fastcc i32 @read_download_mem(ptr noundef %10, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %12, ptr noundef nonnull %call1.i.i) #11
  br label %read_rom.exit

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call fastcc i32 @read_boot_mem(ptr noundef %serial, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %call1.i.i) #11
  br label %read_rom.exit

read_rom.exit:                                    ; preds = %if.else.i, %if.then.i
  %status.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool9.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool9.not, label %if.end11, label %read_rom.exit.out_crit_edge

read_rom.exit.out_crit_edge:                      ; preds = %read_rom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %read_rom.exit
  %13 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call1.i.i, align 4096
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.223)
  switch i8 %14, label %do.end [
    i8 82, label %if.end11.if.end17_crit_edge
    i8 16, label %if.end11.if.end17_crit_edge174
  ]

if.end11.if.end17_crit_edge174:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #15
  br label %out

if.end17:                                         ; preds = %if.end11.if.end17_crit_edge, %if.end11.if.end17_crit_edge174
  %TI_I2C_Type.i141 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 1
  %Size = getelementptr inbounds %struct.ti_i2c_desc, ptr %call7.i, i32 0, i32 1
  %CheckSum.i = getelementptr inbounds %struct.ti_i2c_desc, ptr %call7.i, i32 0, i32 2
  br label %do.body18

do.body18:                                        ; preds = %if.end77.do.body18_crit_edge, %if.end17
  %start_address.0 = phi i32 [ 2, %if.end17 ], [ %add81, %if.end77.do.body18_crit_edge ]
  %16 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i139 = icmp eq i32 %17, 2
  br i1 %cmp.i139, label %if.then.i143, label %if.else.i145

if.then.i143:                                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serial1, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %TI_I2C_Type.i141 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %TI_I2C_Type.i141, align 1
  %call.i142 = tail call fastcc i32 @read_download_mem(ptr noundef %21, i32 noundef %start_address.0, i32 noundef 4, i8 noundef zeroext %23, ptr noundef nonnull %call7.i) #11
  br label %read_rom.exit147

if.else.i145:                                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i144 = tail call fastcc i32 @read_boot_mem(ptr noundef %serial, i32 noundef %start_address.0, i32 noundef 4, ptr noundef nonnull %call7.i) #11
  br label %read_rom.exit147

read_rom.exit147:                                 ; preds = %if.else.i145, %if.then.i143
  %status.0.i146 = phi i32 [ %call.i142, %if.then.i143 ], [ %call2.i144, %if.else.i145 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i146)
  %tobool20.not = icmp eq i32 %status.0.i146, 0
  br i1 %tobool20.not, label %if.end22, label %read_rom.exit147.do.end89_crit_edge

read_rom.exit147.do.end89_crit_edge:              ; preds = %read_rom.exit147
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end89

if.end22:                                         ; preds = %read_rom.exit147
  %add = add nsw i32 %start_address.0, 4
  %24 = ptrtoint ptr %Size to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %Size, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv23 = zext i16 %26 to i32
  %add24 = add nsw i32 %add, %conv23
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add24)
  %cmp25 = icmp ugt i32 %add24, 16384
  br i1 %cmp25, label %if.then27, label %do.body38

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_i2c_image.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_i2c_image, %if.then33)) #11
          to label %do.end89 [label %if.then33], !srcloc !564

if.then33:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_i2c_image.__UNIQUE_ID_ddebug255, ptr noundef %dev3, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60) #11
  br label %do.end89

do.body38:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_i2c_image.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_i2c_image, %if.then50)) #11
          to label %do.end54 [label %if.then50], !srcloc !564

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %call7.i, align 8
  %conv51 = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_i2c_image.__UNIQUE_ID_ddebug256, ptr noundef %dev3, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef %conv51) #11
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %do.body38
  %29 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %call7.i, align 8
  %trunc = trunc i8 %30 to i4
  %31 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.224)
  switch i4 %trunc, label %if.then65 [
    i4 2, label %do.end54.if.end77_crit_edge
    i4 7, label %do.end54.if.end77_crit_edge175
  ]

do.end54.if.end77_crit_edge175:                   ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.end54.if.end77_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then65:                                        ; preds = %do.end54
  %32 = ptrtoint ptr %Size to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %Size, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv68 = zext i16 %34 to i32
  %35 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp.i148 = icmp eq i32 %36, 2
  br i1 %cmp.i148, label %if.then.i152, label %if.else.i154

if.then.i152:                                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %serial1, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %TI_I2C_Type.i141 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %TI_I2C_Type.i141, align 1
  %call.i151 = tail call fastcc i32 @read_download_mem(ptr noundef %40, i32 noundef %add, i32 noundef %conv68, i8 noundef zeroext %42, ptr noundef nonnull %call1.i.i) #11
  br label %read_rom.exit156

if.else.i154:                                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i153 = tail call fastcc i32 @read_boot_mem(ptr noundef %serial, i32 noundef %add, i32 noundef %conv68, ptr noundef nonnull %call1.i.i) #11
  br label %read_rom.exit156

read_rom.exit156:                                 ; preds = %if.else.i154, %if.then.i152
  %status.0.i155 = phi i32 [ %call.i151, %if.then.i152 ], [ %call2.i153, %if.else.i154 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i155)
  %tobool70.not = icmp eq i32 %status.0.i155, 0
  br i1 %tobool70.not, label %if.end72, label %read_rom.exit156.do.end89_crit_edge

read_rom.exit156.do.end89_crit_edge:              ; preds = %read_rom.exit156
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end89

if.end72:                                         ; preds = %read_rom.exit156
  %43 = ptrtoint ptr %Size to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %Size, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp25.not.i = icmp eq i16 %44, 0
  br i1 %cmp25.not.i, label %if.end72.for.end.i_crit_edge, label %for.body.preheader.i

if.end72.for.end.i_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end72
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #11
  %umax.i = tail call i16 @llvm.umax.i16(i16 %45, i16 1) #11
  %wide.trip.count.i = zext i16 %umax.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %cs.026.i = phi i32 [ 0, %for.body.preheader.i ], [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call1.i.i, i32 %indvars.iv.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = zext i8 %47 to i32
  %add.i = add nuw nsw i32 %cs.026.i, %conv4.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %phi.cast.i = and i32 %add.i, 255
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end72.for.end.i_crit_edge
  %cs.0.lcssa.i = phi i32 [ 0, %if.end72.for.end.i_crit_edge ], [ %phi.cast.i, %for.body.i.for.end.i_crit_edge ]
  %48 = ptrtoint ptr %CheckSum.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %CheckSum.i, align 1
  %conv7.i = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cs.0.lcssa.i, i32 %conv7.i)
  %cmp8.not.i = icmp eq i32 %cs.0.lcssa.i, %conv7.i
  br i1 %cmp8.not.i, label %for.end.i.if.end77_crit_edge, label %do.body.i

for.end.i.if.end77_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.body.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @valid_csum.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_i2c_image, %if.then12.i)) #11
          to label %do.end89 [label %if.then12.i], !srcloc !564

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %CheckSum.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %CheckSum.i, align 1
  %conv14.i = zext i8 %51 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @valid_csum.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %conv14.i, i32 noundef %cs.0.lcssa.i) #11
  br label %do.end89

if.end77:                                         ; preds = %for.end.i.if.end77_crit_edge, %do.end54.if.end77_crit_edge, %do.end54.if.end77_crit_edge175
  %52 = ptrtoint ptr %Size to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %Size, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %conv80 = zext i16 %54 to i32
  %add81 = add i32 %add, %conv80
  %55 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp85.not = icmp ne i8 %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add81)
  %cmp87 = icmp slt i32 %add81, 16384
  %or.cond = select i1 %cmp85.not, i1 %cmp87, i1 false
  br i1 %or.cond, label %if.end77.do.body18_crit_edge, label %if.end77.do.end89_crit_edge

if.end77.do.end89_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end89

if.end77.do.body18_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

do.end89:                                         ; preds = %if.end77.do.end89_crit_edge, %if.then12.i, %do.body.i, %read_rom.exit156.do.end89_crit_edge, %if.then33, %if.then27, %read_rom.exit147.do.end89_crit_edge
  %start_address.1 = phi i32 [ %start_address.0, %if.then33 ], [ %start_address.0, %if.then27 ], [ %start_address.0, %do.body.i ], [ %start_address.0, %if.then12.i ], [ %add81, %if.end77.do.end89_crit_edge ], [ %start_address.0, %read_rom.exit156.do.end89_crit_edge ], [ %start_address.0, %read_rom.exit147.do.end89_crit_edge ]
  %status.1 = phi i32 [ -19, %if.then33 ], [ -19, %if.then27 ], [ -22, %do.body.i ], [ -22, %if.then12.i ], [ 0, %if.end77.do.end89_crit_edge ], [ %status.0.i155, %read_rom.exit156.do.end89_crit_edge ], [ %status.0.i146, %read_rom.exit147.do.end89_crit_edge ]
  %57 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp92.not = icmp ne i8 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %start_address.1)
  %cmp94 = icmp sgt i32 %start_address.1, 16384
  %or.cond135 = select i1 %cmp92.not, i1 true, i1 %cmp94
  %spec.select = select i1 %or.cond135, i32 -19, i32 %status.1
  br label %out

out:                                              ; preds = %do.end89, %do.end, %read_rom.exit.out_crit_edge
  %status.2 = phi i32 [ %status.0.i, %read_rom.exit.out_crit_edge ], [ -19, %do.end ], [ %spec.select, %do.end89 ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %status.2, %out ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_manuf_info(ptr nocapture noundef %serial, ptr noundef %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %0 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 4) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %TI_I2C_Type.i.i = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 1
  %Size.i = getelementptr inbounds %struct.ti_i2c_desc, ptr %call7.i, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end3.i.do.body.i_crit_edge, %if.end
  %start_address.0.i = phi i32 [ 2, %if.end ], [ %add5.i, %if.end3.i.do.body.i_crit_edge ]
  %5 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %TI_I2C_Type.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %TI_I2C_Type.i.i, align 1
  %call.i.i = tail call fastcc i32 @read_download_mem(ptr noundef %10, i32 noundef %start_address.0.i, i32 noundef 4, i8 noundef zeroext %12, ptr noundef nonnull %call7.i) #11
  br label %read_rom.exit.i

if.else.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i = tail call fastcc i32 @read_boot_mem(ptr noundef %serial, i32 noundef %start_address.0.i, i32 noundef 4, ptr noundef nonnull %call7.i) #11
  br label %read_rom.exit.i

read_rom.exit.i:                                  ; preds = %if.else.i.i, %if.then.i.i
  %status.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i)
  %tobool.not.i = icmp eq i32 %status.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %read_rom.exit.i.do.body_crit_edge

read_rom.exit.i.do.body_crit_edge:                ; preds = %read_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.i:                                         ; preds = %read_rom.exit.i
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i = icmp eq i8 %14, 0
  br i1 %cmp.i, label %get_descriptor_addr.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %add.i = add nsw i32 %start_address.0.i, 4
  %15 = ptrtoint ptr %Size.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %Size.i, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #11
  %conv4.i = zext i16 %17 to i32
  %add5.i = add nsw i32 %add.i, %conv4.i
  %cmp6.i = icmp sgt i32 %add5.i, 16383
  br i1 %cmp6.i, label %if.end3.i.do.body_crit_edge, label %if.end3.i.do.body.i_crit_edge

if.end3.i.do.body.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end3.i.do.body_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

get_descriptor_addr.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_address.0.i)
  %tobool5.not = icmp eq i32 %start_address.0.i, 0
  br i1 %tobool5.not, label %get_descriptor_addr.exit.do.body_crit_edge, label %if.end13

get_descriptor_addr.exit.do.body_crit_edge:       ; preds = %get_descriptor_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %get_descriptor_addr.exit.do.body_crit_edge, %if.end3.i.do.body_crit_edge, %read_rom.exit.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manuf_info.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manuf_info, %if.then11)) #11
          to label %exit [label %if.then11], !srcloc !564

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manuf_info.__UNIQUE_ID_ddebug257, ptr noundef %dev3, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65) #11
  br label %exit

if.end13:                                         ; preds = %get_descriptor_addr.exit
  %add = add nsw i32 %start_address.0.i, 4
  %18 = ptrtoint ptr %Size.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %Size.i, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv = zext i16 %20 to i32
  %21 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i165 = icmp eq i32 %22, 2
  br i1 %cmp.i165, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serial1, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %TI_I2C_Type.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %TI_I2C_Type.i.i, align 1
  %call.i = tail call fastcc i32 @read_download_mem(ptr noundef %26, i32 noundef %add, i32 noundef %conv, i8 noundef zeroext %28, ptr noundef %buffer) #11
  br label %read_rom.exit

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call fastcc i32 @read_boot_mem(ptr noundef %serial, i32 noundef %add, i32 noundef %conv, ptr noundef %buffer) #11
  br label %read_rom.exit

read_rom.exit:                                    ; preds = %if.else.i, %if.then.i
  %status.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool15.not = icmp eq i32 %status.0.i, 0
  br i1 %tobool15.not, label %if.end17, label %read_rom.exit.exit_crit_edge

read_rom.exit.exit_crit_edge:                     ; preds = %read_rom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end17:                                         ; preds = %read_rom.exit
  %29 = ptrtoint ptr %Size.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %Size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp25.not.i = icmp eq i16 %30, 0
  br i1 %cmp25.not.i, label %if.end17.for.end.i_crit_edge, label %for.body.preheader.i

if.end17.for.end.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end17
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #11
  %umax.i = tail call i16 @llvm.umax.i16(i16 %31, i16 1) #11
  %wide.trip.count.i = zext i16 %umax.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %cs.026.i = phi i32 [ 0, %for.body.preheader.i ], [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buffer, i32 %indvars.iv.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %conv4.i168 = zext i8 %33 to i32
  %add.i169 = add nuw nsw i32 %cs.026.i, %conv4.i168
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %phi.cast.i = and i32 %add.i169, 255
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end17.for.end.i_crit_edge
  %cs.0.lcssa.i = phi i32 [ 0, %if.end17.for.end.i_crit_edge ], [ %phi.cast.i, %for.body.i.for.end.i_crit_edge ]
  %CheckSum.i = getelementptr inbounds %struct.ti_i2c_desc, ptr %call7.i, i32 0, i32 2
  %34 = ptrtoint ptr %CheckSum.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %CheckSum.i, align 1
  %conv7.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cs.0.lcssa.i, i32 %conv7.i)
  %cmp8.not.i = icmp eq i32 %cs.0.lcssa.i, %conv7.i
  br i1 %cmp8.not.i, label %for.end.i.valid_csum.exit_crit_edge, label %do.body.i170

for.end.i.valid_csum.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %valid_csum.exit

do.body.i170:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @valid_csum.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manuf_info, %if.then12.i)) #11
          to label %valid_csum.exit [label %if.then12.i], !srcloc !564

if.then12.i:                                      ; preds = %do.body.i170
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %CheckSum.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %CheckSum.i, align 1
  %conv14.i = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @valid_csum.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %conv14.i, i32 noundef %cs.0.lcssa.i) #11
  br label %valid_csum.exit

valid_csum.exit:                                  ; preds = %if.then12.i, %do.body.i170, %for.end.i.valid_csum.exit_crit_edge
  %retval.0.i171 = phi i32 [ -22, %if.then12.i ], [ 0, %for.end.i.valid_csum.exit_crit_edge ], [ -22, %do.body.i170 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manuf_info.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manuf_info, %if.then31)) #11
          to label %do.body36 [label %if.then31], !srcloc !564

if.then31:                                        ; preds = %valid_csum.exit
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buffer, align 1
  %conv32 = zext i8 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manuf_info.__UNIQUE_ID_ddebug258, ptr noundef %dev3, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i32 noundef %conv32) #11
  br label %do.body36

do.body36:                                        ; preds = %if.then31, %valid_csum.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manuf_info.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manuf_info, %if.then48)) #11
          to label %do.body53 [label %if.then48], !srcloc !564

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %Version = getelementptr inbounds %struct.edge_ti_manuf_descriptor, ptr %buffer, i32 0, i32 2
  %40 = ptrtoint ptr %Version to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %Version, align 1
  %conv49 = zext i8 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manuf_info.__UNIQUE_ID_ddebug259, ptr noundef %dev3, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.65, i32 noundef %conv49) #11
  br label %do.body53

do.body53:                                        ; preds = %if.then48, %do.body36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manuf_info.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manuf_info, %if.then65)) #11
          to label %do.body70 [label %if.then65], !srcloc !564

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  %CpuRev_BoardRev = getelementptr inbounds %struct.edge_ti_manuf_descriptor, ptr %buffer, i32 0, i32 3
  %42 = ptrtoint ptr %CpuRev_BoardRev to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %CpuRev_BoardRev, align 1
  %conv66 = zext i8 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manuf_info.__UNIQUE_ID_ddebug260, ptr noundef %dev3, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.65, i32 noundef %conv66) #11
  br label %do.body70

do.body70:                                        ; preds = %if.then65, %do.body53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manuf_info.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manuf_info, %if.then82)) #11
          to label %do.body87 [label %if.then82], !srcloc !564

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  %NumPorts = getelementptr inbounds %struct.edge_ti_manuf_descriptor, ptr %buffer, i32 0, i32 4
  %44 = ptrtoint ptr %NumPorts to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %NumPorts, align 1
  %conv83 = zext i8 %45 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manuf_info.__UNIQUE_ID_ddebug261, ptr noundef %dev3, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.65, i32 noundef %conv83) #11
  br label %do.body87

do.body87:                                        ; preds = %if.then82, %do.body70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manuf_info.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manuf_info, %if.then99)) #11
          to label %do.body104 [label %if.then99], !srcloc !564

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #13
  %NumVirtualPorts = getelementptr inbounds %struct.edge_ti_manuf_descriptor, ptr %buffer, i32 0, i32 5
  %46 = ptrtoint ptr %NumVirtualPorts to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %NumVirtualPorts, align 1
  %conv100 = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manuf_info.__UNIQUE_ID_ddebug262, ptr noundef %dev3, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.65, i32 noundef %conv100) #11
  br label %do.body104

do.body104:                                       ; preds = %if.then99, %do.body87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manuf_info.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manuf_info, %if.then116)) #11
          to label %exit [label %if.then116], !srcloc !564

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  %TotalPorts = getelementptr inbounds %struct.edge_ti_manuf_descriptor, ptr %buffer, i32 0, i32 8
  %48 = ptrtoint ptr %TotalPorts to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %TotalPorts, align 1
  %conv117 = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manuf_info.__UNIQUE_ID_ddebug263, ptr noundef %dev3, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.65, i32 noundef %conv117) #11
  br label %exit

exit:                                             ; preds = %if.then116, %do.body104, %read_rom.exit.exit_crit_edge, %if.then11, %do.body
  %status.0 = phi i32 [ %status.0.i, %read_rom.exit.exit_crit_edge ], [ %retval.0.i171, %if.then116 ], [ -19, %if.then11 ], [ -19, %do.body ], [ %retval.0.i171, %do.body104 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_rom(ptr nocapture noundef %serial, i32 noundef %start_address, i32 noundef %length, ptr noundef %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %serial, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then4
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @write_boot_mem(ptr noundef %serial, i32 noundef %start_address, i32 noundef %length, ptr noundef %buffer)
  br label %return

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %TI_I2C_Type = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 1
  %3 = ptrtoint ptr %TI_I2C_Type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %TI_I2C_Type, align 1
  %call5 = tail call fastcc i32 @write_i2c_mem(ptr noundef %serial, i32 noundef %start_address, i32 noundef %length, i8 noundef zeroext %4, ptr noundef %buffer)
  br label %return

return:                                           ; preds = %if.then4, %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then4 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_i2c_fw_hdr(ptr nocapture noundef writeonly %header, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 15874, i32 noundef 3264, i32 noundef 2) #17
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %call1.i.i, i32 255, i32 15874)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  %5 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %call1.i.i, align 4096
  %minor_version = getelementptr inbounds %struct.edgeport_fw_hdr, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %minor_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %minor_version, align 1
  %Ver_Minor = getelementptr inbounds %struct.ti_i2c_firmware_rec, ptr %call1.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %Ver_Minor to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %Ver_Minor, align 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 4
  %add.ptr = getelementptr i8, ptr %call1.i.i, i32 2
  %arrayidx3 = getelementptr i8, ptr %10, i32 7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %arrayidx, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %13 to i32
  %14 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx3, i32 %conv)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %cs.044 = phi i8 [ 0, %if.end ], [ %add, %for.body.for.body_crit_edge ]
  %i.043 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx6 = getelementptr i8, ptr %call1.i.i, i32 %i.043
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx6, align 1
  %add = add i8 %16, %cs.044
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 15874
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #11
  %Data = getelementptr inbounds %struct.ti_i2c_desc, ptr %header, i32 0, i32 3
  %17 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -14, ptr %header, align 1
  %Size = getelementptr inbounds %struct.ti_i2c_desc, ptr %header, i32 0, i32 1
  %18 = ptrtoint ptr %Size to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 574, ptr %Size, align 1
  %CheckSum = getelementptr inbounds %struct.ti_i2c_desc, ptr %header, i32 0, i32 2
  %19 = ptrtoint ptr %CheckSum to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %add, ptr %CheckSum, align 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %22 = ptrtoint ptr %Data to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %Data, align 1
  %23 = ptrtoint ptr %minor_version to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %minor_version, align 1
  %Ver_Minor13 = getelementptr inbounds %struct.ti_i2c_desc, ptr %header, i32 1, i32 1
  %25 = ptrtoint ptr %Ver_Minor13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %Ver_Minor13, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_boot_mem(ptr nocapture noundef %serial, i32 noundef %start_address, i32 noundef %length, ptr noundef %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %TiReadI2C = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %TiReadI2C to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %TiReadI2C, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1) #14
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call3 = tail call fastcc i32 @read_boot_mem(ptr noundef %serial, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %call7.i)
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp46 = icmp sgt i32 %length, 0
  br i1 %cmp46, label %for.body.lr.ph, label %if.end7.do.body_crit_edge

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end7
  %serial8 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.cond.do.body_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %3 = ptrtoint ptr %serial8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial8, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %arrayidx = getelementptr i8, ptr %buffer, i32 %i.047
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i16
  %add = add i32 %i.047, %start_address
  %conv9 = trunc i32 %add to i16
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext -109, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %conv9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %tobool11.not = icmp sgt i32 %call1.i, -1
  br i1 %tobool11.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %if.end7.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_boot_mem.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_boot_mem, %if.then18)) #11
          to label %do.end [label %if.then18], !srcloc !564

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %serial19 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %11 = ptrtoint ptr %serial19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial19, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_boot_mem.__UNIQUE_ID_ddebug245, ptr noundef %dev21, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, i32 noundef %start_address, i32 noundef %length) #11
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %serial23 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %15 = ptrtoint ptr %serial23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial23, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_boot_mem, %if.then.i)) #11
          to label %cleanup [label %if.then.i], !srcloc !564

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev25, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.73, i32 noundef %length, i32 noundef %length, ptr noundef %buffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then.i ], [ %call1.i, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_i2c_mem(ptr nocapture noundef readonly %serial, i32 noundef %start_address, i32 noundef %length, i8 noundef zeroext %address_type, ptr noundef %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %0 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %and = and i32 %start_address, 63
  %sub = sub nuw nsw i32 64, %and
  %4 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %length)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_i2c_mem.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_i2c_mem, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !564

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_i2c_mem.__UNIQUE_ID_ddebug246, ptr noundef %dev3, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, i32 noundef %start_address, i32 noundef %4) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_i2c_mem, %if.then.i)) #11
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !564

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.75, i32 noundef %4, i32 noundef %4, ptr noundef %buffer) #11
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %do.end
  %conv = trunc i32 %start_address to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %conv10 = zext i8 %address_type to i16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = trunc i32 %4 to i16
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext -109, i8 noundef zeroext 64, i16 noundef zeroext %conv10, i16 noundef zeroext %5, ptr noundef %buffer, i16 noundef zeroext %conv.i, i32 noundef 1000) #11
  %12 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %tobool12.not = icmp sgt i32 %call1.i, -1
  br i1 %tobool12.not, label %if.end30, label %do.body14

do.body14:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_i2c_mem.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_i2c_mem, %if.then26)) #11
          to label %cleanup [label %if.then26], !srcloc !564

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_i2c_mem.__UNIQUE_ID_ddebug247, ptr noundef %dev3, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %12) #11
  br label %cleanup

if.end30:                                         ; preds = %usb_serial_debug_data.exit
  %sub31 = sub i32 %length, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31)
  %tobool32.not129 = icmp eq i32 %sub31, 0
  br i1 %tobool32.not129, label %if.end30.cleanup_crit_edge, label %while.body.preheader

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.preheader:                             ; preds = %if.end30
  %add.ptr = getelementptr i8, ptr %buffer, i32 %4
  %add = add i32 %4, %start_address
  br label %while.body

while.body:                                       ; preds = %if.end63.while.body_crit_edge, %while.body.preheader
  %start_address.addr.0132 = phi i32 [ %add65, %if.end63.while.body_crit_edge ], [ %add, %while.body.preheader ]
  %length.addr.0131 = phi i32 [ %sub64, %if.end63.while.body_crit_edge ], [ %sub31, %while.body.preheader ]
  %buffer.addr.0130 = phi ptr [ %add.ptr66, %if.end63.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %13 = tail call i32 @llvm.smin.i32(i32 %length.addr.0131, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_i2c_mem.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_i2c_mem, %if.then49)) #11
          to label %do.end52 [label %if.then49], !srcloc !564

if.then49:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_i2c_mem.__UNIQUE_ID_ddebug248, ptr noundef %dev3, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.75, i32 noundef %start_address.addr.0132, i32 noundef %13) #11
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_i2c_mem, %if.then.i120)) #11
          to label %usb_serial_debug_data.exit121 [label %if.then.i120], !srcloc !564

if.then.i120:                                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.75, i32 noundef %13, i32 noundef %13, ptr noundef %buffer.addr.0130) #11
  br label %usb_serial_debug_data.exit121

usb_serial_debug_data.exit121:                    ; preds = %if.then.i120, %do.end52
  %conv53 = trunc i32 %start_address.addr.0132 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv53)
  %15 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial1, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i122 = shl i32 %20, 8
  %or.i123 = or i32 %shl.i.i122, -2147483648
  %conv.i124 = trunc i32 %13 to i16
  %call1.i125 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i123, i8 noundef zeroext -109, i8 noundef zeroext 64, i16 noundef zeroext %conv10, i16 noundef zeroext %14, ptr noundef %buffer.addr.0130, i16 noundef zeroext %conv.i124, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i125)
  %tobool58.not = icmp sgt i32 %call1.i125, -1
  br i1 %tobool58.not, label %if.end63, label %do.end62

do.end62:                                         ; preds = %usb_serial_debug_data.exit121
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %call1.i125) #15
  br label %cleanup

if.end63:                                         ; preds = %usb_serial_debug_data.exit121
  %sub64 = sub i32 %length.addr.0131, %13
  %add65 = add i32 %start_address.addr.0132, %13
  %add.ptr66 = getelementptr i8, ptr %buffer.addr.0130, i32 %13
  %tobool32.not = icmp eq i32 %sub64, 0
  br i1 %tobool32.not, label %if.end63.cleanup_crit_edge, label %if.end63.while.body_crit_edge

if.end63.while.body_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end63.cleanup_crit_edge, %do.end62, %if.end30.cleanup_crit_edge, %if.then26, %do.body14
  %retval.0 = phi i32 [ %call1.i125, %do.end62 ], [ %12, %if.then26 ], [ %12, %do.body14 ], [ 0, %if.end30.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_type_bootmode(ptr nocapture noundef %serial) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  %0 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or1.i, i8 noundef zeroext -110, i8 noundef zeroext -64, i16 noundef zeroext 130, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.do.body_crit_edge, label %if.end.i

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp4.not.i = icmp eq i32 %call2.i, 1
  br i1 %cmp4.not.i, label %do.body15, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_vread_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_type_bootmode, %if.then10.i)) #11
          to label %do.body [label %if.then10.i], !srcloc !564

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev11.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_vread_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev11.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %call2.i) #11
  br label %do.body

do.body:                                          ; preds = %if.then10.i, %do.body.i, %if.end.do.body_crit_edge
  %retval.0.i191205 = phi i32 [ -70, %do.body.i ], [ -70, %if.then10.i ], [ %call2.i, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_type_bootmode, %if.then13)) #11
          to label %if.end55 [label %if.then13], !srcloc !564

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_type_bootmode.__UNIQUE_ID_ddebug264, ptr noundef %dev3, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, i32 noundef %retval.0.i191205) #11
  br label %if.end55

do.body15:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_type_bootmode, %if.then27)) #11
          to label %land.lhs.true [label %if.then27], !srcloc !564

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_type_bootmode.__UNIQUE_ID_ddebug265, ptr noundef %dev3, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86, i32 noundef %conv) #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then27, %do.body15
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call7.i, align 8
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.226)
  switch i8 %14, label %land.lhs.true.if.end55_crit_edge [
    i8 82, label %land.lhs.true.do.body39_crit_edge
    i8 16, label %land.lhs.true.do.body39_crit_edge222
  ]

land.lhs.true.do.body39_crit_edge222:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

land.lhs.true.do.body39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

do.body39:                                        ; preds = %land.lhs.true.do.body39_crit_edge, %land.lhs.true.do.body39_crit_edge222
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_type_bootmode, %if.then51)) #11
          to label %out [label %if.then51], !srcloc !564

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_type_bootmode.__UNIQUE_ID_ddebug266, ptr noundef %dev3, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.86) #11
  br label %out

if.end55:                                         ; preds = %land.lhs.true.if.end55_crit_edge, %if.then13, %do.body
  %16 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serial1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i192 = shl i32 %21, 8
  %or1.i193 = or i32 %shl.i.i192, -2147483520
  %call2.i194 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or1.i193, i8 noundef zeroext -110, i8 noundef zeroext -64, i16 noundef zeroext 131, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i194)
  %cmp.i195 = icmp slt i32 %call2.i194, 0
  br i1 %cmp.i195, label %if.end55.do.body61_crit_edge, label %if.end.i197

if.end55.do.body61_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body61

if.end.i197:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i194)
  %cmp4.not.i196 = icmp eq i32 %call2.i194, 1
  br i1 %cmp4.not.i196, label %do.body78, label %do.body.i198

do.body.i198:                                     ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_vread_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_type_bootmode, %if.then10.i200)) #11
          to label %do.body61 [label %if.then10.i200], !srcloc !564

if.then10.i200:                                   ; preds = %do.body.i198
  call void @__sanitizer_cov_trace_pc() #13
  %dev11.i199 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_vread_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev11.i199, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef %call2.i194) #11
  br label %do.body61

do.body61:                                        ; preds = %if.then10.i200, %do.body.i198, %if.end55.do.body61_crit_edge
  %retval.0.i201214 = phi i32 [ -70, %do.body.i198 ], [ -70, %if.then10.i200 ], [ %call2.i194, %if.end55.do.body61_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_type_bootmode, %if.then73)) #11
          to label %do.body124 [label %if.then73], !srcloc !564

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_type_bootmode.__UNIQUE_ID_ddebug267, ptr noundef %dev3, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.86, i32 noundef %retval.0.i201214) #11
  br label %do.body124

do.body78:                                        ; preds = %if.end.i197
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_type_bootmode, %if.then90)) #11
          to label %land.lhs.true97 [label %if.then90], !srcloc !564

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call7.i, align 8
  %conv91 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_type_bootmode.__UNIQUE_ID_ddebug268, ptr noundef %dev3, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86, i32 noundef %conv91) #11
  br label %land.lhs.true97

land.lhs.true97:                                  ; preds = %if.then90, %do.body78
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call7.i, align 8
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.227)
  switch i8 %25, label %land.lhs.true97.do.body124_crit_edge [
    i8 82, label %land.lhs.true97.do.body106_crit_edge
    i8 16, label %land.lhs.true97.do.body106_crit_edge223
  ]

land.lhs.true97.do.body106_crit_edge223:          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body106

land.lhs.true97.do.body106_crit_edge:             ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body106

land.lhs.true97.do.body124_crit_edge:             ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body124

do.body106:                                       ; preds = %land.lhs.true97.do.body106_crit_edge, %land.lhs.true97.do.body106_crit_edge223
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_type_bootmode, %if.then118)) #11
          to label %out [label %if.then118], !srcloc !564

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_type_bootmode.__UNIQUE_ID_ddebug269, ptr noundef %dev3, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.86) #11
  br label %out

do.body124:                                       ; preds = %land.lhs.true97.do.body124_crit_edge, %if.then73, %do.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_type_bootmode, %if.then136)) #11
          to label %out [label %if.then136], !srcloc !564

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_type_bootmode.__UNIQUE_ID_ddebug270, ptr noundef %dev3, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.86) #11
  br label %out

out:                                              ; preds = %if.then136, %do.body124, %if.then118, %do.body106, %if.then51, %do.body39
  %.sink = phi i8 [ -126, %do.body39 ], [ -126, %if.then51 ], [ -125, %do.body106 ], [ -125, %if.then118 ], [ -126, %do.body124 ], [ -126, %if.then136 ]
  %status.0 = phi i32 [ 0, %do.body39 ], [ 0, %if.then51 ], [ 0, %do.body106 ], [ 0, %if.then118 ], [ -19, %do.body124 ], [ -19, %if.then136 ]
  %TI_I2C_Type140 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 1
  %27 = ptrtoint ptr %TI_I2C_Type140 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink, ptr %TI_I2C_Type140, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @download_code(ptr nocapture noundef readonly %serial, ptr noundef %image) unnamed_addr #2 align 64 {
entry:
  %done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done) #11
  %0 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %done, align 4, !annotation !565
  %serial2 = getelementptr inbounds %struct.edgeport_serial, ptr %serial, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %entry
  %pos.01 = phi i32 [ 0, %entry ], [ %add, %if.end4.for.body_crit_edge ]
  %sub = sub i32 15875, %pos.01
  %1 = call i32 @llvm.smin.i32(i32 %sub, i32 64)
  %2 = ptrtoint ptr %serial2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial2, align 4
  %arrayidx = getelementptr i8, ptr %image, i32 %pos.01
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %port.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %bulk_out_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %bulk_out_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bulk_out_endpointAddress.i, align 4
  %conv.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %11, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %call2.i = call i32 @usb_bulk_msg(ptr noundef %5, i32 noundef %or.i, ptr noundef %arrayidx, i32 noundef %1, ptr noundef nonnull %done, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end4, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end4:                                          ; preds = %for.body
  %12 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %done, align 4
  %add = add i32 %13, %pos.01
  %cmp = icmp slt i32 %add, 15875
  br i1 %cmp, label %if.end4.for.body_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done) #11
  ret i32 %call2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bUartMode = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bUartMode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bUartMode, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.100, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_mode_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %valbuf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @simple_strtoul(ptr noundef %valbuf, ptr noundef null, i32 noundef 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uart_mode_store.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uart_mode_store, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !564

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uart_mode_store.__UNIQUE_ID_ddebug345, ptr noundef %dev, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, i32 noundef %call1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call1)
  %cmp = icmp ult i32 %call1, 256
  br i1 %cmp, label %if.then6, label %do.end9

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %call1 to i8
  %bUartMode = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bUartMode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %bUartMode, align 4
  br label %if.end10

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, i32 noundef %call1) #15
  br label %if.end10

if.end10:                                         ; preds = %do.end9, %if.then6
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @edge_send(ptr noundef %port, ptr noundef %tty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %ep_write_urb_in_use = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %ep_write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep_write_urb_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %4 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 20
  %8 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bulk_out_size, align 4
  %call8 = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %7, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp10 = icmp eq i32 %call8, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call3) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %10 = ptrtoint ptr %ep_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %ep_write_urb_in_use, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call3) #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %11 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_urb, align 8
  %transfer_buffer18 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer18, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_send, %if.then.i)) #11
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !564

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.edge_send, i32 noundef %call8, i32 noundef %call8, ptr noundef %14) #11
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end14
  %15 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_urb, align 8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call8, ptr %transfer_buffer_length, align 4
  %18 = load ptr, ptr %write_urb, align 8
  %call21 = tail call i32 @usb_submit_urb(ptr noundef %18, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else, label %do.body24

do.body24:                                        ; preds = %usb_serial_debug_data.exit
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 12
  %19 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool26.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool26.not, label %do.body24.if.then28_crit_edge, label %lor.lhs.false

do.body24.if.then28_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

lor.lhs.false:                                    ; preds = %do.body24
  %.b68 = load i1, ptr @edge_send.__print_once, align 1
  br i1 %.b68, label %lor.lhs.false.if.end33_crit_edge, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %do.body24.if.then28_crit_edge
  store i1 true, ptr @edge_send.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__.edge_send, i32 noundef %call21) #15
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %lor.lhs.false.if.end33_crit_edge
  %20 = ptrtoint ptr %ep_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %ep_write_urb_in_use, align 4
  br label %if.end38

if.else:                                          ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %port37 = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %port37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port37, align 4
  %tx = getelementptr inbounds %struct.usb_serial_port, ptr %22, i32 0, i32 27, i32 4
  %23 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx, align 8
  %add = add i32 %24, %call8
  store i32 %add, ptr %tx, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end33
  %tobool39.not = icmp eq ptr %tty, null
  br i1 %tobool39.not, label %if.end38.cleanup_crit_edge, label %if.then40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_wakeup(ptr noundef nonnull %tty) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end38.cleanup_crit_edge, %if.then12, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @change_port_settings(ptr noundef %tty, ptr noundef %edge_port, ptr nocapture noundef readonly %old_termios) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 11
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 10) #14
  %tobool.not = icmp eq ptr %call7.i, null
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = call ptr @memcpy(ptr %termios, ptr %old_termios, i32 44)
  br label %cleanup

if.end:                                           ; preds = %entry
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %wFlags = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %wFlags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 24576, ptr %wFlags, align 2
  %bUartMode = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 12
  %7 = ptrtoint ptr %bUartMode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bUartMode, align 4
  %bUartMode9 = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 7
  %9 = ptrtoint ptr %bUartMode9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %bUartMode9, align 1
  %and = lshr i32 %5, 4
  %10 = and i32 %and, 3
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %10, label %if.end.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb34
    i32 3, label %sw.bb52
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bDataBits = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %bDataBits to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %bDataBits, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then14)) #11
          to label %sw.epilog [label %if.then14], !srcloc !564

if.then14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug315, ptr noundef %dev1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.136) #11
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bDataBits17 = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 2
  %13 = ptrtoint ptr %bDataBits17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %bDataBits17, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then30)) #11
          to label %sw.epilog [label %if.then30], !srcloc !564

if.then30:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug316, ptr noundef %dev1, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.136) #11
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bDataBits35 = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %bDataBits35 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %bDataBits35, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then48)) #11
          to label %sw.epilog [label %if.then48], !srcloc !564

if.then48:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug317, ptr noundef %dev1, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.136) #11
  br label %sw.epilog

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bDataBits53 = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 2
  %15 = ptrtoint ptr %bDataBits53 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %bDataBits53, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then66)) #11
          to label %sw.epilog [label %if.then66], !srcloc !564

if.then66:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug318, ptr noundef %dev1, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.136) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then66, %sw.bb52, %if.then48, %sw.bb34, %if.then30, %sw.bb16, %if.then14, %sw.bb
  %and70 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else118, label %if.then72

if.then72:                                        ; preds = %sw.epilog
  %and73 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %16 = ptrtoint ptr %wFlags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wFlags, align 2
  %18 = or i16 %17, 8
  store i16 %18, ptr %wFlags, align 2
  %bParity100 = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 3
  br i1 %tobool74.not, label %if.else, label %if.then75

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %bParity100 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %bParity100, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then92)) #11
          to label %if.end136 [label %if.then92], !srcloc !564

if.then92:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug319, ptr noundef %dev1, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.136) #11
  br label %if.end136

if.else:                                          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %bParity100 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %bParity100, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then113)) #11
          to label %if.end136 [label %if.then113], !srcloc !564

if.then113:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug320, ptr noundef %dev1, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.136) #11
  br label %if.end136

if.else118:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %bParity119 = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 3
  %21 = ptrtoint ptr %bParity119 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bParity119, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then132)) #11
          to label %if.end136 [label %if.then132], !srcloc !564

if.then132:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug321, ptr noundef %dev1, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.136) #11
  br label %if.end136

if.end136:                                        ; preds = %if.then132, %if.else118, %if.then113, %if.else, %if.then92, %if.then75
  %and137 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  %bStopBits157 = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 4
  br i1 %tobool138.not, label %if.else156, label %if.then139

if.then139:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %bStopBits157 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %bStopBits157, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then152)) #11
          to label %if.end174 [label %if.then152], !srcloc !564

if.then152:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug322, ptr noundef %dev1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.136) #11
  br label %if.end174

if.else156:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %bStopBits157 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bStopBits157, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then170)) #11
          to label %if.end174 [label %if.then170], !srcloc !564

if.then170:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug323, ptr noundef %dev1, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.136) #11
  br label %if.end174

if.end174:                                        ; preds = %if.then170, %if.else156, %if.then152, %if.then139
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool176.not = icmp sgt i32 %5, -1
  br i1 %tobool176.not, label %do.body203, label %if.then177

if.then177:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %wFlags to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %wFlags, align 2
  %26 = or i16 %25, 33
  store i16 %26, ptr %wFlags, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then198)) #11
          to label %if.end220 [label %if.then198], !srcloc !564

if.then198:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug324, ptr noundef %dev1, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.136) #11
  br label %if.end220

do.body203:                                       ; preds = %if.end174
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then215)) #11
          to label %do.end218 [label %if.then215], !srcloc !564

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug325, ptr noundef %dev1, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.136) #11
  br label %do.end218

do.end218:                                        ; preds = %if.then215, %do.body203
  %ep_lock.i = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock.i) #11
  %ep_read_urb_state.i = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 14
  %27 = ptrtoint ptr %ep_read_urb_state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ep_read_urb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp5.i = icmp eq i32 %28, 2
  br i1 %cmp5.i, label %if.then.i, label %do.end218.restart_read.exit_crit_edge

do.end218.restart_read.exit_crit_edge:            ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #13
  br label %restart_read.exit

if.then.i:                                        ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port, align 4
  %read_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_urb.i, align 4
  %call7.i687 = tail call i32 @usb_submit_urb(ptr noundef %32, i32 noundef 2592) #11
  br label %restart_read.exit

restart_read.exit:                                ; preds = %if.then.i, %do.end218.restart_read.exit_crit_edge
  %33 = ptrtoint ptr %ep_read_urb_state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ep_read_urb_state.i, align 4
  %shadow_mcr.i = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 3
  %34 = ptrtoint ptr %shadow_mcr.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %shadow_mcr.i, align 1
  %36 = or i8 %35, 2
  store i8 %36, ptr %shadow_mcr.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock.i, i32 noundef %call2.i) #11
  br label %if.end220

if.end220:                                        ; preds = %restart_read.exit, %if.then198, %if.then177
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %cXon = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 5
  %39 = ptrtoint ptr %cXon to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %cXon, align 1
  %arrayidx224 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %40 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx224, align 1
  %cXoff = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 6
  %42 = ptrtoint ptr %cXoff to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %cXoff, align 8
  %43 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %termios, align 4
  %and226 = and i32 %44, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %do.body254, label %if.then228

if.then228:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %wFlags to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %wFlags, align 2
  %47 = or i16 %46, 256
  store i16 %47, ptr %wFlags, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then245)) #11
          to label %if.end270 [label %if.then245], !srcloc !564

if.then245:                                       ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %cXon to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cXon, align 1
  %conv247 = zext i8 %49 to i32
  %50 = ptrtoint ptr %cXoff to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cXoff, align 8
  %conv249 = zext i8 %51 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug326, ptr noundef %dev1, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.136, i32 noundef %conv247, i32 noundef %conv249) #11
  br label %if.end270

do.body254:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then266)) #11
          to label %if.end270 [label %if.then266], !srcloc !564

if.then266:                                       ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug327, ptr noundef %dev1, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.136) #11
  br label %if.end270

if.end270:                                        ; preds = %if.then266, %do.body254, %if.then245, %if.then228
  %52 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %termios, align 4
  %and273 = and i32 %53, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273)
  %tobool274.not = icmp eq i32 %and273, 0
  br i1 %tobool274.not, label %do.body301, label %if.then275

if.then275:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %wFlags to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %wFlags, align 2
  %56 = or i16 %55, 64
  store i16 %56, ptr %wFlags, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then292)) #11
          to label %if.end317 [label %if.then292], !srcloc !564

if.then292:                                       ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %cXon to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cXon, align 1
  %conv294 = zext i8 %58 to i32
  %59 = ptrtoint ptr %cXoff to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %cXoff, align 8
  %conv296 = zext i8 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug328, ptr noundef %dev1, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.136, i32 noundef %conv294, i32 noundef %conv296) #11
  br label %if.end317

do.body301:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then313)) #11
          to label %if.end317 [label %if.then313], !srcloc !564

if.then313:                                       ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug329, ptr noundef %dev1, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.136) #11
  br label %if.end317

if.end317:                                        ; preds = %if.then313, %do.body301, %if.then292, %if.then275
  %61 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %c_cflag, align 4
  %and320 = and i32 %62, -1073741825
  store i32 %and320, ptr %c_cflag, align 4
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool322.not = icmp eq i32 %call.i, 0
  br i1 %tobool322.not, label %if.end317.if.end327_crit_edge, label %if.else324

if.end317.if.end327_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end327

if.else324:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  %63 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 461550)
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %63, i32 noundef %63) #11
  br label %if.end327

if.end327:                                        ; preds = %if.else324, %if.end317.if.end327_crit_edge
  %baud.0 = phi i32 [ %63, %if.else324 ], [ 9600, %if.end317.if.end327_crit_edge ]
  %baud_rate = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 7
  %64 = ptrtoint ptr %baud_rate to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %baud.0, ptr %baud_rate, align 4
  %div = sdiv i32 %baud.0, 2
  %add = add nsw i32 %div, 461550
  %div328 = sdiv i32 %add, %baud.0
  %conv329 = trunc i32 %div328 to i16
  %65 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv329, ptr %call7.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then342)) #11
          to label %do.body348 [label %if.then342], !srcloc !564

if.then342:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %call7.i, align 8
  %conv344 = zext i16 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug332, ptr noundef %dev1, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.136, i32 noundef %baud.0, i32 noundef %conv344) #11
  br label %do.body348

do.body348:                                       ; preds = %if.then342, %if.end327
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then360)) #11
          to label %do.body367 [label %if.then360], !srcloc !564

if.then360:                                       ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %call7.i, align 8
  %conv362 = zext i16 %69 to i32
  %div363 = udiv i32 461550, %conv362
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug333, ptr noundef %dev1, ptr noundef nonnull @.str.153, i32 noundef %div363) #11
  br label %do.body367

do.body367:                                       ; preds = %if.then360, %do.body348
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then379)) #11
          to label %do.body385 [label %if.then379], !srcloc !564

if.then379:                                       ; preds = %do.body367
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %wFlags to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %wFlags, align 2
  %conv381 = zext i16 %71 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug334, ptr noundef %dev1, ptr noundef nonnull @.str.154, i32 noundef %conv381) #11
  br label %do.body385

do.body385:                                       ; preds = %if.then379, %do.body367
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then397)) #11
          to label %do.body403 [label %if.then397], !srcloc !564

if.then397:                                       ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #13
  %bDataBits398 = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 2
  %72 = ptrtoint ptr %bDataBits398 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bDataBits398, align 4
  %conv399 = zext i8 %73 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug335, ptr noundef %dev1, ptr noundef nonnull @.str.155, i32 noundef %conv399) #11
  br label %do.body403

do.body403:                                       ; preds = %if.then397, %do.body385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then415)) #11
          to label %do.body421 [label %if.then415], !srcloc !564

if.then415:                                       ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #13
  %bParity416 = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 3
  %74 = ptrtoint ptr %bParity416 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bParity416, align 1
  %conv417 = zext i8 %75 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug336, ptr noundef %dev1, ptr noundef nonnull @.str.156, i32 noundef %conv417) #11
  br label %do.body421

do.body421:                                       ; preds = %if.then415, %do.body403
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then433)) #11
          to label %do.body439 [label %if.then433], !srcloc !564

if.then433:                                       ; preds = %do.body421
  call void @__sanitizer_cov_trace_pc() #13
  %bStopBits434 = getelementptr inbounds %struct.ump_uart_config, ptr %call7.i, i32 0, i32 4
  %76 = ptrtoint ptr %bStopBits434 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bStopBits434, align 2
  %conv435 = zext i8 %77 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug337, ptr noundef %dev1, ptr noundef nonnull @.str.157, i32 noundef %conv435) #11
  br label %do.body439

do.body439:                                       ; preds = %if.then433, %do.body421
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then451)) #11
          to label %do.body457 [label %if.then451], !srcloc !564

if.then451:                                       ; preds = %do.body439
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %cXon to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cXon, align 1
  %conv453 = zext i8 %79 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug338, ptr noundef %dev1, ptr noundef nonnull @.str.158, i32 noundef %conv453) #11
  br label %do.body457

do.body457:                                       ; preds = %if.then451, %do.body439
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then469)) #11
          to label %do.body475 [label %if.then469], !srcloc !564

if.then469:                                       ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %cXoff to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cXoff, align 8
  %conv471 = zext i8 %81 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug339, ptr noundef %dev1, ptr noundef nonnull @.str.159, i32 noundef %conv471) #11
  br label %do.body475

do.body475:                                       ; preds = %if.then469, %do.body457
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then487)) #11
          to label %do.body493 [label %if.then487], !srcloc !564

if.then487:                                       ; preds = %do.body475
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %bUartMode9 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bUartMode9, align 1
  %conv489 = zext i8 %83 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug340, ptr noundef %dev1, ptr noundef nonnull @.str.160, i32 noundef %conv489) #11
  br label %do.body493

do.body493:                                       ; preds = %if.then487, %do.body475
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %port, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %85, i32 0, i32 4
  %90 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %port_number.i, align 4
  %conv.i = zext i8 %91 to i16
  %add.i = add nuw nsw i16 %conv.i, 3
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %89, align 8
  %shl.i.i.i = shl i32 %93, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 10, i32 noundef 1000) #11
  %94 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool503.not = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool503.not, label %do.body493.if.end521_crit_edge, label %do.body505

do.body493.if.end521_crit_edge:                   ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end521

do.body505:                                       ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then517)) #11
          to label %if.end521 [label %if.then517], !srcloc !564

if.then517:                                       ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug341, ptr noundef %dev1, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.136, i32 noundef %94) #11
  br label %if.end521

if.end521:                                        ; preds = %if.then517, %do.body505, %do.body493.if.end521_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end521, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tx_active(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i100 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 1) #14
  %tobool2.not = icmp eq ptr %call7.i100, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %port5 = getelementptr inbounds %struct.edgeport_port, ptr %port, i32 0, i32 11
  %2 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port5, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dma_address = getelementptr inbounds %struct.edgeport_port, ptr %port, i32 0, i32 1
  %8 = ptrtoint ptr %dma_address to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dma_address, align 2
  %conv = zext i16 %9 to i32
  %call.i = tail call fastcc i32 @read_download_mem(ptr noundef %7, i32 noundef %conv, i32 noundef 8, i8 noundef zeroext 3, ptr noundef nonnull %call7.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %do.body, label %if.end4.do.body59_crit_edge

if.end4.do.body59_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body59

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_active.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_active, %if.then14)) #11
          to label %do.end [label %if.then14], !srcloc !564

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port5, align 4
  %dev16 = getelementptr inbounds %struct.usb_serial_port, ptr %11, i32 0, i32 32
  %XByteCount = getelementptr inbounds %struct.out_endpoint_desc_block, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %XByteCount to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %XByteCount, align 2
  %conv17 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tx_active.__UNIQUE_ID_ddebug249, ptr noundef %dev16, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.165, i32 noundef %conv17) #11
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %14 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port5, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %port, align 4
  %conv22 = zext i16 %21 to i32
  %add = add nuw nsw i32 %conv22, 5
  %call.i107 = tail call fastcc i32 @read_download_mem(ptr noundef %19, i32 noundef %add, i32 noundef 1, i8 noundef zeroext 3, ptr noundef nonnull %call7.i100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool24.not = icmp eq i32 %call.i107, 0
  br i1 %tobool24.not, label %do.body27, label %do.end.do.body59_crit_edge

do.end.do.body59_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body59

do.body27:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_active.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_active, %if.then39)) #11
          to label %do.end45 [label %if.then39], !srcloc !564

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port5, align 4
  %dev41 = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 32
  %24 = ptrtoint ptr %call7.i100 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call7.i100, align 8
  %conv42 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tx_active.__UNIQUE_ID_ddebug250, ptr noundef %dev41, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.165, i32 noundef %conv42) #11
  br label %do.end45

do.end45:                                         ; preds = %if.then39, %do.body27
  %XByteCount46 = getelementptr inbounds %struct.out_endpoint_desc_block, ptr %call7.i, i32 0, i32 2
  %26 = ptrtoint ptr %XByteCount46 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %XByteCount46, align 2
  %28 = lshr i8 %27, 1
  %29 = and i8 %28, 64
  %30 = ptrtoint ptr %call7.i100 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %call7.i100, align 8
  %32 = lshr i8 %31, 5
  %.lobit = and i8 %32, 1
  %33 = or i8 %.lobit, %29
  %spec.select99111 = xor i8 %33, 1
  %spec.select99 = zext i8 %spec.select99111 to i32
  br label %do.body59

do.body59:                                        ; preds = %do.end45, %do.end.do.body59_crit_edge, %if.end4.do.body59_crit_edge
  %bytes_left.1 = phi i32 [ 0, %if.end4.do.body59_crit_edge ], [ 0, %do.end.do.body59_crit_edge ], [ %spec.select99, %do.end45 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_active.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_active, %if.then71)) #11
          to label %do.end76 [label %if.then71], !srcloc !564

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port5, align 4
  %dev73 = getelementptr inbounds %struct.usb_serial_port, ptr %35, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tx_active.__UNIQUE_ID_ddebug251, ptr noundef %dev73, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.165, i32 noundef %bytes_left.1) #11
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %do.body59
  tail call void @kfree(ptr noundef nonnull %call7.i100) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end76, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %bytes_left.1, %do.end76 ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @restore_mcr(ptr nocapture noundef readonly %port, i8 noundef zeroext %mcr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @restore_mcr.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@restore_mcr, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !564

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %port3 = getelementptr inbounds %struct.edgeport_port, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port3, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv = zext i8 %mcr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @restore_mcr.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.178, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port2.i = getelementptr inbounds %struct.edgeport_port, ptr %port, i32 0, i32 11
  %2 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port2.i, align 4
  %4 = and i8 %mcr, 1
  %5 = zext i8 %4 to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %port_number.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %port_number.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_number.i.i, align 4
  %conv.i.i = zext i8 %11 to i16
  %add.i.i = add nuw nsw i16 %conv.i.i, 3
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 8
  %shl.i.i.i.i = shl i32 %13, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %call1.i.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i.i.i, i8 noundef zeroext -123, i8 noundef zeroext 64, i16 noundef zeroext %5, i16 noundef zeroext %add.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i)
  %tobool6.not = icmp sgt i32 %call1.i.i.i, -1
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %14 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port2.i, align 4
  %16 = lshr i8 %mcr, 1
  %17 = and i8 %16, 1
  %18 = zext i8 %17 to i16
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %15, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %port_number.i.i4 = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 4
  %23 = ptrtoint ptr %port_number.i.i4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port_number.i.i4, align 4
  %conv.i.i5 = zext i8 %24 to i16
  %add.i.i6 = add nuw nsw i16 %conv.i.i5, 3
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 8
  %shl.i.i.i.i7 = shl i32 %26, 8
  %or.i.i.i8 = or i32 %shl.i.i.i.i7, -2147483648
  %call1.i.i.i9 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i.i.i8, i8 noundef zeroext -122, i8 noundef zeroext 64, i16 noundef zeroext %18, i16 noundef zeroext %add.i.i6, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i9)
  %tobool12.not = icmp sgt i32 %call1.i.i.i9, -1
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port2.i, align 4
  %29 = lshr i8 %mcr, 4
  %.lobit = and i8 %29, 1
  %30 = zext i8 %.lobit to i16
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %port_number.i.i13 = getelementptr inbounds %struct.usb_serial_port, ptr %28, i32 0, i32 4
  %35 = ptrtoint ptr %port_number.i.i13 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port_number.i.i13, align 4
  %conv.i.i14 = zext i8 %36 to i16
  %add.i.i15 = add nuw nsw i16 %conv.i.i14, 3
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 8
  %shl.i.i.i.i16 = shl i32 %38, 8
  %or.i.i.i17 = or i32 %shl.i.i.i.i16, -2147483648
  %call1.i.i.i18 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i.i.i17, i8 noundef zeroext -121, i8 noundef zeroext 64, i16 noundef zeroext %30, i16 noundef zeroext %add.i.i15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_new_lsr(ptr nocapture noundef %edge_port, i32 noundef %lsr_data, i8 noundef zeroext %lsr, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %data.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %data, ptr %data.addr, align 1
  %1 = and i8 %lsr, 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_new_lsr.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_new_lsr, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !564

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 11
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  %conv4 = zext i8 %1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_new_lsr.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.199, i32 noundef %conv4) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shadow_lsr = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 4
  %4 = ptrtoint ptr %shadow_lsr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %lsr, ptr %shadow_lsr, align 2
  %5 = and i8 %lsr, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  %and10 = and i8 %lsr, 18
  %spec.select = select i1 %tobool7.not, i8 %1, i8 %and10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lsr_data)
  %tobool13.not = icmp eq i32 %lsr_data, 0
  br i1 %tobool13.not, label %do.end.if.end16_crit_edge, label %if.then14

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %do.end
  %port15 = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 11
  %6 = ptrtoint ptr %port15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port15, align 4
  %port1.i = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 1
  %call.i.i = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port1.i, ptr noundef nonnull %data.addr, i8 noundef zeroext 0, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i, label %do.end.i, label %if.then14.edge_tty_recv.exit_crit_edge

if.then14.edge_tty_recv.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %edge_tty_recv.exit

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 32
  %sub.i = sub i32 1, %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202, i32 noundef %sub.i) #15
  br label %edge_tty_recv.exit

edge_tty_recv.exit:                               ; preds = %do.end.i, %if.then14.edge_tty_recv.exit_crit_edge
  call void @tty_flip_buffer_push(ptr noundef %port1.i) #11
  br label %if.end16

if.end16:                                         ; preds = %edge_tty_recv.exit, %do.end.if.end16_crit_edge
  %port17 = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 11
  %8 = ptrtoint ptr %port17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port17, align 4
  %conv19 = zext i8 %spec.select to i32
  %and20 = and i32 %conv19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end16.if.end23_crit_edge, label %if.then22

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %brk = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 27, i32 9
  %10 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brk, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %brk, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end16.if.end23_crit_edge
  %and25 = and i32 %conv19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end29_crit_edge, label %if.then27

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %overrun = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 27, i32 8
  %12 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %overrun, align 4
  %inc28 = add i32 %13, 1
  store i32 %inc28, ptr %overrun, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end23.if.end29_crit_edge
  %and31 = and i32 %conv19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end35_crit_edge, label %if.then33

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %parity = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 27, i32 7
  %14 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parity, align 4
  %inc34 = add i32 %15, 1
  store i32 %inc34, ptr %parity, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end29.if.end35_crit_edge
  %and37 = and i32 %conv19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end41_crit_edge, label %if.then39

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %frame = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 27, i32 6
  %16 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame, align 4
  %inc40 = add i32 %17, 1
  store i32 %inc40, ptr %frame, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end35.if.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_new_msr(ptr nocapture noundef %edge_port, i8 noundef zeroext %msr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_new_msr.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_new_msr, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !564

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 11
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv = zext i8 %msr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_new_msr.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.203, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv3 = zext i8 %msr to i32
  %and = and i32 %conv3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end33_crit_edge, label %if.then5

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then5:                                         ; preds = %do.end
  %port6 = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 11
  %2 = ptrtoint ptr %port6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port6, align 4
  %and9 = and i32 %conv3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then5.if.end12_crit_edge, label %if.then11

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %icount7 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %icount7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %icount7, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %icount7, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then5.if.end12_crit_edge
  %and14 = and i32 %conv3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end18_crit_edge, label %if.then16

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %dsr = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 27, i32 1
  %6 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsr, align 4
  %inc17 = add i32 %7, 1
  store i32 %inc17, ptr %dsr, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12.if.end18_crit_edge
  %and20 = and i32 %conv3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end24_crit_edge, label %if.then22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %dcd = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 27, i32 3
  %8 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcd, align 4
  %inc23 = add i32 %9, 1
  store i32 %inc23, ptr %dcd, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  %and26 = and i32 %conv3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end30_crit_edge, label %if.then28

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %rng = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 27, i32 2
  %10 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rng, align 4
  %inc29 = add i32 %11, 1
  store i32 %inc29, ptr %rng, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end24.if.end30_crit_edge
  %12 = ptrtoint ptr %port6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port6, align 4
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %13, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %do.end.if.end33_crit_edge
  %and35 = and i8 %msr, -16
  %shadow_msr = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 2
  %14 = ptrtoint ptr %shadow_msr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and35, ptr %shadow_msr, align 4
  %port37 = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 11
  %15 = ptrtoint ptr %port37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port37, align 4
  %port38 = getelementptr inbounds %struct.usb_serial_port, ptr %16, i32 0, i32 1
  %call39 = tail call ptr @tty_port_tty_get(ptr noundef %port38) #11
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end33.if.end49_crit_edge, label %land.lhs.true

if.end33.if.end49_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end33
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %call39, i32 0, i32 13, i32 2
  %17 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool42.not = icmp sgt i32 %18, -1
  %and45 = and i32 %conv3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %or.cond = or i1 %tobool46.not, %tobool42.not
  br i1 %or.cond, label %land.lhs.true.if.end49_crit_edge, label %if.then47

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_wakeup(ptr noundef nonnull %call39) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %land.lhs.true.if.end49_crit_edge, %if.end33.if.end49_crit_edge
  tail call void @tty_kref_put(ptr noundef %call39) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 232)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 232)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !220, !222, !223, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !241, !243, !244, !246, !247, !249, !250, !252, !254, !255, !257, !258, !260, !261, !262, !263, !265, !266, !268, !269, !270, !271, !273, !274, !276, !277, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !292, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !341, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !357, !358, !360, !361, !363, !364, !366, !367, !369, !370, !372, !373, !375, !376, !378, !379, !381, !382, !384, !385, !387, !388, !390, !391, !393, !394, !396, !397, !399, !400, !402, !403, !405, !406, !408, !409, !411, !412, !414, !415, !417, !418, !420, !421, !423, !424, !426, !427, !428, !430, !431, !433, !434, !435, !437, !438, !440, !441, !443, !444, !445, !446, !448, !449, !450, !451, !453, !454, !455, !457, !458, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !476, !477, !479, !480, !482, !483, !484, !486, !487, !489, !490, !492, !493, !495, !496, !498, !499, !500, !502, !503, !504, !506, !507, !508, !510, !511, !512, !513, !515, !516, !518, !519, !521, !522, !523, !525, !526, !527, !529, !530, !532, !533, !535, !536, !538, !539, !541, !542, !543, !544, !546, !548, !550, !552, !553}
!llvm.module.flags = !{!554, !555, !556, !557, !558, !559, !560, !561}
!llvm.ident = !{!562}

!0 = !{ptr @__initcall__kmod_io_ti__346_2742_usb_serial_module_init6, !1, !"__initcall__kmod_io_ti__346_2742_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/io_ti.c", i32 2742, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author347, !4, !"__UNIQUE_ID_author347", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/io_ti.c", i32 2744, i32 1}
!5 = !{ptr @__UNIQUE_ID_description348, !6, !"__UNIQUE_ID_description348", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/io_ti.c", i32 2745, i32 1}
!7 = !{ptr @__UNIQUE_ID_file349, !8, !"__UNIQUE_ID_file349", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/io_ti.c", i32 2746, i32 1}
!9 = !{ptr @__UNIQUE_ID_license350, !8, !"__UNIQUE_ID_license350", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware351, !11, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/io_ti.c", i32 2747, i32 1}
!12 = !{ptr @__param_ignore_cpu_rev, !13, !"__param_ignore_cpu_rev", i1 false, i1 false}
!13 = !{!"../drivers/usb/serial/io_ti.c", i32 2749, i32 1}
!14 = !{ptr @__UNIQUE_ID_ignore_cpu_revtype352, !13, !"__UNIQUE_ID_ignore_cpu_revtype352", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_ignore_cpu_rev353, !16, !"__UNIQUE_ID_ignore_cpu_rev353", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/io_ti.c", i32 2750, i32 1}
!17 = !{ptr @__param_default_uart_mode, !18, !"__param_default_uart_mode", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/io_ti.c", i32 2753, i32 1}
!19 = !{ptr @__UNIQUE_ID_default_uart_modetype354, !18, !"__UNIQUE_ID_default_uart_modetype354", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_default_uart_mode355, !21, !"__UNIQUE_ID_default_uart_mode355", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/io_ti.c", i32 2754, i32 1}
!22 = !{ptr @ignore_cpu_rev, !23, !"ignore_cpu_rev", i1 false, i1 false}
!23 = !{!"../drivers/usb/serial/io_ti.c", i32 212, i32 13}
!24 = !{ptr @default_uart_mode, !25, !"default_uart_mode", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/io_ti.c", i32 213, i32 12}
!26 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @id_table_combined, !28, !"id_table_combined", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/io_ti.c", i32 173, i32 35}
!29 = !{ptr @serial_drivers, !30, !"serial_drivers", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/io_ti.c", i32 2738, i32 41}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/serial/io_ti.c", i32 2667, i32 18}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/io_ti.c", i32 2665, i32 12}
!35 = !{ptr @edgeport_1port_device, !36, !"edgeport_1port_device", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/io_ti.c", i32 2662, i32 33}
!37 = !{ptr @edgeport_1port_id_table, !38, !"edgeport_1port_id_table", i1 false, i1 false}
!38 = !{!"../drivers/usb/serial/io_ti.c", i32 130, i32 35}
!39 = !{ptr @edge_startup.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/usb/serial/io_ti.c", i32 2495, i32 2}
!41 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @edge_startup.__key.4, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/usb/serial/io_ti.c", i32 2497, i32 2}
!44 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @edge_startup.__key.6, !43, !"__key", i1 false, i1 false}
!46 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/io_ti.c", i32 2457, i32 3}
!49 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @edge_heartbeat_work._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @edge_heartbeat_work._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/io_ti.c", i32 328, i32 2}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @read_download_mem.__UNIQUE_ID_ddebug240, !56, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!59 = !{ptr @read_download_mem.__UNIQUE_ID_ddebug241, !60, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!60 = !{!"../drivers/usb/serial/io_ti.c", i32 341, i32 4}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/io_ti.c", i32 354, i32 4}
!63 = !{ptr @read_download_mem.__UNIQUE_ID_ddebug242, !62, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/serial/io_ti.c", i32 266, i32 3}
!66 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ti_vread_sync.__UNIQUE_ID_ddebug238, !65, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!70 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !69, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/io_ti.c", i32 389, i32 4}
!75 = !{ptr @read_boot_mem.__UNIQUE_ID_ddebug243, !74, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/io_ti.c", i32 394, i32 2}
!78 = !{ptr @read_boot_mem.__UNIQUE_ID_ddebug244, !77, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/serial/io_ti.c", i32 1004, i32 24}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/serial/io_ti.c", i32 1009, i32 3}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @download_fw._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @download_fw._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/serial/io_ti.c", i32 1041, i32 3}
!88 = !{ptr @download_fw._entry.26, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @download_fw._entry_ptr.28, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/serial/io_ti.c", i32 967, i32 3}
!92 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @check_fw_sanity._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @check_fw_sanity._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/serial/io_ti.c", i32 975, i32 3}
!97 = !{ptr @check_fw_sanity._entry.31, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @check_fw_sanity._entry_ptr.33, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/serial/io_ti.c", i32 984, i32 3}
!101 = !{ptr @check_fw_sanity._entry.34, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @check_fw_sanity._entry_ptr.36, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/serial/io_ti.c", i32 582, i32 2}
!105 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @choose_config.__UNIQUE_ID_ddebug252, !104, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/serial/io_ti.c", i32 584, i32 2}
!109 = !{ptr @choose_config.__UNIQUE_ID_ddebug253, !108, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/serial/io_ti.c", i32 588, i32 3}
!112 = !{ptr @choose_config._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @choose_config._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/serial/io_ti.c", i32 1077, i32 2}
!116 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug271, !115, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/serial/io_ti.c", i32 1081, i32 3}
!120 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug272, !119, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/serial/io_ti.c", i32 1101, i32 3}
!123 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug273, !122, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/serial/io_ti.c", i32 1120, i32 3}
!126 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug274, !125, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/serial/io_ti.c", i32 1155, i32 3}
!129 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug275, !128, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/serial/io_ti.c", i32 1165, i32 4}
!132 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug276, !131, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/serial/io_ti.c", i32 1226, i32 5}
!135 = !{ptr @do_download_mode._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @do_download_mode._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/serial/io_ti.c", i32 1235, i32 4}
!139 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug277, !138, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/serial/io_ti.c", i32 1243, i32 4}
!142 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug278, !141, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/serial/io_ti.c", i32 1282, i32 4}
!145 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug279, !144, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/serial/io_ti.c", i32 1329, i32 5}
!148 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug280, !147, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!149 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/serial/io_ti.c", i32 1338, i32 5}
!151 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug281, !150, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/serial/io_ti.c", i32 1350, i32 4}
!154 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug282, !153, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!155 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/serial/io_ti.c", i32 1358, i32 4}
!157 = !{ptr @do_download_mode.__UNIQUE_ID_ddebug283, !156, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/serial/io_ti.c", i32 1361, i32 5}
!160 = !{ptr @do_download_mode._entry.56, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @do_download_mode._entry_ptr.58, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/serial/io_ti.c", i32 696, i32 3}
!164 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @check_i2c_image._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @check_i2c_image._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/serial/io_ti.c", i32 713, i32 4}
!169 = !{ptr @check_i2c_image.__UNIQUE_ID_ddebug255, !168, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!170 = !{ptr @.str.62, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/serial/io_ti.c", i32 717, i32 3}
!172 = !{ptr @check_i2c_image.__UNIQUE_ID_ddebug256, !171, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!173 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/serial/io_ti.c", i32 664, i32 3}
!175 = !{ptr @.str.64, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @valid_csum.__UNIQUE_ID_ddebug254, !174, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!177 = !{ptr @.str.65, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/serial/io_ti.c", i32 767, i32 3}
!179 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @get_manuf_info.__UNIQUE_ID_ddebug257, !178, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!181 = !{ptr @.str.67, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/serial/io_ti.c", i32 781, i32 2}
!183 = !{ptr @get_manuf_info.__UNIQUE_ID_ddebug258, !182, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!184 = !{ptr @.str.68, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/serial/io_ti.c", i32 782, i32 2}
!186 = !{ptr @get_manuf_info.__UNIQUE_ID_ddebug259, !185, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!187 = !{ptr @.str.69, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/serial/io_ti.c", i32 783, i32 2}
!189 = !{ptr @get_manuf_info.__UNIQUE_ID_ddebug260, !188, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!190 = !{ptr @.str.70, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/serial/io_ti.c", i32 784, i32 2}
!192 = !{ptr @get_manuf_info.__UNIQUE_ID_ddebug261, !191, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!193 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/serial/io_ti.c", i32 785, i32 2}
!195 = !{ptr @get_manuf_info.__UNIQUE_ID_ddebug262, !194, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!196 = !{ptr @.str.72, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/serial/io_ti.c", i32 786, i32 2}
!198 = !{ptr @get_manuf_info.__UNIQUE_ID_ddebug263, !197, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!199 = !{ptr @.str.73, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/serial/io_ti.c", i32 431, i32 2}
!201 = !{ptr @.str.74, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @write_boot_mem.__UNIQUE_ID_ddebug245, !200, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!203 = !{ptr @.str.75, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/serial/io_ti.c", i32 455, i32 2}
!205 = !{ptr @.str.76, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @write_i2c_mem.__UNIQUE_ID_ddebug246, !204, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!207 = !{ptr @.str.77, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/serial/io_ti.c", i32 470, i32 3}
!209 = !{ptr @write_i2c_mem.__UNIQUE_ID_ddebug247, !208, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!210 = !{ptr @.str.78, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/serial/io_ti.c", i32 488, i32 3}
!212 = !{ptr @write_i2c_mem.__UNIQUE_ID_ddebug248, !211, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!213 = !{ptr @write_i2c_mem._entry, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/usb/serial/io_ti.c", i32 503, i32 4}
!215 = !{ptr @write_i2c_mem._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.79, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/serial/io_ti.c", i32 1385, i32 2}
!218 = !{ptr @.str.80, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @do_boot_mode.__UNIQUE_ID_ddebug284, !217, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!220 = !{ptr @.str.81, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/serial/io_ti.c", i32 1394, i32 3}
!222 = !{ptr @do_boot_mode.__UNIQUE_ID_ddebug285, !221, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!223 = !{ptr @do_boot_mode.__UNIQUE_ID_ddebug286, !224, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!224 = !{!"../drivers/usb/serial/io_ti.c", i32 1431, i32 4}
!225 = !{ptr @.str.82, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/serial/io_ti.c", i32 1477, i32 3}
!227 = !{ptr @do_boot_mode.__UNIQUE_ID_ddebug287, !226, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!228 = !{ptr @.str.83, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/serial/io_ti.c", i32 1485, i32 4}
!230 = !{ptr @do_boot_mode.__UNIQUE_ID_ddebug288, !229, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!231 = !{ptr @.str.84, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/serial/io_ti.c", i32 1492, i32 3}
!233 = !{ptr @do_boot_mode.__UNIQUE_ID_ddebug289, !232, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!234 = !{ptr @.str.85, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/serial/io_ti.c", i32 1499, i32 2}
!236 = !{ptr @do_boot_mode.__UNIQUE_ID_ddebug290, !235, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!237 = !{ptr @.str.86, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/serial/io_ti.c", i32 876, i32 3}
!239 = !{ptr @.str.87, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug264, !238, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!241 = !{ptr @.str.88, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/serial/io_ti.c", i32 878, i32 3}
!243 = !{ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug265, !242, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!244 = !{ptr @.str.89, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/usb/serial/io_ti.c", i32 880, i32 3}
!246 = !{ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug266, !245, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!247 = !{ptr @.str.90, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/serial/io_ti.c", i32 889, i32 3}
!249 = !{ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug267, !248, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!250 = !{ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug268, !251, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!251 = !{!"../drivers/usb/serial/io_ti.c", i32 891, i32 3}
!252 = !{ptr @.str.91, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/serial/io_ti.c", i32 893, i32 3}
!254 = !{ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug269, !253, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!255 = !{ptr @.str.92, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/usb/serial/io_ti.c", i32 898, i32 2}
!257 = !{ptr @i2c_type_bootmode.__UNIQUE_ID_ddebug270, !256, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!258 = !{ptr @.str.93, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/serial/io_ti.c", i32 2476, i32 4}
!260 = !{ptr @.str.94, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @edge_calc_num_ports._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @edge_calc_num_ports._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @edge_port_probe.__key, !264, !"__key", i1 false, i1 false}
!264 = !{!"../drivers/usb/serial/io_ti.c", i32 2549, i32 2}
!265 = !{ptr @.str.95, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.96, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/serial/io_ti.c", i32 2564, i32 3}
!268 = !{ptr @.str.97, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @edge_port_probe._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @edge_port_probe._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.98, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/usb/serial/io_ti.c", i32 2569, i32 2}
!273 = !{ptr @edge_port_probe.__UNIQUE_ID_ddebug344, !272, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!274 = !{ptr @.str.99, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/usb/serial/io_ti.c", i32 2629, i32 8}
!276 = !{ptr @dev_attr_uart_mode, !275, !"dev_attr_uart_mode", i1 false, i1 false}
!277 = !{ptr @.str.100, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/usb/serial/io_ti.c", i32 2610, i32 22}
!279 = !{ptr @.str.101, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/usb/serial/io_ti.c", i32 2620, i32 2}
!281 = !{ptr @.str.102, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @uart_mode_store.__UNIQUE_ID_ddebug345, !280, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!283 = !{ptr @.str.103, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/serial/io_ti.c", i32 2625, i32 3}
!285 = !{ptr @uart_mode_store._entry, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @uart_mode_store._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.104, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/serial/io_ti.c", i32 1849, i32 3}
!289 = !{ptr @.str.105, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @edge_open._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @edge_open._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.106, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/usb/serial/io_ti.c", i32 1872, i32 2}
!294 = !{ptr @edge_open.__UNIQUE_ID_ddebug308, !293, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!295 = !{ptr @.str.108, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/usb/serial/io_ti.c", i32 1877, i32 3}
!297 = !{ptr @edge_open._entry.107, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @edge_open._entry_ptr.109, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.111, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/usb/serial/io_ti.c", i32 1885, i32 3}
!301 = !{ptr @edge_open._entry.110, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @edge_open._entry_ptr.112, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.114, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/usb/serial/io_ti.c", i32 1893, i32 3}
!305 = !{ptr @edge_open._entry.113, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @edge_open._entry_ptr.115, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.117, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/usb/serial/io_ti.c", i32 1902, i32 3}
!309 = !{ptr @edge_open._entry.116, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @edge_open._entry_ptr.118, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.119, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/usb/serial/io_ti.c", i32 1907, i32 2}
!313 = !{ptr @edge_open.__UNIQUE_ID_ddebug309, !312, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!314 = !{ptr @.str.120, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/usb/serial/io_ti.c", i32 1911, i32 2}
!316 = !{ptr @edge_open.__UNIQUE_ID_ddebug310, !315, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!317 = !{ptr @.str.122, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/usb/serial/io_ti.c", i32 1922, i32 4}
!319 = !{ptr @edge_open._entry.121, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @edge_open._entry_ptr.123, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.125, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/serial/io_ti.c", i32 1942, i32 3}
!323 = !{ptr @edge_open._entry.124, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @edge_open._entry_ptr.126, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.127, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/usb/serial/io_ti.c", i32 308, i32 2}
!327 = !{ptr @.str.128, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @purge_port.__UNIQUE_ID_ddebug239, !326, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!329 = !{ptr @.str.129, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/serial/io_ti.c", i32 1984, i32 2}
!331 = !{ptr @.str.130, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @edge_close.__UNIQUE_ID_ddebug311, !330, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!333 = !{ptr @.str.131, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/usb/serial/io_ti.c", i32 2004, i32 3}
!335 = !{ptr @.str.132, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @edge_write.__UNIQUE_ID_ddebug312, !334, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!337 = !{ptr @__func__.edge_send, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/usb/serial/io_ti.c", i32 2046, i32 36}
!339 = distinct !{null, !340, !"__print_once", i1 false, i1 false}
!340 = !{!"../drivers/usb/serial/io_ti.c", i32 2054, i32 3}
!341 = !{ptr @.str.133, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @edge_send._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @edge_send._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.134, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/usb/serial/io_ti.c", i32 2086, i32 2}
!346 = !{ptr @.str.135, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @edge_write_room.__UNIQUE_ID_ddebug313, !345, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!348 = !{ptr @.str.136, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/usb/serial/io_ti.c", i32 2237, i32 7}
!350 = !{ptr @.str.137, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug315, !349, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!352 = !{ptr @.str.138, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/usb/serial/io_ti.c", i32 2241, i32 7}
!354 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug316, !353, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!355 = !{ptr @.str.139, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/usb/serial/io_ti.c", i32 2245, i32 7}
!357 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug317, !356, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!358 = !{ptr @.str.140, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/usb/serial/io_ti.c", i32 2250, i32 7}
!360 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug318, !359, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!361 = !{ptr @.str.141, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/usb/serial/io_ti.c", i32 2258, i32 4}
!363 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug319, !362, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!364 = !{ptr @.str.142, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/usb/serial/io_ti.c", i32 2262, i32 4}
!366 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug320, !365, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!367 = !{ptr @.str.143, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/usb/serial/io_ti.c", i32 2266, i32 3}
!369 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug321, !368, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!370 = !{ptr @.str.144, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/usb/serial/io_ti.c", i32 2271, i32 3}
!372 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug322, !371, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!373 = !{ptr @.str.145, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/usb/serial/io_ti.c", i32 2274, i32 3}
!375 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug323, !374, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!376 = !{ptr @.str.146, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/usb/serial/io_ti.c", i32 2281, i32 3}
!378 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug324, !377, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!379 = !{ptr @.str.147, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/usb/serial/io_ti.c", i32 2283, i32 3}
!381 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug325, !380, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!382 = !{ptr @.str.148, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/usb/serial/io_ti.c", i32 2297, i32 3}
!384 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug326, !383, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!385 = !{ptr @.str.149, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/usb/serial/io_ti.c", i32 2300, i32 3}
!387 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug327, !386, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!388 = !{ptr @.str.150, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/usb/serial/io_ti.c", i32 2305, i32 3}
!390 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug328, !389, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!391 = !{ptr @.str.151, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/usb/serial/io_ti.c", i32 2308, i32 3}
!393 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug329, !392, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!394 = !{ptr @.str.152, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/serial/io_ti.c", i32 2328, i32 2}
!396 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug332, !395, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!397 = !{ptr @.str.153, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/usb/serial/io_ti.c", i32 2330, i32 2}
!399 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug333, !398, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!400 = !{ptr @.str.154, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/usb/serial/io_ti.c", i32 2331, i32 2}
!402 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug334, !401, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!403 = !{ptr @.str.155, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/usb/serial/io_ti.c", i32 2332, i32 2}
!405 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug335, !404, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!406 = !{ptr @.str.156, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/usb/serial/io_ti.c", i32 2333, i32 2}
!408 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug336, !407, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!409 = !{ptr @.str.157, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/usb/serial/io_ti.c", i32 2334, i32 2}
!411 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug337, !410, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!412 = !{ptr @.str.158, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/usb/serial/io_ti.c", i32 2335, i32 2}
!414 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug338, !413, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!415 = !{ptr @.str.159, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/usb/serial/io_ti.c", i32 2336, i32 2}
!417 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug339, !416, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!418 = !{ptr @.str.160, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/usb/serial/io_ti.c", i32 2337, i32 2}
!420 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug340, !419, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!421 = !{ptr @.str.161, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/usb/serial/io_ti.c", i32 2346, i32 3}
!423 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug341, !422, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!424 = !{ptr @.str.162, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/usb/serial/io_ti.c", i32 2431, i32 3}
!426 = !{ptr @.str.163, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @edge_break.__UNIQUE_ID_ddebug343, !425, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!428 = !{ptr @.str.164, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/usb/serial/io_ti.c", i32 2103, i32 2}
!430 = !{ptr @edge_chars_in_buffer.__UNIQUE_ID_ddebug314, !429, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!431 = !{ptr @.str.165, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/usb/serial/io_ti.c", i32 547, i32 2}
!433 = !{ptr @.str.166, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @tx_active.__UNIQUE_ID_ddebug249, !432, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!435 = !{ptr @.str.167, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/usb/serial/io_ti.c", i32 555, i32 2}
!437 = !{ptr @tx_active.__UNIQUE_ID_ddebug250, !436, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!438 = !{ptr @.str.168, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/usb/serial/io_ti.c", i32 566, i32 2}
!440 = !{ptr @tx_active.__UNIQUE_ID_ddebug251, !439, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!441 = !{ptr @.str.169, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/usb/serial/io_ti.c", i32 2133, i32 4}
!443 = !{ptr @.str.170, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @edge_throttle._entry, !442, !"_entry", i1 false, i1 false}
!445 = !{ptr @edge_throttle._entry_ptr, !442, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.171, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/usb/serial/io_ti.c", i32 2160, i32 4}
!448 = !{ptr @.str.172, !447, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @edge_unthrottle._entry, !447, !"_entry", i1 false, i1 false}
!450 = !{ptr @edge_unthrottle._entry_ptr, !447, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.174, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/usb/serial/io_ti.c", i32 2170, i32 4}
!453 = !{ptr @edge_unthrottle._entry.173, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @edge_unthrottle._entry_ptr.175, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.176, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/usb/serial/io_ti.c", i32 2414, i32 2}
!457 = !{ptr @.str.177, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @edge_tiocmget.__UNIQUE_ID_ddebug342, !456, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!459 = !{ptr @.str.178, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/usb/serial/io_ti.c", i32 1516, i32 2}
!461 = !{ptr @.str.179, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @restore_mcr.__UNIQUE_ID_ddebug291, !460, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!463 = !{ptr @.str.180, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/usb/serial/io_ti.c", i32 1640, i32 3}
!465 = !{ptr @.str.181, !464, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug294, !464, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!467 = !{ptr @.str.182, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/usb/serial/io_ti.c", i32 1644, i32 3}
!469 = !{ptr @edge_interrupt_callback._entry, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @edge_interrupt_callback._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.183, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/usb/serial/io_ti.c", i32 1650, i32 3}
!473 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug295, !472, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!474 = !{ptr @.str.184, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/usb/serial/io_ti.c", i32 1658, i32 3}
!476 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug296, !475, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!477 = !{ptr @.str.185, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/usb/serial/io_ti.c", i32 1664, i32 2}
!479 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug297, !478, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!480 = !{ptr @.str.187, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/usb/serial/io_ti.c", i32 1668, i32 3}
!482 = !{ptr @edge_interrupt_callback._entry.186, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @edge_interrupt_callback._entry_ptr.188, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.189, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/usb/serial/io_ti.c", i32 1675, i32 3}
!486 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug298, !485, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!487 = !{ptr @.str.190, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/usb/serial/io_ti.c", i32 1685, i32 4}
!489 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug299, !488, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!490 = !{ptr @.str.191, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/usb/serial/io_ti.c", i32 1690, i32 4}
!492 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug300, !491, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!493 = !{ptr @.str.192, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/usb/serial/io_ti.c", i32 1699, i32 3}
!495 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug301, !494, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!496 = !{ptr @.str.194, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/usb/serial/io_ti.c", i32 1705, i32 3}
!498 = !{ptr @edge_interrupt_callback._entry.193, !497, !"_entry", i1 false, i1 false}
!499 = !{ptr @edge_interrupt_callback._entry_ptr.195, !497, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.197, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/usb/serial/io_ti.c", i32 1715, i32 3}
!502 = !{ptr @edge_interrupt_callback._entry.196, !501, !"_entry", i1 false, i1 false}
!503 = !{ptr @edge_interrupt_callback._entry_ptr.198, !501, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.199, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/usb/serial/io_ti.c", i32 1590, i32 2}
!506 = !{ptr @.str.200, !505, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @handle_new_lsr.__UNIQUE_ID_ddebug293, !505, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!508 = !{ptr @.str.201, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/usb/serial/io_ti.c", i32 1795, i32 3}
!510 = !{ptr @.str.202, !509, !"<string literal>", i1 false, i1 false}
!511 = !{ptr @edge_tty_recv._entry, !509, !"_entry", i1 false, i1 false}
!512 = !{ptr @edge_tty_recv._entry_ptr, !509, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @.str.203, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/usb/serial/io_ti.c", i32 1553, i32 2}
!515 = !{ptr @handle_new_msr.__UNIQUE_ID_ddebug292, !514, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!516 = !{ptr @.str.204, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/usb/serial/io_ti.c", i32 1738, i32 3}
!518 = !{ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug302, !517, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!519 = !{ptr @.str.205, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/usb/serial/io_ti.c", i32 1741, i32 3}
!521 = !{ptr @edge_bulk_in_callback._entry, !520, !"_entry", i1 false, i1 false}
!522 = !{ptr @edge_bulk_in_callback._entry_ptr, !520, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @.str.207, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/usb/serial/io_ti.c", i32 1748, i32 3}
!525 = !{ptr @edge_bulk_in_callback._entry.206, !524, !"_entry", i1 false, i1 false}
!526 = !{ptr @edge_bulk_in_callback._entry_ptr.208, !524, !"_entry_ptr", i1 false, i1 false}
!527 = !{ptr @.str.209, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/usb/serial/io_ti.c", i32 1756, i32 3}
!529 = !{ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug303, !528, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!530 = !{ptr @.str.210, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/usb/serial/io_ti.c", i32 1767, i32 4}
!532 = !{ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug304, !531, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!533 = !{ptr @edge_bulk_in_callback._entry.211, !534, !"_entry", i1 false, i1 false}
!534 = !{!"../drivers/usb/serial/io_ti.c", i32 1785, i32 3}
!535 = !{ptr @edge_bulk_in_callback._entry_ptr.212, !534, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.213, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/usb/serial/io_ti.c", i32 1817, i32 3}
!538 = !{ptr @edge_bulk_out_callback.__UNIQUE_ID_ddebug305, !537, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!539 = distinct !{null, !540, !"__print_once", i1 false, i1 false}
!540 = !{!"../drivers/usb/serial/io_ti.c", i32 1821, i32 3}
!541 = !{ptr @.str.214, !540, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @edge_bulk_out_callback._entry, !540, !"_entry", i1 false, i1 false}
!543 = !{ptr @edge_bulk_out_callback._entry_ptr, !540, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.215, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/usb/serial/io_ti.c", i32 2705, i32 18}
!546 = !{ptr @.str.216, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/usb/serial/io_ti.c", i32 2703, i32 12}
!548 = !{ptr @edgeport_2port_device, !549, !"edgeport_2port_device", i1 false, i1 false}
!549 = !{!"../drivers/usb/serial/io_ti.c", i32 2700, i32 33}
!550 = !{ptr @edgeport_2port_id_table, !551, !"edgeport_2port_id_table", i1 false, i1 false}
!551 = !{!"../drivers/usb/serial/io_ti.c", i32 150, i32 35}
!552 = !{ptr @__param_str_ignore_cpu_rev, !13, !"__param_str_ignore_cpu_rev", i1 false, i1 false}
!553 = !{ptr @__param_str_default_uart_mode, !18, !"__param_str_default_uart_mode", i1 false, i1 false}
!554 = !{i32 1, !"wchar_size", i32 2}
!555 = !{i32 1, !"min_enum_size", i32 4}
!556 = !{i32 8, !"branch-target-enforcement", i32 0}
!557 = !{i32 8, !"sign-return-address", i32 0}
!558 = !{i32 8, !"sign-return-address-all", i32 0}
!559 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!560 = !{i32 7, !"uwtable", i32 1}
!561 = !{i32 7, !"frame-pointer", i32 2}
!562 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!563 = !{i8 0, i8 2}
!564 = !{i64 2148765842, i64 2148765847, i64 2148765860, i64 2148765904, i64 2148765938, i64 2148765959}
!565 = !{!"auto-init"}
