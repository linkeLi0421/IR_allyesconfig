; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/ti_usb_3410_5052.c_pt.bc'
source_filename = "../drivers/usb/serial/ti_usb_3410_5052.c"
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
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.ti_device = type { %struct.mutex, i32, ptr, i32, i8 }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ti_port = type { i32, i8, i8, i8, i32, ptr, ptr, %struct.spinlock, i32, i32 }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.ti_uart_config = type { i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.ti_firmware_header = type <{ i16, i8 }>
%struct.ti_write_data_bytes = type <{ i8, i8, i8, i16, i16, [0 x i8] }>
%struct.ti_port_status = type { i8, i8, i8, i8, i8 }

@__UNIQUE_ID_author238 = internal constant [66 x i8] c"ti_usb_3410_5052.author=Al Borchers <alborchers@steinerpoint.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [60 x i8] c"ti_usb_3410_5052.description=TI USB 3410/5052 Serial Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [58 x i8] c"ti_usb_3410_5052.file=drivers/usb/serial/ti_usb_3410_5052\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [29 x i8] c"ti_usb_3410_5052.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware242 = internal constant [37 x i8] c"ti_usb_3410_5052.firmware=ti_3410.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware243 = internal constant [37 x i8] c"ti_usb_3410_5052.firmware=ti_5052.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware244 = internal constant [38 x i8] c"ti_usb_3410_5052.firmware=mts_cdma.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware245 = internal constant [37 x i8] c"ti_usb_3410_5052.firmware=mts_gsm.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware246 = internal constant [38 x i8] c"ti_usb_3410_5052.firmware=mts_edge.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware247 = internal constant [42 x i8] c"ti_usb_3410_5052.firmware=mts_mt9234mu.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware248 = internal constant [43 x i8] c"ti_usb_3410_5052.firmware=mts_mt9234zba.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware249 = internal constant [44 x i8] c"ti_usb_3410_5052.firmware=moxa/moxa-1110.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware250 = internal constant [44 x i8] c"ti_usb_3410_5052.firmware=moxa/moxa-1130.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware251 = internal constant [44 x i8] c"ti_usb_3410_5052.firmware=moxa/moxa-1131.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware252 = internal constant [44 x i8] c"ti_usb_3410_5052.firmware=moxa/moxa-1150.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [44 x i8] c"ti_usb_3410_5052.firmware=moxa/moxa-1151.fw\00", section ".modinfo", align 1
@__initcall__kmod_ti_usb_3410_5052__254_506_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ti_1port_device, ptr @ti_2port_device, ptr null], [20 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_usb_3410_5052\00", [47 x i8] zeroinitializer }, align 32
@ti_id_table_combined = internal constant { [28 x %struct.usb_device_id], [160 x i8] } { [28 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1105, i16 13328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 -3024, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3832, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3831, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3824, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3823, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3822, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3820, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3819, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 20562, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 20818, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 20570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 20575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1203, i16 17731, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1203, i16 17739, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1203, i16 17740, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6753, i16 13328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6753, i16 13344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 20563, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4268, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4362, i16 4368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4362, i16 4400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4362, i16 4401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4362, i16 4432, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4362, i16 4433, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5296, i16 13328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@ti_1port_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @ti_id_table_3410, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @ti_startup, ptr null, ptr null, ptr @ti_release, ptr @ti_port_probe, ptr @ti_port_remove, ptr null, ptr null, ptr null, ptr @ti_open, ptr @ti_close, ptr @ti_write, ptr @ti_write_room, ptr null, ptr @ti_get_serial_info, ptr null, ptr @ti_set_termios, ptr @ti_break, ptr @ti_chars_in_buffer, ptr null, ptr @ti_tx_empty, ptr @ti_throttle, ptr @ti_unthrottle, ptr @ti_tiocmget, ptr @ti_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr null, ptr null, ptr null, ptr @ti_interrupt_callback, ptr null, ptr @ti_bulk_in_callback, ptr @ti_bulk_out_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@ti_2port_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.126, ptr @ti_id_table_5052, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.127, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 2, i8 0, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @ti_startup, ptr null, ptr null, ptr @ti_release, ptr @ti_port_probe, ptr @ti_port_remove, ptr null, ptr null, ptr null, ptr @ti_open, ptr @ti_close, ptr @ti_write, ptr @ti_write_room, ptr null, ptr @ti_get_serial_info, ptr null, ptr @ti_set_termios, ptr @ti_break, ptr @ti_chars_in_buffer, ptr null, ptr @ti_tx_empty, ptr @ti_throttle, ptr @ti_unthrottle, ptr @ti_tiocmget, ptr @ti_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr null, ptr null, ptr null, ptr @ti_interrupt_callback, ptr null, ptr @ti_bulk_in_callback, ptr @ti_bulk_out_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TI USB 3410 1 port adapter\00", [37 x i8] zeroinitializer }, align 32
@ti_id_table_3410 = internal constant { [24 x %struct.usb_device_id], [128 x i8] } { [24 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1105, i16 13328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 -3024, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3832, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3831, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3824, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3823, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3822, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3820, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 -3819, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1760, i16 793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1203, i16 17731, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1203, i16 17739, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1203, i16 17740, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6753, i16 13328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6753, i16 13344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 20563, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4268, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4362, i16 4368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4362, i16 4400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4362, i16 4401, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4362, i16 4432, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4362, i16 4433, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5296, i16 13328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti_usb_3410_5052_1\00", [45 x i8] zeroinitializer }, align 32
@ti_startup.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti_startup\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/usb/serial/ti_usb_3410_5052.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s - product 0x%4X, num configurations %d, configuration value %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ti_startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&tdev->td_open_close_lock\00", [38 x i8] zeroinitializer }, align 32
@ti_startup.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - device type is %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3410\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5052\00", [27 x i8] zeroinitializer }, align 32
@ti_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 577, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"missing endpoints\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_startup._entry_ptr = internal global ptr @ti_startup._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"moxa/moxa-%04x.fw\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_usb-v%04x-p%04x.fw\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mts_cdma.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mts_gsm.fw\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mts_edge.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mts_mt9234mu.fw\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mts_mt9234zba.fw\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti_3410.fw\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti_5052.fw\00", [21 x i8] zeroinitializer }, align 32
@ti_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 1633, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - firmware not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_download_firmware\00", [43 x i8] zeroinitializer }, align 32
@ti_download_firmware._entry_ptr = internal global ptr @ti_download_firmware._entry, section ".printk_index", align 4
@ti_download_firmware._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 1637, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - firmware too large %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@ti_download_firmware._entry_ptr.26 = internal global ptr @ti_download_firmware._entry.24, section ".printk_index", align 4
@ti_download_firmware._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 1655, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - error downloading firmware, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ti_download_firmware._entry_ptr.29 = internal global ptr @ti_download_firmware._entry.27, section ".printk_index", align 4
@ti_download_firmware.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.4, ptr @.str.30, i8 1, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - download successful\0A\00", [38 x i8] zeroinitializer }, align 32
@ti_do_download.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 1, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti_do_download\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - downloading firmware\0A\00", [37 x i8] zeroinitializer }, align 32
@ti_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&tport->tp_lock\00", [16 x i8] zeroinitializer }, align 32
@ti_open.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti_open\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - start interrupt in urb\0A\00", [35 x i8] zeroinitializer }, align 32
@ti_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 667, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - no interrupt urb\0A\00", [41 x i8] zeroinitializer }, align 32
@ti_open._entry_ptr = internal global ptr @ti_open._entry, section ".printk_index", align 4
@ti_open._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.4, i32 674, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - submit interrupt urb failed, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ti_open._entry_ptr.39 = internal global ptr @ti_open._entry.37, section ".printk_index", align 4
@ti_open._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.34, ptr @.str.4, i32 685, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - cannot send open command, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ti_open._entry_ptr.42 = internal global ptr @ti_open._entry.40, section ".printk_index", align 4
@ti_open._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.34, ptr @.str.4, i32 692, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - cannot send start command, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ti_open._entry_ptr.45 = internal global ptr @ti_open._entry.43, section ".printk_index", align 4
@ti_open._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.34, ptr @.str.4, i32 699, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - cannot clear input buffers, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ti_open._entry_ptr.48 = internal global ptr @ti_open._entry.46, section ".printk_index", align 4
@ti_open._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.34, ptr @.str.4, i32 705, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - cannot clear output buffers, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ti_open._entry_ptr.51 = internal global ptr @ti_open._entry.49, section ".printk_index", align 4
@ti_open._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.34, ptr @.str.4, i32 720, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - cannot send open command (2), %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ti_open._entry_ptr.54 = internal global ptr @ti_open._entry.52, section ".printk_index", align 4
@ti_open._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.34, ptr @.str.4, i32 727, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - cannot send start command (2), %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ti_open._entry_ptr.57 = internal global ptr @ti_open._entry.55, section ".printk_index", align 4
@ti_open._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.34, ptr @.str.4, i32 734, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - no read urb\0A\00", [46 x i8] zeroinitializer }, align 32
@ti_open._entry_ptr.60 = internal global ptr @ti_open._entry.58, section ".printk_index", align 4
@ti_open._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.34, ptr @.str.4, i32 743, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - submit read urb failed, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ti_open._entry_ptr.63 = internal global ptr @ti_open._entry.61, section ".printk_index", align 4
@ti_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 784, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - cannot send close port command, %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti_close\00", [23 x i8] zeroinitializer }, align 32
@ti_close._entry_ptr = internal global ptr @ti_close._entry, section ".printk_index", align 4
@__func__.ti_send = private unnamed_addr constant [8 x i8] c"ti_send\00", align 1
@ti_send.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ti_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.ti_send, ptr @.str.4, i32 1319, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - submit write urb failed, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ti_send._entry_ptr = internal global ptr @ti_send._entry, section ".printk_index", align 4
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.68, ptr @.str.69, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_write_room.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.4, ptr @.str.71, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti_write_room\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - returns %u\0A\00", [47 x i8] zeroinitializer }, align 32
@ti_set_termios.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.4, ptr @.str.73, i8 0, i8 -9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti_set_termios\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"%s - BaudRate=%d, wBaudRate=%d, wFlags=0x%04X, bDataBits=%d, bParity=%d, bStopBits=%d, cXon=%d, cXoff=%d, bUartMode=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@ti_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.4, i32 998, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - cannot set config on port %d, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ti_set_termios._entry_ptr = internal global ptr @ti_set_termios._entry, section ".printk_index", align 4
@ti_set_termios._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.72, ptr @.str.4, i32 1008, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s - cannot set modem control on port %d, %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ti_set_termios._entry_ptr.77 = internal global ptr @ti_set_termios._entry.75, section ".printk_index", align 4
@ti_write_byte.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.4, ptr @.str.79, i8 1, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti_write_byte\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - addr 0x%08lX, mask 0x%02X, byte 0x%02X\0A\00", [51 x i8] zeroinitializer }, align 32
@ti_write_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.4, i32 1537, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - failed, %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ti_write_byte._entry_ptr = internal global ptr @ti_write_byte._entry, section ".printk_index", align 4
@ti_break.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.4, ptr @.str.82, i8 1, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti_break\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - state = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ti_break.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.4, ptr @.str.83, i8 1, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - error setting break, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ti_chars_in_buffer.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.4, ptr @.str.71, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti_chars_in_buffer\00", [45 x i8] zeroinitializer }, align 32
@ti_get_lsr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 1371, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - get port status command failed, %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti_get_lsr\00", [21 x i8] zeroinitializer }, align 32
@ti_get_lsr._entry_ptr = internal global ptr @ti_get_lsr._entry, section ".printk_index", align 4
@ti_get_lsr.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.4, ptr @.str.87, i8 1, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - lsr 0x%02X\0A\00", [47 x i8] zeroinitializer }, align 32
@ti_unthrottle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.4, i32 890, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - cannot restart read, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti_unthrottle\00", [18 x i8] zeroinitializer }, align 32
@ti_unthrottle._entry_ptr = internal global ptr @ti_unthrottle._entry, section ".printk_index", align 4
@ti_tiocmget.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.4, ptr @.str.91, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti_tiocmget\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s - 0x%04X\0A\00", [19 x i8] zeroinitializer }, align 32
@ti_interrupt_callback.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.4, ptr @.str.93, i8 1, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_interrupt_callback\00", [42 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - urb shutting down, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ti_interrupt_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.4, i32 1122, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - nonzero urb status, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ti_interrupt_callback._entry_ptr = internal global ptr @ti_interrupt_callback._entry, section ".printk_index", align 4
@ti_interrupt_callback.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.4, ptr @.str.95, i8 1, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - bad packet size, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ti_interrupt_callback._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.4, i32 1132, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - hardware error, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ti_interrupt_callback._entry_ptr.98 = internal global ptr @ti_interrupt_callback._entry.96, section ".printk_index", align 4
@ti_interrupt_callback.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.4, ptr @.str.99, i8 1, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s - port_number %d, function %d, data 0x%02X\0A\00", [49 x i8] zeroinitializer }, align 32
@ti_interrupt_callback._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.92, ptr @.str.4, i32 1144, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - bad port number, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ti_interrupt_callback._entry_ptr.102 = internal global ptr @ti_interrupt_callback._entry.100, section ".printk_index", align 4
@ti_interrupt_callback._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.92, ptr @.str.4, i32 1157, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - DATA ERROR, port %d, data 0x%02X\0A\00", [57 x i8] zeroinitializer }, align 32
@ti_interrupt_callback._entry_ptr.105 = internal global ptr @ti_interrupt_callback._entry.103, section ".printk_index", align 4
@ti_interrupt_callback.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.4, ptr @.str.106, i8 1, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - port %d, msr 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@ti_interrupt_callback._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.92, ptr @.str.4, i32 1168, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - unknown interrupt code, 0x%02X\0A\00", [59 x i8] zeroinitializer }, align 32
@ti_interrupt_callback._entry_ptr.109 = internal global ptr @ti_interrupt_callback._entry.107, section ".printk_index", align 4
@ti_interrupt_callback._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.92, ptr @.str.4, i32 1176, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - resubmit interrupt urb failed, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ti_interrupt_callback._entry_ptr.112 = internal global ptr @ti_interrupt_callback._entry.110, section ".printk_index", align 4
@ti_handle_new_msr.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.4, ptr @.str.114, i8 1, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti_handle_new_msr\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - msr 0x%02X\0A\00", [47 x i8] zeroinitializer }, align 32
@ti_bulk_in_callback.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.4, ptr @.str.93, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti_bulk_in_callback\00", [44 x i8] zeroinitializer }, align 32
@ti_bulk_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.115, ptr @.str.4, i32 1199, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@ti_bulk_in_callback._entry_ptr = internal global ptr @ti_bulk_in_callback._entry, section ".printk_index", align 4
@ti_bulk_in_callback._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.4, i32 1206, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - stopping read!\0A\00", [43 x i8] zeroinitializer }, align 32
@ti_bulk_in_callback._entry_ptr.118 = internal global ptr @ti_bulk_in_callback._entry.116, section ".printk_index", align 4
@ti_bulk_in_callback.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.4, ptr @.str.119, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - port closed, dropping data\0A\00", [63 x i8] zeroinitializer }, align 32
@ti_bulk_in_callback._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.115, ptr @.str.4, i32 1235, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - resubmit read urb failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ti_bulk_in_callback._entry_ptr.122 = internal global ptr @ti_bulk_in_callback._entry.120, section ".printk_index", align 4
@ti_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.4, i32 1274, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - dropping data, %d bytes lost\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti_recv\00", [24 x i8] zeroinitializer }, align 32
@ti_recv._entry_ptr = internal global ptr @ti_recv._entry, section ".printk_index", align 4
@ti_bulk_out_callback.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.4, ptr @.str.93, i8 1, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_bulk_out_callback\00", [43 x i8] zeroinitializer }, align 32
@ti_bulk_out_callback.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ti_bulk_out_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.125, ptr @.str.4, i32 1257, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@ti_bulk_out_callback._entry_ptr = internal global ptr @ti_bulk_out_callback._entry, section ".printk_index", align 4
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TI USB 5052 2 port adapter\00", [37 x i8] zeroinitializer }, align 32
@ti_id_table_5052 = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1105, i16 20562, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 20818, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 20570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1105, i16 20575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti_usb_3410_5052_2\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.131 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.132 = internal global [8 x i64] [i64 6, i64 16, i64 793, i64 61712, i64 61713, i64 61714, i64 61716, i64 61717]
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 483, i32 41 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 506, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"ti_id_table_combined\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 386, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"ti_1port_device\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 417, i32 33 }
@___asan_gen_.145 = private unnamed_addr constant [16 x i8] c"ti_2port_device\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 450, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 422, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"ti_id_table_3410\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 351, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 420, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 517, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 527, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 534, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 577, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1586, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1594, i32 15 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1604, i32 17 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1607, i32 17 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1610, i32 17 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1613, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1616, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1624, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1626, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1633, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1637, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1654, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1659, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1561, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 606, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 664, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 667, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 674, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 684, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 691, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 698, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 704, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 719, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 726, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 734, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 742, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 782, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [21 x i8] c"ti_send.__print_once\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1318, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 393, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 827, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 985, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 997, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1007, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1518, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1537, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1078, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1085, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 843, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1369, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1375, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 889, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1036, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1119, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1122, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1127, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1132, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1139, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1143, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1156, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1162, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1167, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1175, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1400, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1195, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1198, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1206, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1215, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1234, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1273, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1253, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant [34 x i8] c"ti_bulk_out_callback.__print_once\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1256, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 455, i32 18 }
@___asan_gen_.519 = private unnamed_addr constant [17 x i8] c"ti_id_table_5052\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 378, i32 35 }
@___asan_gen_.522 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.523 = private constant [41 x i8] c"../drivers/usb/serial/ti_usb_3410_5052.c\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 453, i32 12 }
@llvm.compiler.used = appending global [183 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_firmware242, ptr @__UNIQUE_ID_firmware243, ptr @__UNIQUE_ID_firmware244, ptr @__UNIQUE_ID_firmware245, ptr @__UNIQUE_ID_firmware246, ptr @__UNIQUE_ID_firmware247, ptr @__UNIQUE_ID_firmware248, ptr @__UNIQUE_ID_firmware249, ptr @__UNIQUE_ID_firmware250, ptr @__UNIQUE_ID_firmware251, ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_license241, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_ti_usb_3410_5052__254_506_usb_serial_module_init6, ptr @ti_bulk_in_callback._entry, ptr @ti_bulk_in_callback._entry.116, ptr @ti_bulk_in_callback._entry.120, ptr @ti_bulk_in_callback._entry_ptr, ptr @ti_bulk_in_callback._entry_ptr.118, ptr @ti_bulk_in_callback._entry_ptr.122, ptr @ti_bulk_out_callback._entry, ptr @ti_bulk_out_callback._entry_ptr, ptr @ti_close._entry, ptr @ti_close._entry_ptr, ptr @ti_download_firmware._entry, ptr @ti_download_firmware._entry.24, ptr @ti_download_firmware._entry.27, ptr @ti_download_firmware._entry_ptr, ptr @ti_download_firmware._entry_ptr.26, ptr @ti_download_firmware._entry_ptr.29, ptr @ti_get_lsr._entry, ptr @ti_get_lsr._entry_ptr, ptr @ti_interrupt_callback._entry, ptr @ti_interrupt_callback._entry.100, ptr @ti_interrupt_callback._entry.103, ptr @ti_interrupt_callback._entry.107, ptr @ti_interrupt_callback._entry.110, ptr @ti_interrupt_callback._entry.96, ptr @ti_interrupt_callback._entry_ptr, ptr @ti_interrupt_callback._entry_ptr.102, ptr @ti_interrupt_callback._entry_ptr.105, ptr @ti_interrupt_callback._entry_ptr.109, ptr @ti_interrupt_callback._entry_ptr.112, ptr @ti_interrupt_callback._entry_ptr.98, ptr @ti_open._entry, ptr @ti_open._entry.37, ptr @ti_open._entry.40, ptr @ti_open._entry.43, ptr @ti_open._entry.46, ptr @ti_open._entry.49, ptr @ti_open._entry.52, ptr @ti_open._entry.55, ptr @ti_open._entry.58, ptr @ti_open._entry.61, ptr @ti_open._entry_ptr, ptr @ti_open._entry_ptr.39, ptr @ti_open._entry_ptr.42, ptr @ti_open._entry_ptr.45, ptr @ti_open._entry_ptr.48, ptr @ti_open._entry_ptr.51, ptr @ti_open._entry_ptr.54, ptr @ti_open._entry_ptr.57, ptr @ti_open._entry_ptr.60, ptr @ti_open._entry_ptr.63, ptr @ti_recv._entry, ptr @ti_recv._entry_ptr, ptr @ti_send._entry, ptr @ti_send._entry_ptr, ptr @ti_set_termios._entry, ptr @ti_set_termios._entry.75, ptr @ti_set_termios._entry_ptr, ptr @ti_set_termios._entry_ptr.77, ptr @ti_startup._entry, ptr @ti_startup._entry_ptr, ptr @ti_unthrottle._entry, ptr @ti_unthrottle._entry_ptr, ptr @ti_write_byte._entry, ptr @ti_write_byte._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @ti_id_table_combined, ptr @ti_1port_device, ptr @ti_2port_device, ptr @.str.1, ptr @ti_id_table_3410, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ti_startup.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ti_port_probe.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @ti_send.__print_once, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @ti_bulk_out_callback.__print_once, ptr @.str.126, ptr @ti_id_table_5052, ptr @.str.127], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_id_table_combined to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_1port_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_2port_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_id_table_3410 to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_download_firmware._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_download_firmware._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_open._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_open._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_open._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_open._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_open._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_open._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_open._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_open._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_open._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_send.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_set_termios._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_write_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_get_lsr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_unthrottle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_interrupt_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_interrupt_callback._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_interrupt_callback._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_interrupt_callback._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_interrupt_callback._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_interrupt_callback._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bulk_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bulk_in_callback._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bulk_in_callback._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bulk_out_callback.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_bulk_out_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_id_table_5052 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @ti_id_table_combined) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_startup(ptr noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_startup.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_startup, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %bNumConfigurations = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 13
  %5 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bNumConfigurations, align 1
  %conv6 = zext i8 %6 to i32
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %actconfig, align 4
  %bConfigurationValue = getelementptr inbounds %struct.usb_config_descriptor, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %bConfigurationValue to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bConfigurationValue, align 1
  %conv7 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_startup.__UNIQUE_ID_ddebug255, ptr noundef %dev4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 108) #13
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %do.body12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body12:                                        ; preds = %do.end
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @ti_startup.__key) #10
  %td_serial = getelementptr inbounds %struct.ti_device, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %td_serial to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %serial, ptr %td_serial, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %private.i, align 4
  %type = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %15, @ti_1port_device
  br i1 %cmp, label %if.then16, label %do.body12.do.body18_crit_edge

do.body12.do.body18_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %td_is_3410 = getelementptr inbounds %struct.ti_device, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %td_is_3410 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %td_is_3410, align 4
  br label %do.body18

do.body18:                                        ; preds = %if.then16, %do.body12.do.body18_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_startup.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_startup, %if.then30)) #10
          to label %do.end36 [label %if.then30], !srcloc !306

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %dev31 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %td_is_341032 = getelementptr inbounds %struct.ti_device, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %td_is_341032 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %td_is_341032, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool33.not = icmp eq i32 %18, 0
  %cond = select i1 %tobool33.not, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_startup.__UNIQUE_ID_ddebug256, ptr noundef %dev31, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.body18
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 7
  %19 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2577, i16 %20)
  %cmp41 = icmp eq i16 %20, 2577
  br i1 %cmp41, label %if.then43, label %do.end36.if.end45_crit_edge

do.end36.if.end45_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %do.end36
  %idProduct39 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %21 = ptrtoint ptr %idProduct39 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %idProduct39, align 2
  %23 = and i16 %22, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 12305, i16 %23)
  %switch = icmp eq i16 %23, 12305
  br i1 %switch, label %sw.bb, label %if.then43.if.end45_crit_edge

if.then43.if.end45_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

sw.bb:                                            ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %td_rs485_only = getelementptr inbounds %struct.ti_device, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %td_rs485_only to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %td_rs485_only, align 8
  br label %if.end45

if.end45:                                         ; preds = %sw.bb, %if.then43.if.end45_crit_edge, %do.end36.if.end45_crit_edge
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %bNumConfigurations50 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 13
  %25 = ptrtoint ptr %bNumConfigurations50 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bNumConfigurations50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp52 = icmp eq i8 %26, 1
  br i1 %cmp52, label %land.lhs.true, label %if.end45.if.end68_crit_edge

if.end45.if.end68_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end45
  %27 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %interface, align 4
  %cur_altsetting46 = getelementptr inbounds %struct.usb_interface, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %cur_altsetting46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur_altsetting46, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp54 = icmp eq i8 %32, 1
  br i1 %cmp54, label %if.then56, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then56:                                        ; preds = %land.lhs.true
  %call57 = tail call fastcc i32 @ti_download_firmware(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %if.end61, label %if.then56.free_tdev_crit_edge

if.then56.free_tdev_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_tdev

if.end61:                                         ; preds = %if.then56
  %td_is_341062 = getelementptr inbounds %struct.ti_device, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %td_is_341062 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %td_is_341062, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool63.not = icmp eq i32 %34, 0
  br i1 %tobool63.not, label %if.end61.free_tdev_crit_edge, label %if.then64

if.end61.free_tdev_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_tdev

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %call65 = tail call i32 @msleep_interruptible(i32 noundef 100) #10
  %call66 = tail call i32 @usb_reset_device(ptr noundef %1) #10
  br label %free_tdev

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %if.end45.if.end68_crit_edge
  %actconfig69 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 20
  %35 = ptrtoint ptr %actconfig69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %actconfig69, align 4
  %bConfigurationValue71 = getelementptr inbounds %struct.usb_config_descriptor, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %bConfigurationValue71 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bConfigurationValue71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp73 = icmp eq i8 %38, 1
  br i1 %cmp73, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %call76 = tail call i32 @usb_driver_set_configuration(ptr noundef %1, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  %spec.select = select i1 %tobool77.not, i32 -19, i32 %call76
  br label %free_tdev

if.end79:                                         ; preds = %if.end68
  %num_bulk_in = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 10
  %39 = ptrtoint ptr %num_bulk_in to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_bulk_in, align 1
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 6
  %41 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp82 = icmp ult i8 %40, %42
  br i1 %cmp82, label %if.end79.do.end92_crit_edge, label %lor.lhs.false

if.end79.do.end92_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end92

lor.lhs.false:                                    ; preds = %if.end79
  %num_bulk_out = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 11
  %43 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_bulk_out, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %42)
  %cmp87 = icmp ult i8 %44, %42
  br i1 %cmp87, label %lor.lhs.false.do.end92_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.do.end92_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end92

do.end92:                                         ; preds = %lor.lhs.false.do.end92_crit_edge, %if.end79.do.end92_crit_edge
  %45 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %interface, align 4
  %dev94 = getelementptr inbounds %struct.usb_interface, ptr %46, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.10) #14
  br label %free_tdev

free_tdev:                                        ; preds = %do.end92, %if.then75, %if.then64, %if.end61.free_tdev_crit_edge, %if.then56.free_tdev_crit_edge
  %status.0 = phi i32 [ %call57, %if.then56.free_tdev_crit_edge ], [ %spec.select, %if.then75 ], [ -19, %do.end92 ], [ -19, %if.then64 ], [ -19, %if.end61.free_tdev_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %47 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %private.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_tdev, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %free_tdev ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_release(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %tp_lock = getelementptr inbounds %struct.ti_port, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %tp_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @ti_port_probe.__key, i16 noundef signext 3) #10
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 8
  %port2 = getelementptr inbounds %struct.usb_serial, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port2, align 4
  %cmp = icmp eq ptr %4, %port
  %spec.select = select i1 %cmp, i32 65440, i32 65456
  %5 = getelementptr inbounds %struct.ti_port, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 8
  %tp_port = getelementptr inbounds %struct.ti_port, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %tp_port to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %port, ptr %tp_port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %2, i32 0, i32 15
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %tp_tdev = getelementptr inbounds %struct.ti_port, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %tp_tdev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %tp_tdev, align 4
  %td_rs485_only = getelementptr inbounds %struct.ti_device, ptr %9, i32 0, i32 4
  %11 = ptrtoint ptr %td_rs485_only to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %td_rs485_only, align 4, !range !307
  %13 = getelementptr inbounds %struct.ti_port, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %13, align 2
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %16 = load ptr, ptr %tp_tdev, align 4
  %td_is_3410 = getelementptr inbounds %struct.ti_device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %td_is_3410 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %td_is_3410, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not = icmp eq i32 %18, 0
  br i1 %tobool15.not, label %if.then16, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %drain_delay = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 18
  %19 = ptrtoint ptr %drain_delay to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %drain_delay, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %tp_tdev = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %tp_tdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tp_tdev, align 4
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %7, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tp_msr = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %tp_msr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tp_msr, align 4
  %tp_shadow_mcr = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %tp_shadow_mcr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tp_shadow_mcr, align 1
  %11 = or i8 %10, 48
  store i8 %11, ptr %tp_shadow_mcr, align 1
  %td_open_port_count = getelementptr inbounds %struct.ti_device, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %td_open_port_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %td_open_port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %do.body, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_open.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_open, %if.then10)) #10
          to label %do.end [label %if.then10], !srcloc !306

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev11 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_open.__UNIQUE_ID_ddebug257, ptr noundef %dev11, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %td_serial = getelementptr inbounds %struct.ti_device, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %td_serial to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %td_serial, align 4
  %port13 = getelementptr inbounds %struct.usb_serial, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %port13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port13, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interrupt_in_urb, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34) #14
  br label %release_lock

if.end20:                                         ; preds = %do.end
  %context = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %7, ptr %context, align 4
  %call21 = tail call i32 @usb_submit_urb(ptr noundef nonnull %19, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.if.end29_crit_edge, label %do.end26

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %dev27 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.34, i32 noundef %call21) #14
  br label %release_lock

if.end29:                                         ; preds = %if.end20.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %tobool30.not = icmp eq ptr %tty, null
  br i1 %tobool30.not, label %if.end29.if.end32_crit_edge, label %if.then31

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  tail call void @ti_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef %termios)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %25 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port_number.i, align 4
  %conv.i = zext i8 %26 to i16
  %add.i = add nuw nsw i16 %conv.i, 3
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 8
  %shl.i.i.i = shl i32 %28, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 137, i16 noundef zeroext %add.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool34.not = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %dev39 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.34, i32 noundef %call1.i.i) #14
  br label %unlink_int_urb

if.end40:                                         ; preds = %if.end32
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port_number.i, align 4
  %conv.i186 = zext i8 %34 to i16
  %add.i187 = add nuw nsw i16 %conv.i186, 3
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %32, align 8
  %shl.i.i.i188 = shl i32 %36, 8
  %or.i.i189 = or i32 %shl.i.i.i188, -2147483648
  %call1.i.i190 = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i.i189, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add.i187, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i190)
  %tobool42.not = icmp sgt i32 %call1.i.i190, -1
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %dev47 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.34, i32 noundef %call1.i.i190) #14
  br label %unlink_int_urb

if.end48:                                         ; preds = %if.end40
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %port_number.i, align 4
  %conv.i192 = zext i8 %42 to i16
  %add.i193 = add nuw nsw i16 %conv.i192, 3
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 8
  %shl.i.i.i194 = shl i32 %44, 8
  %or.i.i195 = or i32 %shl.i.i.i194, -2147483648
  %call1.i.i196 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i.i195, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 128, i16 noundef zeroext %add.i193, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i196)
  %tobool50.not = icmp sgt i32 %call1.i.i196, -1
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %dev55 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.34, i32 noundef %call1.i.i196) #14
  br label %unlink_int_urb

if.end56:                                         ; preds = %if.end48
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %port_number.i, align 4
  %conv.i198 = zext i8 %50 to i16
  %add.i199 = add nuw nsw i16 %conv.i198, 3
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %48, align 8
  %shl.i.i.i200 = shl i32 %52, 8
  %or.i.i201 = or i32 %shl.i.i.i200, -2147483648
  %call1.i.i202 = tail call i32 @usb_control_msg(ptr noundef %48, i32 noundef %or.i.i201, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add.i199, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i202)
  %tobool58.not = icmp sgt i32 %call1.i.i202, -1
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %dev63 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.34, i32 noundef %call1.i.i202) #14
  br label %unlink_int_urb

if.end64:                                         ; preds = %if.end56
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %53 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_urb, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pipe, align 4
  %call65 = tail call i32 @usb_clear_halt(ptr noundef %5, i32 noundef %56) #10
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %57 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_urb, align 4
  %pipe66 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %pipe66 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pipe66, align 4
  %call67 = tail call i32 @usb_clear_halt(ptr noundef %5, i32 noundef %60) #10
  br i1 %tobool30.not, label %if.end64.if.end71_crit_edge, label %if.then69

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %termios70 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  tail call void @ti_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef %termios70)
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end64.if.end71_crit_edge
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %port, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %port_number.i, align 4
  %conv.i204 = zext i8 %66 to i16
  %add.i205 = add nuw nsw i16 %conv.i204, 3
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %64, align 8
  %shl.i.i.i206 = shl i32 %68, 8
  %or.i.i207 = or i32 %shl.i.i.i206, -2147483648
  %call1.i.i208 = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or.i.i207, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 137, i16 noundef zeroext %add.i205, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i208)
  %tobool73.not = icmp sgt i32 %call1.i.i208, -1
  br i1 %tobool73.not, label %if.end79, label %do.end77

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %dev78 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.34, i32 noundef %call1.i.i208) #14
  br label %unlink_int_urb

if.end79:                                         ; preds = %if.end71
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %port, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %73 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %port_number.i, align 4
  %conv.i210 = zext i8 %74 to i16
  %add.i211 = add nuw nsw i16 %conv.i210, 3
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %72, align 8
  %shl.i.i.i212 = shl i32 %76, 8
  %or.i.i213 = or i32 %shl.i.i.i212, -2147483648
  %call1.i.i214 = tail call i32 @usb_control_msg(ptr noundef %72, i32 noundef %or.i.i213, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add.i211, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i214)
  %tobool81.not = icmp sgt i32 %call1.i.i214, -1
  br i1 %tobool81.not, label %if.end87, label %do.end85

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %dev86 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.34, i32 noundef %call1.i.i214) #14
  br label %unlink_int_urb

if.end87:                                         ; preds = %if.end79
  %77 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read_urb, align 4
  %tobool89.not = icmp eq ptr %78, null
  br i1 %tobool89.not, label %do.end93, label %if.end95

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %dev94 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.34) #14
  br label %unlink_int_urb

if.end95:                                         ; preds = %if.end87
  %tp_read_urb_state = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 8
  %79 = ptrtoint ptr %tp_read_urb_state to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %tp_read_urb_state, align 4
  %context96 = getelementptr inbounds %struct.urb, ptr %78, i32 0, i32 27
  %80 = ptrtoint ptr %context96 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %1, ptr %context96, align 4
  %call97 = tail call i32 @usb_submit_urb(ptr noundef nonnull %78, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end104, label %do.end102

do.end102:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %dev103 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev103, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.34, i32 noundef %call97) #14
  br label %unlink_int_urb

if.end104:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %1, align 4
  %82 = ptrtoint ptr %td_open_port_count to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %td_open_port_count, align 4
  %inc = add i32 %83, 1
  store i32 %inc, ptr %td_open_port_count, align 4
  br label %release_lock

unlink_int_urb:                                   ; preds = %do.end102, %do.end93, %do.end85, %do.end77, %do.end62, %do.end54, %do.end46, %do.end38
  %status.0 = phi i32 [ %call1.i.i, %do.end38 ], [ %call1.i.i190, %do.end46 ], [ %call1.i.i196, %do.end54 ], [ %call1.i.i202, %do.end62 ], [ %call1.i.i208, %do.end77 ], [ %call1.i.i214, %do.end85 ], [ %call97, %do.end102 ], [ -22, %do.end93 ]
  %84 = ptrtoint ptr %td_open_port_count to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %td_open_port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp107 = icmp eq i32 %85, 0
  br i1 %cmp107, label %if.then109, label %unlink_int_urb.release_lock_crit_edge

unlink_int_urb.release_lock_crit_edge:            ; preds = %unlink_int_urb
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_lock

if.then109:                                       ; preds = %unlink_int_urb
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %port, align 8
  %port111 = getelementptr inbounds %struct.usb_serial, ptr %87, i32 0, i32 12
  %88 = ptrtoint ptr %port111 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %port111, align 4
  %interrupt_in_urb113 = getelementptr inbounds %struct.usb_serial_port, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %interrupt_in_urb113 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %interrupt_in_urb113, align 4
  tail call void @usb_kill_urb(ptr noundef %91) #10
  br label %release_lock

release_lock:                                     ; preds = %if.then109, %unlink_int_urb.release_lock_crit_edge, %if.end104, %do.end26, %do.end18
  %status.1 = phi i32 [ %call21, %do.end26 ], [ %status.0, %if.then109 ], [ %status.0, %unlink_int_urb.release_lock_crit_edge ], [ 0, %if.end104 ], [ -22, %do.end18 ]
  tail call void @mutex_unlock(ptr noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %release_lock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %release_lock ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %7 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #10
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %9 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %10) #10
  %tp_write_urb_in_use = getelementptr inbounds %struct.ti_port, ptr %5, i32 0, i32 9
  %11 = ptrtoint ptr %tp_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tp_write_urb_in_use, align 4
  %tp_lock = getelementptr inbounds %struct.ti_port, ptr %5, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock) #10
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %12 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %out, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call4) #10
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
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i.i, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool.not = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end12

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %call1.i.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end12, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #10
  %td_open_port_count = getelementptr inbounds %struct.ti_device, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %td_open_port_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %td_open_port_count, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %td_open_port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp14 = icmp eq i32 %dec, 0
  br i1 %cmp14, label %if.then16, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port, align 8
  %port18 = getelementptr inbounds %struct.usb_serial, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %port18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port18, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %30) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end.if.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tp_lock = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 7
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock) #10
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %call10 = tail call i32 @__kfifo_in(ptr noundef %write_fifo, ptr noundef %data, i32 noundef %count) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call6) #10
  tail call fastcc void @ti_send(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end2 ], [ 0, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tp_lock = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock) #10
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22
  %mask = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %add = add i32 %5, 1
  %6 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  %sub.neg = sub i32 %9, %7
  %sub7 = add i32 %add, %sub.neg
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call3) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_write_room.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_write_room, %if.then)) #10
          to label %do.end17 [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_write_room.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, i32 noundef %sub7) #10
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry
  ret i32 %sub7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ti_get_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %ss) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tp_tdev = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %tp_tdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tp_tdev, align 4
  %td_is_3410 = getelementptr inbounds %struct.ti_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %td_is_3410 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %td_is_3410, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i32 460800, i32 921600
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 7
  %8 = ptrtoint ptr %baud_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %baud_base, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_set_termios(ptr noundef %tty, ptr noundef %port, ptr nocapture noundef readnone %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 10) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tp_uart_mode = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %tp_uart_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tp_uart_mode, align 2
  %bUartMode = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 7
  %5 = ptrtoint ptr %bUartMode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %bUartMode, align 1
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  %8 = trunc i32 %7 to i8
  %9 = lshr i8 %8, 4
  %switch.idx.cast = and i8 %9, 3
  %bDataBits11 = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 2
  %10 = ptrtoint ptr %bDataBits11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %switch.idx.cast, ptr %bDataBits11, align 4
  %and14 = and i32 %7, -1073741825
  store i32 %and14, ptr %c_cflag, align 4
  %and17 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else33, label %if.then19

if.then19:                                        ; preds = %if.end
  %and22 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %bParity31 = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 3
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %bParity31 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %bParity31, align 1
  br label %if.end38

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bParity31 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %bParity31, align 1
  br label %if.end38

if.else33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bParity37 = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 3
  %13 = ptrtoint ptr %bParity37 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bParity37, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.else33, %if.else, %if.then24
  %wflags.0 = phi i16 [ 24584, %if.then24 ], [ 24584, %if.else ], [ 24576, %if.else33 ]
  %14 = trunc i32 %7 to i8
  %15 = lshr i8 %14, 5
  %16 = and i8 %15, 2
  %17 = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %16, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and14)
  %tobool50.not = icmp sgt i32 %and14, -1
  br i1 %tobool50.not, label %if.else64, label %if.then51

if.then51:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %and54 = and i32 %7, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %cmp.not = icmp ne i32 %and54, 0
  %19 = zext i1 %cmp.not to i16
  %spec.select = or i16 %wflags.0, %19
  %20 = or i16 %spec.select, 32
  br label %if.end66

if.else64:                                        ; preds = %if.end38
  %tp_lock.i = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock.i) #10
  %tp_read_urb_state.i = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %tp_read_urb_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tp_read_urb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp5.i = icmp eq i32 %22, 2
  %23 = ptrtoint ptr %tp_read_urb_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tp_read_urb_state.i, align 4
  br i1 %cmp5.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #12
  %tp_port.i = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %tp_port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tp_port.i, align 4
  %read_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_urb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock.i, i32 noundef %call2.i) #10
  %context.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %1, ptr %context.i, align 4
  %call9.i = tail call i32 @usb_submit_urb(ptr noundef %27, i32 noundef 3264) #10
  br label %if.end66

if.else.i:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock.i, i32 noundef %call2.i) #10
  br label %if.end66

if.end66:                                         ; preds = %if.else.i, %if.then.i, %if.then51
  %wflags.2 = phi i16 [ %20, %if.then51 ], [ %wflags.0, %if.then.i ], [ %wflags.0, %if.else.i ]
  %29 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %termios, align 4
  %31 = and i32 %30, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %if.end66.if.end99_crit_edge, label %if.then74

if.end66.if.end99_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then74:                                        ; preds = %if.end66
  %and68 = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %cXon = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 5
  %35 = ptrtoint ptr %cXon to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %cXon, align 1
  %arrayidx78 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %36 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx78, align 1
  %cXoff = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 6
  %38 = ptrtoint ptr %cXoff to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %cXoff, align 8
  br i1 %tobool69.not, label %if.else87, label %if.then83

if.then83:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %39 = or i16 %wflags.2, 256
  br label %if.end89

if.else87:                                        ; preds = %if.then74
  %tp_lock.i250 = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 7
  %call2.i251 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock.i250) #10
  %tp_read_urb_state.i252 = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %tp_read_urb_state.i252 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tp_read_urb_state.i252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp5.i253 = icmp eq i32 %41, 2
  %42 = ptrtoint ptr %tp_read_urb_state.i252 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %tp_read_urb_state.i252, align 4
  br i1 %cmp5.i253, label %if.then.i258, label %if.else.i259

if.then.i258:                                     ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  %tp_port.i254 = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %tp_port.i254 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tp_port.i254, align 4
  %read_urb.i255 = getelementptr inbounds %struct.usb_serial_port, ptr %44, i32 0, i32 14
  %45 = ptrtoint ptr %read_urb.i255 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_urb.i255, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock.i250, i32 noundef %call2.i251) #10
  %context.i256 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %context.i256 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %1, ptr %context.i256, align 4
  %call9.i257 = tail call i32 @usb_submit_urb(ptr noundef %46, i32 noundef 3264) #10
  br label %if.end89

if.else.i259:                                     ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock.i250, i32 noundef %call2.i251) #10
  br label %if.end89

if.end89:                                         ; preds = %if.else.i259, %if.then.i258, %if.then83
  %wflags.3 = phi i16 [ %39, %if.then83 ], [ %wflags.2, %if.then.i258 ], [ %wflags.2, %if.else.i259 ]
  %48 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %termios, align 4
  %50 = trunc i32 %49 to i16
  %51 = lshr i16 %50, 4
  %52 = and i16 %51, 64
  %53 = or i16 %52, %wflags.3
  br label %if.end99

if.end99:                                         ; preds = %if.end89, %if.end66.if.end99_crit_edge
  %wflags.4 = phi i16 [ %wflags.2, %if.end66.if.end99_crit_edge ], [ %53, %if.end89 ]
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool101.not = icmp eq i32 %call.i, 0
  %spec.store.select = select i1 %tobool101.not, i32 9600, i32 %call.i
  %tp_tdev = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 5
  %54 = ptrtoint ptr %tp_tdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tp_tdev, align 4
  %td_is_3410 = getelementptr inbounds %struct.ti_device, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %td_is_3410 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %td_is_3410, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool104.not = icmp eq i32 %57, 0
  %div = sdiv i32 %spec.store.select, 2
  %add.pn.v = select i1 %tobool104.not, i32 461538, i32 923077
  %add.pn = add nsw i32 %add.pn.v, %div
  %wbaudrate.0.in = sdiv i32 %add.pn, %spec.store.select
  %wbaudrate.0 = trunc i32 %wbaudrate.0.in to i16
  %58 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %c_cflag, align 4
  %and116 = and i32 %59, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %cmp117.not = icmp eq i32 %and116, 0
  br i1 %cmp117.not, label %if.end99.do.body_crit_edge, label %if.then119

if.end99.do.body_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then119:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %spec.store.select, i32 noundef %spec.store.select) #10
  br label %do.body

do.body:                                          ; preds = %if.then119, %if.end99.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_set_termios.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_set_termios, %if.then125)) #10
          to label %do.end [label %if.then125], !srcloc !306

if.then125:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv126 = and i32 %wbaudrate.0.in, 65535
  %conv127 = zext i16 %wflags.4 to i32
  %bDataBits128 = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 2
  %60 = ptrtoint ptr %bDataBits128 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bDataBits128, align 4
  %conv129 = zext i8 %61 to i32
  %bParity130 = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 3
  %62 = ptrtoint ptr %bParity130 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bParity130, align 1
  %conv131 = zext i8 %63 to i32
  %64 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %17, align 2
  %conv133 = zext i8 %65 to i32
  %cXon134 = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 5
  %66 = ptrtoint ptr %cXon134 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %cXon134, align 1
  %conv135 = zext i8 %67 to i32
  %cXoff136 = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 6
  %68 = ptrtoint ptr %cXoff136 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %cXoff136, align 8
  %conv137 = zext i8 %69 to i32
  %70 = ptrtoint ptr %bUartMode to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bUartMode, align 1
  %conv139 = zext i8 %71 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_set_termios.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i32 noundef %spec.store.select, i32 noundef %conv126, i32 noundef %conv127, i32 noundef %conv129, i32 noundef %conv131, i32 noundef %conv133, i32 noundef %conv135, i32 noundef %conv137, i32 noundef %conv139) #10
  br label %do.end

do.end:                                           ; preds = %if.then125, %do.body
  %72 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %wbaudrate.0, ptr %call7.i, align 8
  %wFlags = getelementptr inbounds %struct.ti_uart_config, ptr %call7.i, i32 0, i32 1
  %73 = ptrtoint ptr %wFlags to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %wflags.4, ptr %wFlags, align 2
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %port, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %78 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %port_number.i, align 4
  %conv.i = zext i8 %79 to i16
  %add.i = add nuw nsw i16 %conv.i, 3
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %77, align 8
  %shl.i.i.i = shl i32 %81, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %77, i32 noundef %or.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 10, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool142.not = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool142.not, label %do.end.if.end149_crit_edge, label %do.end146

do.end.if.end149_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

do.end146:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev147 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %82 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %port_number.i, align 4
  %conv148 = zext i8 %83 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev147, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef %conv148, i32 noundef %call1.i.i) #14
  br label %if.end149

if.end149:                                        ; preds = %do.end146, %do.end.if.end149_crit_edge
  %tp_shadow_mcr = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 2
  %84 = ptrtoint ptr %tp_shadow_mcr to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tp_shadow_mcr, align 1
  %86 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %c_cflag, align 4
  %and153 = and i32 %87, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %cmp154 = icmp eq i32 %and153, 0
  %and157 = and i8 %85, -49
  %spec.select249 = select i1 %cmp154, i8 %and157, i8 %85
  %tp_port.i262 = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 6
  %88 = ptrtoint ptr %tp_port.i262 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tp_port.i262, align 4
  %tp_uart_base_addr.i = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 4
  %90 = ptrtoint ptr %tp_uart_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tp_uart_base_addr.i, align 4
  %add.i263 = add i32 %91, 4
  %call.i265 = tail call fastcc i32 @ti_write_byte(ptr noundef %89, i32 noundef %add.i263, i8 noundef zeroext 52, i8 noundef zeroext %spec.select249) #10
  %tp_lock.i266 = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 7
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock.i266) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %tobool.not.i = icmp eq i32 %call.i265, 0
  br i1 %tobool.not.i, label %ti_set_mcr.exit.thread, label %do.end164

ti_set_mcr.exit.thread:                           ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %tp_shadow_mcr to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %spec.select249, ptr %tp_shadow_mcr, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock.i266, i32 noundef %call4.i) #10
  br label %if.end168

do.end164:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock.i266, i32 noundef %call4.i) #10
  %dev165 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %93 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %port_number.i, align 4
  %conv167 = zext i8 %94 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev165, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.72, i32 noundef %conv167, i32 noundef %call.i265) #14
  br label %if.end168

if.end168:                                        ; preds = %do.end164, %ti_set_mcr.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end168, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_break(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_break.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_break, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_break.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i32 noundef %break_state) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tp_uart_base_addr = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %tp_uart_base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tp_uart_base_addr, align 4
  %add = add i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp = icmp eq i32 %break_state, -1
  %conv = select i1 %cmp, i8 64, i8 0
  %call4 = tail call fastcc i32 @ti_write_byte(ptr noundef %1, i32 noundef %add, i8 noundef zeroext 64, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.if.end24_crit_edge, label %do.body7

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_break.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_break, %if.then19)) #10
          to label %if.end24 [label %if.then19], !srcloc !306

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %dev20 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_break.__UNIQUE_ID_ddebug263, ptr noundef %dev20, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81, i32 noundef %call4) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %do.body7, %do.end.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_chars_in_buffer(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tp_lock = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock) #10
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %sub = sub i32 %5, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call3) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_chars_in_buffer.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_chars_in_buffer, %if.then)) #10
          to label %do.end14 [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_chars_in_buffer.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.84, i32 noundef %sub) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ti_tx_empty(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  %lsr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsr) #10
  %2 = ptrtoint ptr %lsr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %lsr, align 1, !annotation !308
  %tp_tdev = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %tp_tdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp_tdev, align 4
  %td_is_3410 = getelementptr inbounds %struct.ti_device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %td_is_3410 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %td_is_3410, align 4
  %call1 = call fastcc i32 @ti_get_lsr(ptr noundef %1, ptr noundef nonnull %lsr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %. = select i1 %tobool.not, i32 32, i32 64
  %7 = ptrtoint ptr %lsr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lsr, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %., %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end6 ], [ false, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsr) #10
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %4 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %termios, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool3.not = icmp sgt i32 %7, -1
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %tp_lock.i = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock.i) #10
  %tp_read_urb_state.i = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %tp_read_urb_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tp_read_urb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.i = icmp eq i32 %9, 0
  br i1 %cmp5.i, label %if.then.i, label %if.then.ti_stop_read.exit_crit_edge

if.then.ti_stop_read.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ti_stop_read.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %tp_read_urb_state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %tp_read_urb_state.i, align 4
  br label %ti_stop_read.exit

ti_stop_read.exit:                                ; preds = %if.then.i, %if.then.ti_stop_read.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock.i, i32 noundef %call2.i) #10
  br label %if.end

if.end:                                           ; preds = %ti_stop_read.exit, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %4 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %termios, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool3.not = icmp sgt i32 %7, -1
  br i1 %tobool3.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %tp_lock.i = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock.i) #10
  %tp_read_urb_state.i = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %tp_read_urb_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tp_read_urb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp5.i = icmp eq i32 %9, 2
  %10 = ptrtoint ptr %tp_read_urb_state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tp_read_urb_state.i, align 4
  br i1 %cmp5.i, label %ti_restart_read.exit, label %ti_restart_read.exit.thread

ti_restart_read.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock.i, i32 noundef %call2.i) #10
  br label %if.end7

ti_restart_read.exit:                             ; preds = %if.then
  %tp_port.i = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %tp_port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tp_port.i, align 4
  %read_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_urb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock.i, i32 noundef %call2.i) #10
  %context.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %context.i, align 4
  %call9.i = tail call i32 @usb_submit_urb(ptr noundef %14, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool5.not = icmp eq i32 %call9.i, 0
  br i1 %tobool5.not, label %ti_restart_read.exit.if.end7_crit_edge, label %do.end

ti_restart_read.exit.if.end7_crit_edge:           ; preds = %ti_restart_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end:                                           ; preds = %ti_restart_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i32 noundef %call9.i) #14
  br label %if.end7

if.end7:                                          ; preds = %do.end, %ti_restart_read.exit.if.end7_crit_edge, %ti_restart_read.exit.thread, %lor.lhs.false.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tp_lock = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock) #10
  %tp_msr = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tp_msr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tp_msr, align 4
  %conv6 = zext i8 %5 to i32
  %tp_shadow_mcr = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %tp_shadow_mcr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tp_shadow_mcr, align 1
  %conv7 = zext i8 %7 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call3) #10
  %and = lshr i32 %conv7, 3
  %or = and i32 %and, 6
  %and12 = shl nuw nsw i32 %conv7, 13
  %8 = and i32 %and12, 32768
  %and16 = shl nuw nsw i32 %conv6, 1
  %9 = and i32 %and16, 32
  %and20 = lshr i32 %conv6, 1
  %10 = and i32 %and20, 64
  %11 = and i32 %and16, 128
  %and28 = shl nuw nsw i32 %conv6, 3
  %12 = and i32 %and28, 256
  %or15 = or i32 %10, %9
  %or19 = or i32 %or15, %11
  %or23 = or i32 %or19, %12
  %or27 = or i32 %or23, %8
  %or31 = or i32 %or27, %or
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_tiocmget.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_tiocmget, %if.then)) #10
          to label %do.end39 [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_tiocmget.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i32 noundef %or31) #10
  br label %do.end39

do.end39:                                         ; preds = %if.then, %entry
  ret i32 %or31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tp_lock = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock) #10
  %tp_shadow_mcr = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tp_shadow_mcr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tp_shadow_mcr, align 1
  %conv6 = zext i8 %5 to i32
  %and = shl i32 %set, 3
  %and12 = lshr i32 %set, 13
  %6 = and i32 %and12, 4
  %7 = and i32 %and, 48
  %8 = or i32 %7, %6
  %9 = or i32 %8, %conv6
  %and17 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %and20 = and i32 %9, 223
  %mcr.3 = select i1 %tobool18.not, i32 %9, i32 %and20
  %and22 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %and25 = and i32 %mcr.3, 239
  %mcr.4 = select i1 %tobool23.not, i32 %mcr.3, i32 %and25
  %and27 = and i32 %clear, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %and30 = and i32 %mcr.4, 251
  %mcr.5 = select i1 %tobool28.not, i32 %mcr.4, i32 %and30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call3) #10
  %tp_port.i = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %tp_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tp_port.i, align 4
  %tp_uart_base_addr.i = getelementptr inbounds %struct.ti_port, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %tp_uart_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tp_uart_base_addr.i, align 4
  %add.i = add i32 %13, 4
  %conv.i = trunc i32 %mcr.5 to i8
  %call.i = tail call fastcc i32 @ti_write_byte(ptr noundef %11, i32 noundef %add.i, i8 noundef zeroext 52, i8 noundef zeroext %conv.i) #10
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.ti_set_mcr.exit_crit_edge

entry.ti_set_mcr.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ti_set_mcr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %tp_shadow_mcr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %tp_shadow_mcr, align 1
  br label %ti_set_mcr.exit

ti_set_mcr.exit:                                  ; preds = %if.then.i, %entry.ti_set_mcr.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call4.i) #10
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_get_icount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_interrupt_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %td_serial = getelementptr inbounds %struct.ti_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %td_serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %td_serial, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  %status3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status3, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end8 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge170
    i32 -108, label %entry.do.body_crit_edge171
  ]

entry.do.body_crit_edge171:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge170:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge170, %entry.do.body_crit_edge171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_interrupt_callback.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_interrupt_callback, %if.then)) #10
          to label %cleanup [label %if.then], !srcloc !306

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_interrupt_callback.__UNIQUE_ID_ddebug264, ptr noundef %dev2, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.92, i32 noundef %11) #10
  br label %cleanup

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.92, i32 noundef %11) #14
  br label %exit

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not = icmp eq i32 %9, 2
  br i1 %cmp.not, label %if.end26, label %do.body10

do.body10:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_interrupt_callback.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_interrupt_callback, %if.then22)) #10
          to label %exit [label %if.then22], !srcloc !306

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_interrupt_callback.__UNIQUE_ID_ddebug265, ptr noundef %dev2, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.92, i32 noundef %9) #10
  br label %exit

if.end26:                                         ; preds = %sw.epilog
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp27 = icmp eq i8 %14, -1
  br i1 %cmp27, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx33 = getelementptr i8, ptr %7, i32 1
  %15 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.92, i32 noundef %conv34) #14
  br label %exit

if.end35:                                         ; preds = %if.end26
  %17 = lshr i8 %14, 6
  %18 = and i8 %17, 1
  %and.i = zext i8 %18 to i32
  %19 = and i8 %14, 15
  %and.i165 = zext i8 %19 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_interrupt_callback.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_interrupt_callback, %if.then52)) #10
          to label %do.end57 [label %if.then52], !srcloc !306

if.then52:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx53 = getelementptr i8, ptr %7, i32 1
  %20 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_interrupt_callback.__UNIQUE_ID_ddebug266, ptr noundef %dev2, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.92, i32 noundef %and.i, i32 noundef %and.i165, i32 noundef %conv54) #10
  br label %do.end57

do.end57:                                         ; preds = %if.then52, %if.end35
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %23)
  %cmp59.not = icmp ult i8 %18, %23
  br i1 %cmp59.not, label %if.end65, label %do.end64

do.end64:                                         ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.92, i32 noundef %and.i) #14
  br label %exit

if.end65:                                         ; preds = %do.end57
  %arrayidx67 = getelementptr %struct.usb_serial, ptr %3, i32 0, i32 12, i32 %and.i
  %24 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx67, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %25, i32 0, i32 32, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i, align 4
  %tobool69.not = icmp eq ptr %27, null
  br i1 %tobool69.not, label %if.end65.exit_crit_edge, label %if.end71

if.end65.exit_crit_edge:                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end71:                                         ; preds = %if.end65
  %28 = zext i32 %and.i165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %and.i165, label %do.end100 [
    i32 3, label %do.end75
    i32 4, label %sw.bb78
  ]

do.end75:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx76 = getelementptr i8, ptr %7, i32 1
  %29 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.92, i32 noundef %and.i, i32 noundef %conv77) #14
  br label %exit

sw.bb78:                                          ; preds = %if.end71
  %arrayidx79 = getelementptr i8, ptr %7, i32 1
  %31 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx79, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_interrupt_callback.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_interrupt_callback, %if.then92)) #10
          to label %do.end96 [label %if.then92], !srcloc !306

if.then92:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #12
  %conv93 = zext i8 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_interrupt_callback.__UNIQUE_ID_ddebug267, ptr noundef %dev2, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.92, i32 noundef %and.i, i32 noundef %conv93) #10
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %sw.bb78
  tail call fastcc void @ti_handle_new_msr(ptr noundef nonnull %27, i8 noundef zeroext %32)
  br label %exit

do.end100:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx101 = getelementptr i8, ptr %7, i32 1
  %33 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.92, i32 noundef %conv102) #14
  br label %exit

exit:                                             ; preds = %do.end100, %do.end96, %do.end75, %if.end65.exit_crit_edge, %do.end64, %do.end32, %if.then22, %do.body10, %do.end8
  %call104 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %exit.cleanup_crit_edge, label %do.end109

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end109:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.92, i32 noundef %call104) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end109, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_bulk_in_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tp_port = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tp_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp_port, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %status3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status3, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %7, label %do.end8 [
    i32 -108, label %entry.do.body_crit_edge
    i32 -104, label %entry.do.body_crit_edge130
    i32 -2, label %entry.do.body_crit_edge131
    i32 0, label %if.end16
  ]

entry.do.body_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge130, %entry.do.body_crit_edge131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_bulk_in_callback.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_bulk_in_callback, %if.then)) #10
          to label %cleanup [label %if.then], !srcloc !306

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_bulk_in_callback.__UNIQUE_ID_ddebug268, ptr noundef %dev2, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.115, i32 noundef %7) #10
  br label %cleanup

do.end8:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.115, i32 noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %7)
  %cond = icmp eq i32 %7, -32
  br i1 %cond, label %do.end8.do.body55_crit_edge, label %do.end15

do.end8.do.body55_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

do.end15:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.115) #14
  br label %cleanup

if.end16:                                         ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %if.end16.do.body55_crit_edge, label %if.then18

if.end16.do.body55_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

if.then18:                                        ; preds = %if.end16
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_bulk_in_callback, %if.then.i)) #10
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !306

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev2, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.115, i32 noundef %10, i32 noundef %10, ptr noundef %12) #10
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.then18
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not = icmp eq i32 %14, 0
  br i1 %tobool20.not, label %do.body22, label %if.else

do.body22:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_bulk_in_callback.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_bulk_in_callback, %if.then34)) #10
          to label %do.body42 [label %if.then34], !srcloc !306

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_bulk_in_callback.__UNIQUE_ID_ddebug269, ptr noundef %dev2, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.115) #10
  br label %do.body42

if.else:                                          ; preds = %usb_serial_debug_data.exit
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  %port1.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end5.i.do.body.i_crit_edge, %if.else
  %data.addr.0.i = phi ptr [ %16, %if.else ], [ %add.ptr.i, %if.end5.i.do.body.i_crit_edge ]
  %length.addr.0.i = phi i32 [ %18, %if.else ], [ %sub.i, %if.end5.i.do.body.i_crit_edge ]
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port1.i, ptr noundef %data.addr.0.i, i8 noundef zeroext 0, i32 noundef %length.addr.0.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %length.addr.0.i, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %length.addr.0.i, %call.i.i
  %sub.i = sub i32 %length.addr.0.i, %call.i.i
  br i1 %cmp.i, label %do.end.i, label %do.body.i.if.end5.i_crit_edge

do.body.i.if.end5.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

do.end.i:                                         ; preds = %do.body.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, i32 noundef %sub.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp3.i, label %do.end.i.do.body42_crit_edge, label %do.end.i.if.end5.i_crit_edge

do.end.i.if.end5.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

do.end.i.do.body42_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

if.end5.i:                                        ; preds = %do.end.i.if.end5.i_crit_edge, %do.body.i.if.end5.i_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %port1.i) #10
  %add.ptr.i = getelementptr i8, ptr %data.addr.0.i, i32 %call.i.i
  %cmp9.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp9.i, label %if.end5.i.do.body.i_crit_edge, label %if.end5.i.do.body42_crit_edge

if.end5.i.do.body42_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

if.end5.i.do.body.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body42:                                        ; preds = %if.end5.i.do.body42_crit_edge, %do.end.i.do.body42_crit_edge, %if.then34, %do.body22
  %tp_lock = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 7
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock) #10
  %19 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_length, align 4
  %rx = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 27, i32 5
  %21 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx, align 4
  %add = add i32 %22, %20
  store i32 %add, ptr %rx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call46) #10
  br label %do.body55

do.body55:                                        ; preds = %do.body42, %if.end16.do.body55_crit_edge, %do.end8.do.body55_crit_edge
  %tp_lock61 = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 7
  %call63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock61) #10
  %tp_read_urb_state = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %tp_read_urb_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tp_read_urb_state, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %24, label %do.body55.if.end79.thread_crit_edge [
    i32 0, label %if.end79
    i32 1, label %if.then76
  ]

do.body55.if.end79.thread_crit_edge:              ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79.thread

if.then76:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %tp_read_urb_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %tp_read_urb_state, align 4
  br label %if.end79.thread

if.end79.thread:                                  ; preds = %if.then76, %do.body55.if.end79.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock61, i32 noundef %call63) #10
  br label %cleanup

if.end79:                                         ; preds = %do.body55
  %call71 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock61, i32 noundef %call63) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool81.not = icmp eq i32 %call71, 0
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %do.end85

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.115, i32 noundef %call71) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %if.end79.cleanup_crit_edge, %if.end79.thread, %do.end15, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_bulk_out_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tp_port = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tp_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp_port, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %tp_write_urb_in_use = getelementptr inbounds %struct.ti_port, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %tp_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tp_write_urb_in_use, align 4
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %5, label %do.body4 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge27
    i32 -108, label %entry.do.body_crit_edge28
  ]

entry.do.body_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge27, %entry.do.body_crit_edge28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_bulk_out_callback.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_bulk_out_callback, %if.then)) #10
          to label %cleanup [label %if.then], !srcloc !306

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_bulk_out_callback.__UNIQUE_ID_ddebug270, ptr noundef %dev, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.125, i32 noundef %5) #10
  br label %cleanup

do.body4:                                         ; preds = %entry
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 1, i32 12
  %8 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %do.body4.if.then8_crit_edge, label %lor.lhs.false

do.body4.if.then8_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false:                                    ; preds = %do.body4
  %.b25 = load i1, ptr @ti_bulk_out_callback.__print_once, align 1
  br i1 %.b25, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %do.body4.if.then8_crit_edge
  store i1 true, ptr @ti_bulk_out_callback.__print_once, align 1
  %dev12 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.125, i32 noundef %5) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then8, %lor.lhs.false.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  tail call fastcc void @ti_send(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_download_firmware(ptr nocapture noundef readonly %tdev) unnamed_addr #2 align 64 {
entry:
  %done.i = alloca i32, align 4
  %fw_p = alloca ptr, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %td_serial = getelementptr inbounds %struct.ti_device, ptr %tdev, i32 0, i32 2
  %0 = ptrtoint ptr %td_serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %td_serial, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %port = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 8
  %shl.i = shl i32 %9, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_p) #10
  %10 = ptrtoint ptr %fw_p to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_p, align 4, !annotation !308
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #10
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 7
  %11 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %12 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2577, i16 %13)
  %cmp = icmp eq i16 %13, 2577
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %14 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idProduct, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv6 = zext i16 %16 to i32
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %conv6)
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  br label %check_firmware

if.end:                                           ; preds = %entry
  %17 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv3 = zext i16 %17 to i32
  %idProduct16 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %18 = ptrtoint ptr %idProduct16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %idProduct16, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv17 = zext i16 %20 to i32
  %call18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.14, i32 noundef %conv3, i32 noundef %conv17)
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %call21 = call i32 @request_firmware(ptr noundef nonnull %fw_p, ptr noundef nonnull %buf, ptr noundef %dev20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end.if.end72_crit_edge, label %if.then24

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then24:                                        ; preds = %if.end
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %buf, align 1
  %22 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8186, i16 %23)
  %cmp29 = icmp eq i16 %23, -8186
  br i1 %cmp29, label %if.then31, label %if.then24.if.then57_crit_edge

if.then24.if.then57_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.then31:                                        ; preds = %if.then24
  %24 = ptrtoint ptr %idProduct16 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %idProduct16, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %26, label %if.then31.if.end52_crit_edge [
    i16 -3824, label %sw.bb
    i16 -3823, label %sw.bb37
    i16 -3822, label %sw.bb40
    i16 -3820, label %sw.bb43
    i16 -3819, label %sw.bb46
    i16 793, label %sw.bb49
  ]

if.then31.if.end52_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

sw.bb:                                            ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %28 = call ptr @memcpy(ptr %buf, ptr @.str.15, i32 12)
  br label %if.end52

sw.bb37:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %29 = call ptr @memcpy(ptr %buf, ptr @.str.16, i32 11)
  br label %if.end52

sw.bb40:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %30 = call ptr @memcpy(ptr %buf, ptr @.str.17, i32 12)
  br label %if.end52

sw.bb43:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %31 = call ptr @memcpy(ptr %buf, ptr @.str.18, i32 16)
  br label %if.end52

sw.bb46:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %32 = call ptr @memcpy(ptr %buf, ptr @.str.19, i32 17)
  br label %if.end52

sw.bb49:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %33 = call ptr @memcpy(ptr %buf, ptr @.str.19, i32 17)
  br label %if.end52

if.end52:                                         ; preds = %sw.bb49, %sw.bb46, %sw.bb43, %sw.bb40, %sw.bb37, %sw.bb, %if.then31.if.end52_crit_edge
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %34)
  %.pr = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp55 = icmp eq i8 %.pr, 0
  br i1 %cmp55, label %if.end52.if.then57_crit_edge, label %if.end52.check_firmware_crit_edge

if.end52.check_firmware_crit_edge:                ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_firmware

if.end52.if.then57_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.then57:                                        ; preds = %if.end52.if.then57_crit_edge, %if.then24.if.then57_crit_edge
  %td_is_3410 = getelementptr inbounds %struct.ti_device, ptr %tdev, i32 0, i32 3
  %35 = ptrtoint ptr %td_is_3410 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %td_is_3410, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %37 = call ptr @memcpy(ptr %buf, ptr @.str.20, i32 11)
  br label %check_firmware

if.else:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %38 = call ptr @memcpy(ptr %buf, ptr @.str.21, i32 11)
  br label %check_firmware

check_firmware:                                   ; preds = %if.else, %if.then58, %if.end52.check_firmware_crit_edge, %if.then
  %dev20.sink = phi ptr [ %dev9, %if.then ], [ %dev20, %if.then58 ], [ %dev20, %if.else ], [ %dev20, %if.end52.check_firmware_crit_edge ]
  %call67 = call i32 @request_firmware(ptr noundef nonnull %fw_p, ptr noundef nonnull %buf, ptr noundef %dev20.sink) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool69.not = icmp eq i32 %call67, 0
  br i1 %tobool69.not, label %check_firmware.if.end72_crit_edge, label %do.end

check_firmware.if.end72_crit_edge:                ; preds = %check_firmware
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end:                                           ; preds = %check_firmware
  call void @__sanitizer_cov_trace_pc() #12
  %dev71 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #14
  br label %cleanup

if.end72:                                         ; preds = %check_firmware.if.end72_crit_edge, %if.end.if.end72_crit_edge
  %39 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw_p, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16284, i32 %42)
  %cmp73 = icmp ugt i32 %42, 16284
  br i1 %cmp73, label %do.end78, label %if.end81

do.end78:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %dev79 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %42) #14
  %43 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw_p, align 4
  call void @release_firmware(ptr noundef %44) #10
  br label %cleanup

if.end81:                                         ; preds = %if.end72
  %call1.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16287, i32 noundef 3264, i32 noundef 2) #15
  %tobool83.not = icmp eq ptr %call1.i.i, null
  %45 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw_p, align 4
  br i1 %tobool83.not, label %if.end91.thread, label %if.then84

if.end91.thread:                                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  call void @release_firmware(ptr noundef %46) #10
  br label %do.end96

if.then84:                                        ; preds = %if.end81
  %data = getelementptr inbounds %struct.firmware, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %46, align 4
  %51 = call ptr @memcpy(ptr %call1.i.i, ptr %48, i32 %50)
  %52 = load i32, ptr %46, align 4
  %add.ptr = getelementptr i8, ptr %call1.i.i, i32 %52
  %sub = sub i32 16287, %52
  %53 = call ptr @memset(ptr %add.ptr, i32 255, i32 %sub)
  %54 = load i32, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done.i) #10
  %55 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %done.i, align 4, !annotation !308
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp40.i = icmp sgt i32 %54, 3
  br i1 %cmp40.i, label %if.then84.for.body.i_crit_edge, label %if.then84.for.end.i_crit_edge

if.then84.for.end.i_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then84.for.body.i_crit_edge:                   ; preds = %if.then84
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then84.for.body.i_crit_edge
  %pos.042.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 3, %if.then84.for.body.i_crit_edge ]
  %cs.041.i = phi i8 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then84.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call1.i.i, i32 %pos.042.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i, align 1
  %add.i = add i8 %57, %cs.041.i
  %inc.i = add nuw nsw i32 %pos.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %54
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then84.for.end.i_crit_edge
  %cs.0.lcssa.i = phi i8 [ 0, %if.then84.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  %58 = trunc i32 %54 to i16
  %conv3.i = add i16 %58, -3
  %59 = call i16 @llvm.bswap.i16(i16 %conv3.i) #10
  %60 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %call1.i.i, align 4096
  %bCheckSum.i = getelementptr inbounds %struct.ti_firmware_header, ptr %call1.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %bCheckSum.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %cs.0.lcssa.i, ptr %bCheckSum.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_do_download.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_download_firmware, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !306

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev6.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_do_download.__UNIQUE_ID_ddebug274, ptr noundef %dev6.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp843.i = icmp sgt i32 %54, 0
  br i1 %cmp843.i, label %do.end.i.for.body10.i_crit_edge, label %do.end.i.if.end91_crit_edge

do.end.i.if.end91_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

do.end.i.for.body10.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc19.i.for.body10.i_crit_edge, %do.end.i.for.body10.i_crit_edge
  %pos.144.i = phi i32 [ %add20.i, %for.inc19.i.for.body10.i_crit_edge ], [ 0, %do.end.i.for.body10.i_crit_edge ]
  %sub11.i = sub i32 %54, %pos.144.i
  %62 = call i32 @llvm.smin.i32(i32 %sub11.i, i32 64) #10
  %add.ptr.i = getelementptr i8, ptr %call1.i.i, i32 %pos.144.i
  %call15.i = call i32 @usb_bulk_msg(ptr noundef %3, i32 noundef %or, ptr noundef %add.ptr.i, i32 noundef %62, ptr noundef nonnull %done.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %for.inc19.i, label %for.body10.i.if.end91_crit_edge

for.body10.i.if.end91_crit_edge:                  ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

for.inc19.i:                                      ; preds = %for.body10.i
  %63 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %done.i, align 4
  %add20.i = add i32 %64, %pos.144.i
  %cmp8.i = icmp slt i32 %add20.i, %54
  br i1 %cmp8.i, label %for.inc19.i.for.body10.i_crit_edge, label %for.inc19.i.if.end91_crit_edge

for.inc19.i.if.end91_crit_edge:                   ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

for.inc19.i.for.body10.i_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i

if.end91:                                         ; preds = %for.inc19.i.if.end91_crit_edge, %for.body10.i.if.end91_crit_edge, %do.end.i.if.end91_crit_edge
  %status.1.i = phi i32 [ 0, %do.end.i.if.end91_crit_edge ], [ 0, %for.inc19.i.if.end91_crit_edge ], [ %call15.i, %for.body10.i.if.end91_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done.i) #10
  call void @kfree(ptr noundef nonnull %call1.i.i) #10
  %65 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fw_p, align 4
  call void @release_firmware(ptr noundef %66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i)
  %tobool92.not = icmp eq i32 %status.1.i, 0
  br i1 %tobool92.not, label %do.body99, label %if.end91.do.end96_crit_edge

if.end91.do.end96_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

do.end96:                                         ; preds = %if.end91.do.end96_crit_edge, %if.end91.thread
  %status.1145 = phi i32 [ -12, %if.end91.thread ], [ %status.1.i, %if.end91.do.end96_crit_edge ]
  %dev97 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev97, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23, i32 noundef %status.1145) #14
  br label %cleanup

do.body99:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_download_firmware.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_download_firmware, %if.then104)) #10
          to label %cleanup [label %if.then104], !srcloc !306

if.then104:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  %dev105 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_download_firmware.__UNIQUE_ID_ddebug277, ptr noundef %dev105, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %do.body99, %do.end96, %do.end78, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ -2, %do.end78 ], [ %status.1145, %do.end96 ], [ 0, %if.then104 ], [ 0, %do.body99 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_p) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

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
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_send(ptr noundef %tport) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tp_port = getelementptr inbounds %struct.ti_port, ptr %tport, i32 0, i32 6
  %0 = ptrtoint ptr %tp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp_port, align 4
  %tp_lock = getelementptr inbounds %struct.ti_port, ptr %tport, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock) #10
  %tp_write_urb_in_use = getelementptr inbounds %struct.ti_port, ptr %tport, i32 0, i32 9
  %2 = ptrtoint ptr %tp_write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tp_write_urb_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %entry
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bulk_out_size, align 4
  %call6 = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %7, i32 noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8 = icmp eq i32 %call6, 0
  br i1 %cmp8, label %if.end.unlock_crit_edge, label %if.end11

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %tp_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %tp_write_urb_in_use, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call2) #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %11 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_urb, align 8
  %transfer_buffer15 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer15, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_send, %if.then.i)) #10
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !306

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.ti_send, i32 noundef %call6, i32 noundef %call6, ptr noundef %14) #10
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end11
  %15 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_urb, align 8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 26
  %21 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv20 = zext i8 %22 to i32
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 8
  %shl.i = shl i32 %24, 8
  %shl1.i = shl nuw nsw i32 %conv20, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 8
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %20, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 10
  %26 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call6, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 28
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ti_bulk_out_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 27
  %29 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tport, ptr %context4.i, align 4
  %30 = load ptr, ptr %write_urb, align 8
  %call25 = tail call i32 @usb_submit_urb(ptr noundef %30, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body42, label %do.body28

do.body28:                                        ; preds = %usb_serial_debug_data.exit
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 12
  %31 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool30.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool30.not, label %do.body28.if.then32_crit_edge, label %lor.lhs.false

do.body28.if.then32_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false:                                    ; preds = %do.body28
  %.b91 = load i1, ptr @ti_send.__print_once, align 1
  br i1 %.b91, label %lor.lhs.false.if.end37_crit_edge, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %do.body28.if.then32_crit_edge
  store i1 true, ptr @ti_send.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.ti_send, i32 noundef %call25) #14
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %lor.lhs.false.if.end37_crit_edge
  %32 = ptrtoint ptr %tp_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %tp_write_urb_in_use, align 4
  br label %if.end56

do.body42:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock) #10
  %tx = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 4
  %33 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx, align 8
  %add = add i32 %34, %call6
  store i32 %add, ptr %tx, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call50) #10
  br label %if.end56

if.end56:                                         ; preds = %do.body42, %if.end37
  %port57 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  tail call void @tty_port_tty_wakeup(ptr noundef %port57) #10
  br label %cleanup

unlock:                                           ; preds = %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end56
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_write_byte(ptr noundef %port, i32 noundef %addr, i8 noundef zeroext %mask, i8 noundef zeroext %byte) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_write_byte.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_write_byte, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv = zext i8 %mask to i32
  %conv3 = zext i8 %byte to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_write_byte.__UNIQUE_ID_ddebug273, ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.78, i32 noundef %addr, i32 noundef %conv, i32 noundef %conv3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 9) #13
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 48, ptr %call7.i, align 8
  %bDataType = getelementptr inbounds %struct.ti_write_data_bytes, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %bDataType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %bDataType, align 1
  %bDataCounter = getelementptr inbounds %struct.ti_write_data_bytes, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %bDataCounter to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bDataCounter, align 2
  %shr = lshr i32 %addr, 16
  %conv8 = trunc i32 %shr to i16
  %wBaseAddrHi = getelementptr inbounds %struct.ti_write_data_bytes, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %wBaseAddrHi to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %conv8, ptr %wBaseAddrHi, align 1
  %conv9 = trunc i32 %addr to i16
  %wBaseAddrLo = getelementptr inbounds %struct.ti_write_data_bytes, ptr %call7.i, i32 0, i32 4
  %5 = ptrtoint ptr %wBaseAddrLo to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %conv9, ptr %wBaseAddrLo, align 1
  %bData = getelementptr inbounds %struct.ti_write_data_bytes, ptr %call7.i, i32 0, i32 5
  %6 = ptrtoint ptr %bData to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %mask, ptr %bData, align 1
  %arrayidx11 = getelementptr %struct.ti_write_data_bytes, ptr %call7.i, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %byte, ptr %arrayidx11, align 8
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i, i8 noundef zeroext -128, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 5, ptr noundef nonnull %call7.i, i16 noundef zeroext 9, i32 noundef 1000) #10
  %14 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %do.end18, label %if.end7.if.end20_crit_edge

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %14) #14
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %if.end7.if.end20_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.end20 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_get_lsr(ptr nocapture noundef readonly %tport, ptr nocapture noundef writeonly %lsr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tp_port = getelementptr inbounds %struct.ti_port, ptr %tport, i32 0, i32 6
  %0 = ptrtoint ptr %tp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp_port, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 5) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port_number.i, align 4
  %conv.i = zext i8 %8 to i16
  %add.i = add nuw nsw i16 %conv.i, 3
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %10, 8
  %or1.i.i = or i32 %shl.i.i.i, -2147483520
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or1.i.i, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %add.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 5, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call2.i.i)
  %cmp.i.i = icmp eq i32 %call2.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp4.i.i = icmp sgt i32 %call2.i.i, -1
  %spec.store.select.i.i = select i1 %cmp4.i.i, i32 -70, i32 %call2.i.i
  %status.0.i.i = select i1 %cmp.i.i, i32 0, i32 %spec.store.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i)
  %tobool2.not = icmp eq i32 %status.0.i.i, 0
  br i1 %tobool2.not, label %do.body5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %status.0.i.i) #14
  br label %free_data

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_get_lsr.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_get_lsr, %if.then10)) #10
          to label %do.end14 [label %if.then10], !srcloc !306

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %dev11 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %bLSR = getelementptr inbounds %struct.ti_port_status, ptr %call7.i, i32 0, i32 4
  %11 = ptrtoint ptr %bLSR to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bLSR, align 4
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_get_lsr.__UNIQUE_ID_ddebug271, ptr noundef %dev11, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, i32 noundef %conv) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body5
  %bLSR15 = getelementptr inbounds %struct.ti_port_status, ptr %call7.i, i32 0, i32 4
  %13 = ptrtoint ptr %bLSR15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bLSR15, align 4
  %15 = ptrtoint ptr %lsr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %lsr, align 1
  br label %free_data

free_data:                                        ; preds = %do.end14, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_data, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0.i.i, %free_data ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_handle_new_msr(ptr noundef %tport, i8 noundef zeroext %msr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_handle_new_msr.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_handle_new_msr, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tp_port = getelementptr inbounds %struct.ti_port, ptr %tport, i32 0, i32 6
  %0 = ptrtoint ptr %tp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp_port, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv = zext i8 %msr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_handle_new_msr.__UNIQUE_ID_ddebug272, ptr noundef %dev, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv3 = zext i8 %msr to i32
  %and = and i32 %conv3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end43_crit_edge, label %do.body7

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.body7:                                         ; preds = %do.end
  %tp_lock = getelementptr inbounds %struct.ti_port, ptr %tport, i32 0, i32 7
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tp_lock) #10
  %tp_port16 = getelementptr inbounds %struct.ti_port, ptr %tport, i32 0, i32 6
  %2 = ptrtoint ptr %tp_port16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp_port16, align 4
  %and19 = and i32 %conv3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body7.if.end22_crit_edge, label %if.then21

do.body7.if.end22_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %icount17 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %icount17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %icount17, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %icount17, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.body7.if.end22_crit_edge
  %and24 = and i32 %conv3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end28_crit_edge, label %if.then26

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %dsr = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 27, i32 1
  %6 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsr, align 4
  %inc27 = add i32 %7, 1
  store i32 %inc27, ptr %dsr, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge
  %and30 = and i32 %conv3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end34_crit_edge, label %if.then32

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %dcd = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 27, i32 3
  %8 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcd, align 4
  %inc33 = add i32 %9, 1
  store i32 %inc33, ptr %dcd, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28.if.end34_crit_edge
  %and36 = and i32 %conv3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end40_crit_edge, label %if.then38

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %rng = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 27, i32 2
  %10 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rng, align 4
  %inc39 = add i32 %11, 1
  store i32 %inc39, ptr %rng, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end34.if.end40_crit_edge
  %12 = ptrtoint ptr %tp_port16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp_port16, align 4
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %13, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tp_lock, i32 noundef %call11) #10
  br label %if.end43

if.end43:                                         ; preds = %if.end40, %do.end.if.end43_crit_edge
  %and45 = and i8 %msr, -16
  %tp_msr = getelementptr inbounds %struct.ti_port, ptr %tport, i32 0, i32 1
  %14 = ptrtoint ptr %tp_msr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and45, ptr %tp_msr, align 4
  %tp_port47 = getelementptr inbounds %struct.ti_port, ptr %tport, i32 0, i32 6
  %15 = ptrtoint ptr %tp_port47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tp_port47, align 4
  %port48 = getelementptr inbounds %struct.usb_serial_port, ptr %16, i32 0, i32 1
  %call49 = tail call ptr @tty_port_tty_get(ptr noundef %port48) #10
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end43.if.end59_crit_edge, label %land.lhs.true

if.end43.if.end59_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end43
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %call49, i32 0, i32 13, i32 2
  %17 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool52.not = icmp sgt i32 %18, -1
  %and55 = and i32 %conv3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %or.cond = or i1 %tobool56.not, %tobool52.not
  br i1 %or.cond, label %land.lhs.true.if.end59_crit_edge, label %if.then57

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tty_wakeup(ptr noundef nonnull %call49) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.lhs.true.if.end59_crit_edge, %if.end43.if.end59_crit_edge
  tail call void @tty_kref_put(ptr noundef %call49) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !201, !202, !204, !205, !206, !207, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !232, !233, !234, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !265, !266, !268, !269, !270, !272, !273, !275, !276, !277, !279, !280, !281, !282, !284, !285, !287, !288, !289, !291, !293, !295}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 487, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 488, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 489, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_firmware242, !8, !"__UNIQUE_ID_firmware242", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 491, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware243, !10, !"__UNIQUE_ID_firmware243", i1 false, i1 false}
!10 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 492, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware244, !12, !"__UNIQUE_ID_firmware244", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 493, i32 1}
!13 = !{ptr @__UNIQUE_ID_firmware245, !14, !"__UNIQUE_ID_firmware245", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 494, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware246, !16, !"__UNIQUE_ID_firmware246", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 495, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware247, !18, !"__UNIQUE_ID_firmware247", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 496, i32 1}
!19 = !{ptr @__UNIQUE_ID_firmware248, !20, !"__UNIQUE_ID_firmware248", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 497, i32 1}
!21 = !{ptr @__UNIQUE_ID_firmware249, !22, !"__UNIQUE_ID_firmware249", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 498, i32 1}
!23 = !{ptr @__UNIQUE_ID_firmware250, !24, !"__UNIQUE_ID_firmware250", i1 false, i1 false}
!24 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 499, i32 1}
!25 = !{ptr @__UNIQUE_ID_firmware251, !26, !"__UNIQUE_ID_firmware251", i1 false, i1 false}
!26 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 500, i32 1}
!27 = !{ptr @__UNIQUE_ID_firmware252, !28, !"__UNIQUE_ID_firmware252", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 501, i32 1}
!29 = !{ptr @__UNIQUE_ID_firmware253, !30, !"__UNIQUE_ID_firmware253", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 502, i32 1}
!31 = !{ptr @__initcall__kmod_ti_usb_3410_5052__254_506_usb_serial_module_init6, !32, !"__initcall__kmod_ti_usb_3410_5052__254_506_usb_serial_module_init6", i1 false, i1 false}
!32 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 506, i32 1}
!33 = !{ptr @__exitcall_usb_serial_module_exit, !32, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!34 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ti_id_table_combined, !36, !"ti_id_table_combined", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 386, i32 35}
!37 = !{ptr @serial_drivers, !38, !"serial_drivers", i1 false, i1 false}
!38 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 483, i32 41}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 422, i32 18}
!41 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 420, i32 12}
!43 = !{ptr @ti_1port_device, !44, !"ti_1port_device", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 417, i32 33}
!45 = !{ptr @ti_id_table_3410, !46, !"ti_id_table_3410", i1 false, i1 false}
!46 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 351, i32 35}
!47 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 517, i32 2}
!49 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ti_startup.__UNIQUE_ID_ddebug255, !48, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!52 = !{ptr @ti_startup.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 527, i32 2}
!54 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 534, i32 2}
!57 = !{ptr @ti_startup.__UNIQUE_ID_ddebug256, !56, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!58 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 577, i32 3}
!62 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ti_startup._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @ti_startup._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1586, i32 4}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1594, i32 15}
!70 = !{ptr @.str.15, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1604, i32 17}
!72 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1607, i32 17}
!74 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1610, i32 17}
!76 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1613, i32 17}
!78 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1616, i32 17}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1624, i32 17}
!82 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1626, i32 17}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1633, i32 3}
!86 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ti_download_firmware._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @ti_download_firmware._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1637, i32 3}
!91 = !{ptr @ti_download_firmware._entry.24, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ti_download_firmware._entry_ptr.26, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1654, i32 3}
!95 = !{ptr @ti_download_firmware._entry.27, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ti_download_firmware._entry_ptr.29, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1659, i32 2}
!99 = !{ptr @ti_download_firmware.__UNIQUE_ID_ddebug277, !98, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1561, i32 2}
!102 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ti_do_download.__UNIQUE_ID_ddebug274, !101, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!104 = !{ptr @ti_port_probe.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 606, i32 2}
!106 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 664, i32 3}
!109 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ti_open.__UNIQUE_ID_ddebug257, !108, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 667, i32 4}
!113 = !{ptr @ti_open._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @ti_open._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 674, i32 4}
!117 = !{ptr @ti_open._entry.37, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ti_open._entry_ptr.39, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 684, i32 3}
!121 = !{ptr @ti_open._entry.40, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ti_open._entry_ptr.42, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 691, i32 3}
!125 = !{ptr @ti_open._entry.43, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ti_open._entry_ptr.45, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 698, i32 3}
!129 = !{ptr @ti_open._entry.46, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @ti_open._entry_ptr.48, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 704, i32 3}
!133 = !{ptr @ti_open._entry.49, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @ti_open._entry_ptr.51, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 719, i32 3}
!137 = !{ptr @ti_open._entry.52, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @ti_open._entry_ptr.54, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 726, i32 3}
!141 = !{ptr @ti_open._entry.55, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ti_open._entry_ptr.57, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 734, i32 3}
!145 = !{ptr @ti_open._entry.58, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ti_open._entry_ptr.60, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 742, i32 3}
!149 = !{ptr @ti_open._entry.61, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @ti_open._entry_ptr.63, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 782, i32 3}
!153 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @ti_close._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @ti_close._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @__func__.ti_send, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1307, i32 36}
!158 = distinct !{null, !159, !"__print_once", i1 false, i1 false}
!159 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1318, i32 3}
!160 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ti_send._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ti_send._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!165 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !164, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!168 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 827, i32 2}
!170 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @ti_write_room.__UNIQUE_ID_ddebug258, !169, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 985, i32 2}
!174 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @ti_set_termios.__UNIQUE_ID_ddebug260, !173, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!176 = !{ptr @.str.74, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 997, i32 3}
!178 = !{ptr @ti_set_termios._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @ti_set_termios._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.76, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1007, i32 3}
!182 = !{ptr @ti_set_termios._entry.75, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @ti_set_termios._entry_ptr.77, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1518, i32 2}
!186 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @ti_write_byte.__UNIQUE_ID_ddebug273, !185, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!188 = !{ptr @.str.80, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1537, i32 3}
!190 = !{ptr @ti_write_byte._entry, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @ti_write_byte._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1078, i32 2}
!194 = !{ptr @.str.82, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @ti_break.__UNIQUE_ID_ddebug262, !193, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!196 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1085, i32 3}
!198 = !{ptr @ti_break.__UNIQUE_ID_ddebug263, !197, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!199 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 843, i32 2}
!201 = !{ptr @ti_chars_in_buffer.__UNIQUE_ID_ddebug259, !200, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1369, i32 3}
!204 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @ti_get_lsr._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @ti_get_lsr._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.87, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1375, i32 2}
!209 = !{ptr @ti_get_lsr.__UNIQUE_ID_ddebug271, !208, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!210 = !{ptr @.str.88, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 889, i32 4}
!212 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @ti_unthrottle._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @ti_unthrottle._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.90, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1036, i32 2}
!217 = !{ptr @.str.91, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @ti_tiocmget.__UNIQUE_ID_ddebug261, !216, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!219 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1119, i32 3}
!221 = !{ptr @.str.93, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @ti_interrupt_callback.__UNIQUE_ID_ddebug264, !220, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!223 = !{ptr @.str.94, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1122, i32 3}
!225 = !{ptr @ti_interrupt_callback._entry, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @ti_interrupt_callback._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.95, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1127, i32 3}
!229 = !{ptr @ti_interrupt_callback.__UNIQUE_ID_ddebug265, !228, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1132, i32 3}
!232 = !{ptr @ti_interrupt_callback._entry.96, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @ti_interrupt_callback._entry_ptr.98, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.99, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1139, i32 2}
!236 = !{ptr @ti_interrupt_callback.__UNIQUE_ID_ddebug266, !235, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1143, i32 3}
!239 = !{ptr @ti_interrupt_callback._entry.100, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @ti_interrupt_callback._entry_ptr.102, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.104, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1156, i32 3}
!243 = !{ptr @ti_interrupt_callback._entry.103, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @ti_interrupt_callback._entry_ptr.105, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.106, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1162, i32 3}
!247 = !{ptr @ti_interrupt_callback.__UNIQUE_ID_ddebug267, !246, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!248 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1167, i32 3}
!250 = !{ptr @ti_interrupt_callback._entry.107, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @ti_interrupt_callback._entry_ptr.109, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.111, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1175, i32 3}
!254 = !{ptr @ti_interrupt_callback._entry.110, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @ti_interrupt_callback._entry_ptr.112, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.113, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1400, i32 2}
!258 = !{ptr @.str.114, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @ti_handle_new_msr.__UNIQUE_ID_ddebug272, !257, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!260 = !{ptr @.str.115, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1195, i32 3}
!262 = !{ptr @ti_bulk_in_callback.__UNIQUE_ID_ddebug268, !261, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!263 = !{ptr @ti_bulk_in_callback._entry, !264, !"_entry", i1 false, i1 false}
!264 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1198, i32 3}
!265 = !{ptr @ti_bulk_in_callback._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.117, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1206, i32 3}
!268 = !{ptr @ti_bulk_in_callback._entry.116, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @ti_bulk_in_callback._entry_ptr.118, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1215, i32 4}
!272 = !{ptr @ti_bulk_in_callback.__UNIQUE_ID_ddebug269, !271, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!273 = !{ptr @.str.121, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1234, i32 3}
!275 = !{ptr @ti_bulk_in_callback._entry.120, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @ti_bulk_in_callback._entry_ptr.122, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.123, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1273, i32 4}
!279 = !{ptr @.str.124, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @ti_recv._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @ti_recv._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.125, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1253, i32 3}
!284 = !{ptr @ti_bulk_out_callback.__UNIQUE_ID_ddebug270, !283, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!285 = distinct !{null, !286, !"__print_once", i1 false, i1 false}
!286 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 1256, i32 3}
!287 = !{ptr @ti_bulk_out_callback._entry, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @ti_bulk_out_callback._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.126, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 455, i32 18}
!291 = !{ptr @.str.127, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 453, i32 12}
!293 = !{ptr @ti_2port_device, !294, !"ti_2port_device", i1 false, i1 false}
!294 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 450, i32 33}
!295 = !{ptr @ti_id_table_5052, !296, !"ti_id_table_5052", i1 false, i1 false}
!296 = !{!"../drivers/usb/serial/ti_usb_3410_5052.c", i32 378, i32 35}
!297 = !{i32 1, !"wchar_size", i32 2}
!298 = !{i32 1, !"min_enum_size", i32 4}
!299 = !{i32 8, !"branch-target-enforcement", i32 0}
!300 = !{i32 8, !"sign-return-address", i32 0}
!301 = !{i32 8, !"sign-return-address-all", i32 0}
!302 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 2}
!305 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!306 = !{i64 2148734292, i64 2148734297, i64 2148734310, i64 2148734354, i64 2148734388, i64 2148734409}
!307 = !{i8 0, i8 2}
!308 = !{!"auto-init"}
