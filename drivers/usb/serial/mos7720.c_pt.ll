; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/mos7720.c_pt.bc'
source_filename = "../drivers/usb/serial/mos7720.c"
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
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.divisor_table_entry = type { i32, i16 }
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
%struct.mos7715_parport = type { ptr, %struct.kref, i8, %struct.completion, %struct.work_struct, ptr, i8, i8, %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.usb_serial_endpoints = type { i8, i8, i8, i8, [16 x ptr], [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.moschip_port = type { i8, i8, i8, i8, ptr, [16 x ptr] }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.pc_parport_state = type { i32, i32 }

@__initcall__kmod_mos7720__284_1776_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @moschip7720_2port_driver, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author285 = internal constant [46 x i8] c"mos7720.author=Aspire Communications pvt Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description286 = internal constant [46 x i8] c"mos7720.description=Moschip USB Serial Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file287 = internal constant [40 x i8] c"mos7720.file=drivers/usb/serial/mos7720\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [23 x i8] c"mos7720.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mos7720\00", [24 x i8] zeroinitializer }, align 32
@id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 -26864, i16 30496, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -26864, i16 30485, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@moschip7720_2port_driver = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 0, i8 2, i8 2, i8 1, i8 0, i32 0, i32 0, ptr null, ptr @mos7720_startup, ptr @mos77xx_calc_num_ports, ptr null, ptr @mos7720_release, ptr @mos7720_port_probe, ptr @mos7720_port_remove, ptr null, ptr null, ptr null, ptr @mos7720_open, ptr @mos7720_close, ptr @mos7720_write, ptr @mos7720_write_room, ptr @mos7720_ioctl, ptr null, ptr null, ptr @mos7720_set_termios, ptr @mos7720_break, ptr @mos7720_chars_in_buffer, ptr null, ptr null, ptr @mos7720_throttle, ptr @mos7720_unthrottle, ptr @mos7720_tiocmget, ptr @mos7720_tiocmset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mos7720_interrupt_callback, ptr null, ptr @mos7720_bulk_in_callback, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Moschip 2 port adapter\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"moschip7720\00", [20 x i8] zeroinitializer }, align 32
@mos7720_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1669, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to submit interrupt urb: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mos7720_startup\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/serial/mos7720.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mos7720_startup._entry_ptr = internal global ptr @mos7720_startup._entry, section ".printk_index", align 4
@mos7720_startup.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 1, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LSR:%x\0A\00", [24 x i8] zeroinitializer }, align 32
@mos7715_interrupt_callback.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mos7715_interrupt_callback\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mos7715_interrupt_callback.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.5, ptr @.str.11, i8 0, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mos7715_interrupt_callback.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.5, ptr @.str.12, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Wrong data !!!\0A\00", [16 x i8] zeroinitializer }, align 32
@mos7715_interrupt_callback.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.5, ptr @.str.13, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Serial Port: Receiver status error or address bit detected in 9-bit mode\0A\00", [54 x i8] zeroinitializer }, align 32
@mos7715_interrupt_callback.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.5, ptr @.str.14, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Serial Port: Receiver time out\0A\00", [32 x i8] zeroinitializer }, align 32
@mos7715_interrupt_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.5, i32 757, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - Error %d submitting control urb\0A\00", [58 x i8] zeroinitializer }, align 32
@mos7715_interrupt_callback._entry_ptr = internal global ptr @mos7715_interrupt_callback._entry, section ".printk_index", align 4
@mos7715_parport_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&mos_parport->work)\00", [58 x i8] zeroinitializer }, align 32
@parport_mos7715_ops = internal global { %struct.parport_operations, [32 x i8] } { %struct.parport_operations { ptr @parport_mos7715_write_data, ptr @parport_mos7715_read_data, ptr @parport_mos7715_write_control, ptr @parport_mos7715_read_control, ptr @parport_mos7715_frob_control, ptr @parport_mos7715_read_status, ptr @parport_mos7715_enable_irq, ptr @parport_mos7715_disable_irq, ptr @parport_mos7715_data_forward, ptr @parport_mos7715_data_reverse, ptr @parport_mos7715_init_state, ptr @parport_mos7715_save_state, ptr @parport_mos7715_restore_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @parport_mos7715_write_compat, ptr @parport_ieee1284_read_nibble, ptr @parport_ieee1284_read_byte, ptr null }, [32 x i8] zeroinitializer }, align 32
@mos7715_parport_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 587, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not register parport\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mos7715_parport_init\00", [43 x i8] zeroinitializer }, align 32
@mos7715_parport_init._entry_ptr = internal global ptr @mos7715_parport_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@write_mos_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 196, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mos7720: usb_control_msg() failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write_mos_reg\00", [18 x i8] zeroinitializer }, align 32
@write_mos_reg._entry_ptr = internal global ptr @write_mos_reg._entry, section ".printk_index", align 4
@get_reg_index.mos7715_index_lookup_table = internal constant { [20 x i16], [56 x i8] } { [20 x i16] [i16 0, i16 0, i16 1, i16 2, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 0, i16 1, i16 0, i16 1, i16 2, i16 10, i16 1, i16 2, i16 4, i16 8], [56 x i8] zeroinitializer }, align 32
@release_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"release_lock\00", [19 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@parport_mos7715_write_compat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 516, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mos7720: usb_bulk_msg() failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"parport_mos7715_write_compat\00", [35 x i8] zeroinitializer }, align 32
@parport_mos7715_write_compat._entry_ptr = internal global ptr @parport_mos7715_write_compat._entry, section ".printk_index", align 4
@read_mos_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.25, ptr @.str.5, i32 229, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_mos_reg\00", [19 x i8] zeroinitializer }, align 32
@read_mos_reg._entry_ptr = internal global ptr @read_mos_reg._entry, section ".printk_index", align 4
@mos7720_open.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mos7720_open\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SS::%p LSR:%x\0A\00", [17 x i8] zeroinitializer }, align 32
@mos7720_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 932, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - Error %d submitting read urb\0A\00", [61 x i8] zeroinitializer }, align 32
@mos7720_open._entry_ptr = internal global ptr @mos7720_open._entry, section ".printk_index", align 4
@mos7720_write.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.5, ptr @.str.30, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mos7720_write\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"URB:%d\0A\00", [24 x i8] zeroinitializer }, align 32
@mos7720_write.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.5, ptr @.str.31, i8 1, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - no more free urbs\0A\00", [40 x i8] zeroinitializer }, align 32
@mos7720_write.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mos7720_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.5, i32 1106, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s - usb_submit_urb(write bulk) failed with status = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mos7720_write._entry_ptr = internal global ptr @mos7720_write._entry, section ".printk_index", align 4
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.34, ptr @.str.35, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@mos7720_bulk_out_data_callback.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.5, ptr @.str.37, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mos7720_bulk_out_data_callback\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nonzero write bulk status received:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mos7720_bulk_out_data_callback.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.5, ptr @.str.38, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NULL mos7720_port pointer\0A\00", [37 x i8] zeroinitializer }, align 32
@mos7720_write_room.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.5, ptr @.str.40, i8 1, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mos7720_write_room\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - returns %u\0A\00", [47 x i8] zeroinitializer }, align 32
@mos7720_ioctl.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.5, ptr @.str.42, i8 1, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mos7720_ioctl\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s TIOCSERGETLSR\0A\00", [46 x i8] zeroinitializer }, align 32
@get_lsr_info.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.5, ptr @.str.44, i8 1, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_lsr_info\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s -- Empty\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mos7720_set_termios.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.5, ptr @.str.49, i8 1, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mos7720_set_termios\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - port not opened\0A\00", [42 x i8] zeroinitializer }, align 32
@mos7720_set_termios.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.5, ptr @.str.50, i8 1, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"usb_submit_urb(read bulk) failed, status = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.5, ptr @.str.49, i8 1, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"change_port_settings\00", [43 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.5, ptr @.str.52, i8 1, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - parity = odd\0A\00", [45 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.5, ptr @.str.53, i8 1, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - parity = even\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.5, ptr @.str.54, i8 1, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - parity = none\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.5, ptr @.str.55, i8 1, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - stop bits = 2\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.5, ptr @.str.56, i8 1, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - stop bits = 1\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.5, ptr @.str.57, i8 1, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Picked default baud...\0A\00", [40 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.5, ptr @.str.58, i8 1, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - baud rate = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.5, ptr @.str.50, i8 1, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@set_higher_rates.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set_higher_rates\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Sending Setting Commands ..........\0A\00", [59 x i8] zeroinitializer }, align 32
@send_cmd_write_baud_rate.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.5, ptr @.str.62, i8 1, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"send_cmd_write_baud_rate\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - baud = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@send_cmd_write_baud_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.5, i32 1332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - bad baud rate\0A\00", [44 x i8] zeroinitializer }, align 32
@send_cmd_write_baud_rate._entry_ptr = internal global ptr @send_cmd_write_baud_rate._entry, section ".printk_index", align 4
@calc_baud_rate_divisor.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.5, ptr @.str.65, i8 1, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"calc_baud_rate_divisor\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s - %d\0A\00", [23 x i8] zeroinitializer }, align 32
@divisor_table = internal constant { [16 x %struct.divisor_table_entry], [32 x i8] } { [16 x %struct.divisor_table_entry] [%struct.divisor_table_entry { i32 50, i16 2304 }, %struct.divisor_table_entry { i32 110, i16 1047 }, %struct.divisor_table_entry { i32 134, i16 857 }, %struct.divisor_table_entry { i32 150, i16 768 }, %struct.divisor_table_entry { i32 300, i16 384 }, %struct.divisor_table_entry { i32 600, i16 192 }, %struct.divisor_table_entry { i32 1200, i16 96 }, %struct.divisor_table_entry { i32 1800, i16 64 }, %struct.divisor_table_entry { i32 2400, i16 48 }, %struct.divisor_table_entry { i32 4800, i16 24 }, %struct.divisor_table_entry { i32 7200, i16 16 }, %struct.divisor_table_entry { i32 9600, i16 12 }, %struct.divisor_table_entry { i32 19200, i16 6 }, %struct.divisor_table_entry { i32 38400, i16 3 }, %struct.divisor_table_entry { i32 57600, i16 2 }, %struct.divisor_table_entry { i32 115200, i16 1 }], [32 x i8] zeroinitializer }, align 32
@calc_baud_rate_divisor.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.5, ptr @.str.66, i8 1, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Baud %d = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@calc_baud_rate_divisor.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.5, ptr @.str.67, i8 1, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Baud calculation Failed...\0A\00", [36 x i8] zeroinitializer }, align 32
@mos7720_chars_in_buffer.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.5, ptr @.str.40, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mos7720_chars_in_buffer\00", [40 x i8] zeroinitializer }, align 32
@mos7720_throttle.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.5, ptr @.str.49, i8 1, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mos7720_throttle\00", [47 x i8] zeroinitializer }, align 32
@mos7720_unthrottle.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.5, ptr @.str.49, i8 1, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mos7720_unthrottle\00", [45 x i8] zeroinitializer }, align 32
@mos7720_interrupt_callback.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.5, ptr @.str.10, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mos7720_interrupt_callback\00", [37 x i8] zeroinitializer }, align 32
@mos7720_interrupt_callback.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.5, ptr @.str.11, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mos7720_interrupt_callback.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.5, ptr @.str.12, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mos7720_interrupt_callback.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.5, ptr @.str.72, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No Interrupt !!!\0A\00", [46 x i8] zeroinitializer }, align 32
@mos7720_interrupt_callback.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.5, ptr @.str.73, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Serial Port 1: Receiver status error or address bit detected in 9-bit mode\0A\00", [52 x i8] zeroinitializer }, align 32
@mos7720_interrupt_callback.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.5, ptr @.str.74, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Serial Port 1: Receiver time out\0A\00", [62 x i8] zeroinitializer }, align 32
@mos7720_interrupt_callback.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.5, ptr @.str.75, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Serial Port 2: Receiver status error or address bit detected in 9-bit mode\0A\00", [52 x i8] zeroinitializer }, align 32
@mos7720_interrupt_callback.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.5, ptr @.str.76, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Serial Port 2: Receiver time out\0A\00", [62 x i8] zeroinitializer }, align 32
@mos7720_interrupt_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.71, ptr @.str.5, i32 682, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mos7720_interrupt_callback._entry_ptr = internal global ptr @mos7720_interrupt_callback._entry, section ".printk_index", align 4
@mos7720_bulk_in_callback.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.5, ptr @.str.78, i8 0, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mos7720_bulk_in_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nonzero read bulk status received: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mos7720_bulk_in_callback.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.5, ptr @.str.79, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Entering...%s\0A\00", [17 x i8] zeroinitializer }, align 32
@mos7720_bulk_in_callback.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.5, ptr @.str.80, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"usb_submit_urb(read bulk) failed, retval = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 12]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 12]
@__sancov_gen_cov_switch_values.83 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 12]
@__sancov_gen_cov_switch_values.85 = internal global [18 x i64] [i64 16, i64 32, i64 50, i64 110, i64 134, i64 150, i64 300, i64 600, i64 1200, i64 1800, i64 2400, i64 4800, i64 7200, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200]
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1772, i32 41 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1776, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 69, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"moschip7720_2port_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1741, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1746, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1744, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1668, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1674, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 708, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 711, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 725, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 733, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 736, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 757, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 566, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c"parport_mos7715_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 522, i32 34 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 586, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 87, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 195, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"mos7715_index_lookup_table\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 136, i32 21 }
@___asan_gen_.185 = private unnamed_addr constant [13 x i8] c"release_lock\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 101, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 515, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 228, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 899, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 931, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1071, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1077, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [27 x i8] c"mos7720_write.__print_once\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1105, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 393, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 806, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 812, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1041, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1636, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1564, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 174, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1526, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1536, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1379, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1412, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1415, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1419, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1428, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1431, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1482, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1493, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1195, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1327, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1332, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1276, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [14 x i8] c"divisor_table\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1244, i32 41 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1298, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1302, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 961, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1128, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1158, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 623, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 652, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 656, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 659, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 668, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 671, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 682, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 773, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 779, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.379 = private constant [32 x i8] c"../drivers/usb/serial/mos7720.c\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 791, i32 4 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_mos7720__284_1776_usb_serial_module_init6, ptr @mos7715_interrupt_callback._entry, ptr @mos7715_interrupt_callback._entry_ptr, ptr @mos7715_parport_init._entry, ptr @mos7715_parport_init._entry_ptr, ptr @mos7720_interrupt_callback._entry, ptr @mos7720_interrupt_callback._entry_ptr, ptr @mos7720_open._entry, ptr @mos7720_open._entry_ptr, ptr @mos7720_startup._entry, ptr @mos7720_startup._entry_ptr, ptr @mos7720_write._entry, ptr @mos7720_write._entry_ptr, ptr @parport_mos7715_write_compat._entry, ptr @parport_mos7715_write_compat._entry_ptr, ptr @read_mos_reg._entry, ptr @read_mos_reg._entry_ptr, ptr @send_cmd_write_baud_rate._entry, ptr @send_cmd_write_baud_rate._entry_ptr, ptr @usb_serial_module_exit, ptr @write_mos_reg._entry, ptr @write_mos_reg._entry_ptr, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @moschip7720_2port_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @mos7715_parport_init.__key, ptr @.str.16, ptr @parport_mos7715_ops, ptr @.str.17, ptr @.str.18, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @get_reg_index.mos7715_index_lookup_table, ptr @release_lock, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @mos7720_write.__print_once, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @divisor_table, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moschip7720_2port_driver to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7720_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7715_interrupt_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7715_parport_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_mos7715_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7715_parport_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_mos_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_reg_index.mos7715_index_lookup_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_mos7715_write_compat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_mos_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7720_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7720_write.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7720_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd_write_baud_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @divisor_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7720_interrupt_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #12
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
define internal i32 @mos7720_startup(ptr noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5495, i16 %3)
  %cmp = icmp eq i16 %3, 5495
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  %port = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_in_urb, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mos7715_interrupt_callback, ptr %complete, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 124) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup27_crit_edge, label %if.end.i

if.then.cleanup27_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end.i:                                         ; preds = %if.then
  %msg_pending.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %msg_pending.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %msg_pending.i, align 8
  %ref_count.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #12
  %11 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %ref_count.i, align 4
  %private.i.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %12 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %private.i.i, align 4
  %serial1.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %serial1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %serial, ptr %serial1.i, align 8
  %work.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #12
  %14 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mos7715_parport_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry5.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry5.i, ptr %entry5.i, align 8
  %prev.i.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @deferred_restore_writes, ptr %func.i, align 8
  %syncmsg_compl.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %syncmsg_compl.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %syncmsg_compl.i, align 4
  %wait.i.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #12
  %19 = ptrtoint ptr %serial1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serial1.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i.i = shl i32 %24, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 128, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.write_mos_reg.exit.i_crit_edge

if.end.i.write_mos_reg.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i.i) #16
  br label %write_mos_reg.exit.i

write_mos_reg.exit.i:                             ; preds = %do.end.i.i, %if.end.i.write_mos_reg.exit.i_crit_edge
  %25 = ptrtoint ptr %serial1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %serial1.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i62.i = shl i32 %30, 8
  %or.i63.i = or i32 %shl.i.i62.i, -2147483648
  %call5.i64.i = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i63.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i64.i)
  %cmp.i65.i = icmp slt i32 %call5.i64.i, 0
  br i1 %cmp.i65.i, label %do.end.i67.i, label %write_mos_reg.exit.i.write_mos_reg.exit68.i_crit_edge

write_mos_reg.exit.i.write_mos_reg.exit68.i_crit_edge: ; preds = %write_mos_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit68.i

do.end.i67.i:                                     ; preds = %write_mos_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i66.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i66.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i64.i) #16
  br label %write_mos_reg.exit68.i

write_mos_reg.exit68.i:                           ; preds = %do.end.i67.i, %write_mos_reg.exit.i.write_mos_reg.exit68.i_crit_edge
  %shadowDCR.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %shadowDCR.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 12, ptr %shadowDCR.i, align 1
  %32 = ptrtoint ptr %serial1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %serial1.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i69.i = shl i32 %37, 8
  %or.i70.i = or i32 %shl.i.i69.i, -2147483648
  %call5.i71.i = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i70.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 268, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i71.i)
  %cmp.i72.i = icmp slt i32 %call5.i71.i, 0
  br i1 %cmp.i72.i, label %do.end.i74.i, label %write_mos_reg.exit68.i.write_mos_reg.exit75.i_crit_edge

write_mos_reg.exit68.i.write_mos_reg.exit75.i_crit_edge: ; preds = %write_mos_reg.exit68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit75.i

do.end.i74.i:                                     ; preds = %write_mos_reg.exit68.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i73.i = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i73.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i71.i) #16
  br label %write_mos_reg.exit75.i

write_mos_reg.exit75.i:                           ; preds = %do.end.i74.i, %write_mos_reg.exit68.i.write_mos_reg.exit75.i_crit_edge
  %shadowECR.i = getelementptr inbounds %struct.mos7715_parport, ptr %call7.i.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %shadowECR.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %shadowECR.i, align 4
  %39 = ptrtoint ptr %serial1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %serial1.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i76.i = shl i32 %44, 8
  %or.i77.i = or i32 %shl.i.i76.i, -2147483648
  %call5.i78.i = tail call i32 @usb_control_msg(ptr noundef %42, i32 noundef %or.i77.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 256, i16 noundef zeroext 10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i78.i)
  %cmp.i79.i = icmp slt i32 %call5.i78.i, 0
  br i1 %cmp.i79.i, label %do.end.i81.i, label %write_mos_reg.exit75.i.write_mos_reg.exit82.i_crit_edge

write_mos_reg.exit75.i.write_mos_reg.exit82.i_crit_edge: ; preds = %write_mos_reg.exit75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit82.i

do.end.i81.i:                                     ; preds = %write_mos_reg.exit75.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i80.i = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i80.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i78.i) #16
  br label %write_mos_reg.exit82.i

write_mos_reg.exit82.i:                           ; preds = %do.end.i81.i, %write_mos_reg.exit75.i.write_mos_reg.exit82.i_crit_edge
  %call17.i = tail call ptr @parport_register_port(i32 noundef 0, i32 noundef -1, i32 noundef -1, ptr noundef nonnull @parport_mos7715_ops) #12
  %45 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call17.i, ptr %call7.i.i.i, align 8
  %cmp.i = icmp eq ptr %call17.i, null
  br i1 %cmp.i, label %do.end22.i, label %mos7715_parport_init.exit

do.end22.i:                                       ; preds = %write_mos_reg.exit82.i
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %46 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %interface.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %47, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #16
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #12
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #12, !srcloc !248
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup27_crit_edge, label %if.then10.i.i.i.i.i, !prof !249

if.end5.i.i.i.i.i.cleanup27_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #12
  br label %cleanup27

if.then.i.i:                                      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !250
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup27

mos7715_parport_init.exit:                        ; preds = %write_mos_reg.exit82.i
  call void @__sanitizer_cov_trace_pc() #14
  %private_data.i = getelementptr inbounds %struct.parport, ptr %call17.i, i32 0, i32 25
  %49 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i.i, ptr %private_data.i, align 8
  %50 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i.i, align 8
  %modes.i = getelementptr inbounds %struct.parport, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %modes.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 17, ptr %modes.i, align 8
  %interface28.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %53 = ptrtoint ptr %interface28.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %interface28.i, align 4
  %dev29.i = getelementptr inbounds %struct.usb_interface, ptr %54, i32 0, i32 7
  %55 = load ptr, ptr %call7.i.i.i, align 8
  %dev31.i = getelementptr inbounds %struct.parport, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %dev31.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev29.i, ptr %dev31.i, align 4
  %57 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @parport_announce_port(ptr noundef %57) #12
  br label %if.end7

if.end7:                                          ; preds = %mos7715_parport_init.exit, %entry.if.end7_crit_edge
  %port8 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %58 = ptrtoint ptr %port8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port8, align 4
  %interrupt_in_urb10 = getelementptr inbounds %struct.usb_serial_port, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %interrupt_in_urb10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %interrupt_in_urb10, align 4
  %call11 = tail call i32 @usb_submit_urb(ptr noundef %61, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end7.if.end14_crit_edge, label %do.end

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %dev13 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.3, i32 noundef %call11) #16
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end7.if.end14_crit_edge
  %62 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %serial, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3264, i32 noundef 1) #15
  %tobool.not.i41 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i41, label %if.end14.read_mos_reg.exit_crit_edge, label %if.end.i43

if.end14.read_mos_reg.exit_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_mos_reg.exit

if.end.i43:                                       ; preds = %if.end14
  %shl.i.i = shl i32 %65, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or1.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 512, i16 noundef zeroext 5, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.i42 = icmp eq i32 %call5.i, 1
  br i1 %cmp.i42, label %if.then6.i, label %do.end.i

if.then6.i:                                       ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %call7.i.i, align 8
  br label %if.end11.i

do.end.i:                                         ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.then6.i
  %storemerge.i = phi i8 [ 0, %do.end.i ], [ %68, %if.then6.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %read_mos_reg.exit

read_mos_reg.exit:                                ; preds = %if.end11.i, %if.end14.read_mos_reg.exit_crit_edge
  %data.0 = phi i8 [ %storemerge.i, %if.end11.i ], [ 0, %if.end14.read_mos_reg.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_startup.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_startup, %if.then21)) #12
          to label %cleanup27 [label %if.then21], !srcloc !251

if.then21:                                        ; preds = %read_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv23 = zext i8 %data.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_startup.__UNIQUE_ID_ddebug283, ptr noundef %dev22, ptr noundef nonnull @.str.8, i32 noundef %conv23) #12
  br label %cleanup27

cleanup27:                                        ; preds = %if.then21, %read_mos_reg.exit, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup27_crit_edge, %if.then.cleanup27_crit_edge
  %retval.1 = phi i32 [ 0, %if.then21 ], [ 0, %read_mos_reg.exit ], [ -5, %if.then.i.i ], [ -5, %if.then10.i.i.i.i.i ], [ -5, %if.end5.i.i.i.i.i.cleanup27_crit_edge ], [ -12, %if.then.cleanup27_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mos77xx_calc_num_ports(ptr nocapture noundef readonly %serial, ptr nocapture noundef %epds) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5495, i16 %3)
  %cmp = icmp eq i16 %3, 5495
  br i1 %cmp, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bulk_in = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 4
  %4 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bulk_in, align 4
  %arrayidx3 = getelementptr %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  store ptr %7, ptr %bulk_in, align 4
  store ptr %5, ptr %arrayidx3, align 4
  %bulk_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 5
  %8 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bulk_out, align 4
  %arrayidx12 = getelementptr %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  store ptr %11, ptr %bulk_out, align 4
  store ptr %9, ptr %arrayidx12, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7720_release(ptr nocapture noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #12
  %4 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 16, i32 8
  %6 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5495, i16 %7)
  %cmp = icmp eq i16 %7, 5495
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_lock) #12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %private_data = getelementptr inbounds %struct.parport, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %private_data, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_lock) #12
  %msg_pending = getelementptr inbounds %struct.mos7715_parport, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %msg_pending to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %msg_pending, align 4, !range !252
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %syncmsg_compl = getelementptr inbounds %struct.mos7715_parport, ptr %9, i32 0, i32 3
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %syncmsg_compl, i32 noundef 500) #12
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %work = getelementptr inbounds %struct.mos7715_parport, ptr %9, i32 0, i32 4
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #12
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 4
  tail call void @parport_remove_port(ptr noundef %16) #12
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %private.i, align 4
  %serial7 = getelementptr inbounds %struct.mos7715_parport, ptr %9, i32 0, i32 5
  %18 = ptrtoint ptr %serial7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %serial7, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %9, align 4
  tail call void @parport_del_port(ptr noundef %20) #12
  %ref_count = getelementptr inbounds %struct.mos7715_parport, ptr %9, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #12, !srcloc !248
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end10_crit_edge, label %if.then10.i.i.i.i, !prof !249

if.end5.i.i.i.i.if.end10_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #12
  br label %if.end10

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !250
  tail call void @kfree(ptr noundef %9) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7720_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %port1 = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %port, ptr %port1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7720_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7720_open(ptr nocapture noundef readnone %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %6 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_urb, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe, align 4
  %call2 = tail call i32 @usb_clear_halt(ptr noundef %5, i32 noundef %9) #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %12 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_urb, align 4
  %pipe4 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %pipe4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipe4, align 4
  %call5 = tail call i32 @usb_clear_halt(ptr noundef %11, i32 noundef %15) #12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %j.0288 = phi i32 [ 0, %if.end ], [ %inc19, %for.inc.for.body_crit_edge ]
  %allocated_urbs.0287 = phi i32 [ 0, %if.end ], [ %allocated_urbs.1, %for.inc.for.body_crit_edge ]
  %call7 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %arrayidx = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 %j.0288
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end9:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 32) #15
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %transfer_buffer, align 4
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %20) #12
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

if.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %allocated_urbs.0287, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %if.then13, %for.body.for.inc_crit_edge
  %allocated_urbs.1 = phi i32 [ %inc, %if.end18 ], [ %allocated_urbs.0287, %if.then13 ], [ %allocated_urbs.0287, %for.body.for.inc_crit_edge ]
  %inc19 = add nuw nsw i32 %j.0288, 1
  %exitcond.not = icmp eq i32 %inc19, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allocated_urbs.1)
  %tobool20.not = icmp eq i32 %allocated_urbs.1, 0
  br i1 %tobool20.not, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %port_number23 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %22 = ptrtoint ptr %port_number23 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_number23, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %serial_portnum.tr.i.i = zext i8 %23 to i16
  %28 = shl nuw i16 %serial_portnum.tr.i.i, 8
  %conv.i.i = add i16 %28, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 1) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end22.read_mos_reg.exit_crit_edge, label %if.end.i

if.end22.read_mos_reg.exit_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_mos_reg.exit

if.end.i:                                         ; preds = %if.end22
  %shl.i.i = shl i32 %27, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or1.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 5, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.i = icmp eq i32 %call5.i, 1
  br i1 %cmp.i, label %if.then6.i, label %do.end.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %call7.i.i, align 8
  br label %if.end11.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.then6.i
  %storemerge.i = phi i8 [ 0, %do.end.i ], [ %31, %if.then6.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %read_mos_reg.exit

read_mos_reg.exit:                                ; preds = %if.end11.i, %if.end22.read_mos_reg.exit_crit_edge
  %data.0 = phi i8 [ %storemerge.i, %if.end11.i ], [ 0, %if.end22.read_mos_reg.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_open.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_open, %if.then29)) #12
          to label %do.end [label %if.then29], !srcloc !251

if.then29:                                        ; preds = %read_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev30 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv31 = zext i8 %data.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_open.__UNIQUE_ID_ddebug256, ptr noundef %dev30, ptr noundef nonnull @.str.27, ptr noundef nonnull %3, i32 noundef %conv31) #12
  br label %do.end

do.end:                                           ; preds = %if.then29, %read_mos_reg.exit
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i134 = shl i32 %35, 8
  %or.i = or i32 %shl.i.i134, -2147483648
  %call5.i135 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i135)
  %cmp.i136 = icmp slt i32 %call5.i135, 0
  br i1 %cmp.i136, label %do.end.i138, label %do.end.write_mos_reg.exit_crit_edge

do.end.write_mos_reg.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i138:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i137 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i137, ptr noundef nonnull @.str.20, i32 noundef %call5.i135) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i138, %do.end.write_mos_reg.exit_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i.i140 = shl i32 %39, 8
  %or.i141 = or i32 %shl.i.i140, -2147483648
  %call5.i142 = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or.i141, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i142)
  %cmp.i143 = icmp slt i32 %call5.i142, 0
  br i1 %cmp.i143, label %do.end.i145, label %write_mos_reg.exit.write_mos_reg.exit147_crit_edge

write_mos_reg.exit.write_mos_reg.exit147_crit_edge: ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit147

do.end.i145:                                      ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i144 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i144, ptr noundef nonnull @.str.20, i32 noundef %call5.i142) #16
  br label %write_mos_reg.exit147

write_mos_reg.exit147:                            ; preds = %do.end.i145, %write_mos_reg.exit.write_mos_reg.exit147_crit_edge
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i148 = shl i32 %43, 8
  %or.i149 = or i32 %shl.i.i148, -2147483648
  %call5.i152 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or.i149, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i152)
  %cmp.i153 = icmp slt i32 %call5.i152, 0
  br i1 %cmp.i153, label %do.end.i155, label %write_mos_reg.exit147.write_mos_reg.exit157_crit_edge

write_mos_reg.exit147.write_mos_reg.exit157_crit_edge: ; preds = %write_mos_reg.exit147
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit157

do.end.i155:                                      ; preds = %write_mos_reg.exit147
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i154 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i154, ptr noundef nonnull @.str.20, i32 noundef %call5.i152) #16
  br label %write_mos_reg.exit157

write_mos_reg.exit157:                            ; preds = %do.end.i155, %write_mos_reg.exit147.write_mos_reg.exit157_crit_edge
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i.i158 = shl i32 %47, 8
  %or.i159 = or i32 %shl.i.i158, -2147483648
  %call5.i162 = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or.i159, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i162)
  %cmp.i163 = icmp slt i32 %call5.i162, 0
  br i1 %cmp.i163, label %do.end.i165, label %write_mos_reg.exit157.write_mos_reg.exit167_crit_edge

write_mos_reg.exit157.write_mos_reg.exit167_crit_edge: ; preds = %write_mos_reg.exit157
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit167

do.end.i165:                                      ; preds = %write_mos_reg.exit157
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i164 = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i164, ptr noundef nonnull @.str.20, i32 noundef %call5.i162) #16
  br label %write_mos_reg.exit167

write_mos_reg.exit167:                            ; preds = %do.end.i165, %write_mos_reg.exit157.write_mos_reg.exit167_crit_edge
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i168 = shl i32 %51, 8
  %or.i169 = or i32 %shl.i.i168, -2147483648
  %add.i = add i16 %28, 719
  %call5.i172 = tail call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or.i169, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i172)
  %cmp.i173 = icmp slt i32 %call5.i172, 0
  br i1 %cmp.i173, label %do.end.i175, label %write_mos_reg.exit167.write_mos_reg.exit177_crit_edge

write_mos_reg.exit167.write_mos_reg.exit177_crit_edge: ; preds = %write_mos_reg.exit167
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit177

do.end.i175:                                      ; preds = %write_mos_reg.exit167
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i174 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i174, ptr noundef nonnull @.str.20, i32 noundef %call5.i172) #16
  br label %write_mos_reg.exit177

write_mos_reg.exit177:                            ; preds = %do.end.i175, %write_mos_reg.exit167.write_mos_reg.exit177_crit_edge
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %3, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i.i178 = shl i32 %56, 8
  %or.i179 = or i32 %shl.i.i178, -2147483648
  %add.i182 = add i16 %28, 515
  %call5.i183 = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or.i179, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i182, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i183)
  %cmp.i184 = icmp slt i32 %call5.i183, 0
  br i1 %cmp.i184, label %do.end.i186, label %write_mos_reg.exit177.write_mos_reg.exit188_crit_edge

write_mos_reg.exit177.write_mos_reg.exit188_crit_edge: ; preds = %write_mos_reg.exit177
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit188

do.end.i186:                                      ; preds = %write_mos_reg.exit177
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i185 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i185, ptr noundef nonnull @.str.20, i32 noundef %call5.i183) #16
  br label %write_mos_reg.exit188

write_mos_reg.exit188:                            ; preds = %do.end.i186, %write_mos_reg.exit177.write_mos_reg.exit188_crit_edge
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 1
  %57 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 11, ptr %shadowMCR, align 1
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %shl.i.i189 = shl i32 %61, 8
  %or.i190 = or i32 %shl.i.i189, -2147483648
  %add.i193 = add i16 %28, 523
  %call5.i194 = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i190, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i193, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i194)
  %cmp.i195 = icmp slt i32 %call5.i194, 0
  br i1 %cmp.i195, label %do.end.i197, label %write_mos_reg.exit188.write_mos_reg.exit199_crit_edge

write_mos_reg.exit188.write_mos_reg.exit199_crit_edge: ; preds = %write_mos_reg.exit188
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit199

do.end.i197:                                      ; preds = %write_mos_reg.exit188
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i196 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i196, ptr noundef nonnull @.str.20, i32 noundef %call5.i194) #16
  br label %write_mos_reg.exit199

write_mos_reg.exit199:                            ; preds = %do.end.i197, %write_mos_reg.exit188.write_mos_reg.exit199_crit_edge
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i.i200 = shl i32 %65, 8
  %or.i201 = or i32 %shl.i.i200, -2147483648
  %call5.i202 = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or.i201, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i202)
  %cmp.i203 = icmp slt i32 %call5.i202, 0
  br i1 %cmp.i203, label %do.end.i205, label %write_mos_reg.exit199.write_mos_reg.exit207_crit_edge

write_mos_reg.exit199.write_mos_reg.exit207_crit_edge: ; preds = %write_mos_reg.exit199
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit207

do.end.i205:                                      ; preds = %write_mos_reg.exit199
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i204 = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i204, ptr noundef nonnull @.str.20, i32 noundef %call5.i202) #16
  br label %write_mos_reg.exit207

write_mos_reg.exit207:                            ; preds = %do.end.i205, %write_mos_reg.exit199.write_mos_reg.exit207_crit_edge
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i209 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 1) #15
  %tobool.not.i210 = icmp eq ptr %call7.i.i209, null
  br i1 %tobool.not.i210, label %write_mos_reg.exit207.read_mos_reg.exit221_crit_edge, label %if.end.i215

write_mos_reg.exit207.read_mos_reg.exit221_crit_edge: ; preds = %write_mos_reg.exit207
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_mos_reg.exit221

if.end.i215:                                      ; preds = %write_mos_reg.exit207
  %shl.i.i208 = shl i32 %69, 8
  %or1.i212 = or i32 %shl.i.i208, -2147483520
  %call5.i213 = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or1.i212, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef nonnull %call7.i.i209, i16 noundef zeroext 1, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i213)
  %cmp.i214 = icmp eq i32 %call5.i213, 1
  br i1 %cmp.i214, label %if.then6.i216, label %do.end.i218

if.then6.i216:                                    ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %call7.i.i209 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %call7.i.i209, align 8
  br label %if.end11.i220

do.end.i218:                                      ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i217 = getelementptr inbounds %struct.usb_device, ptr %67, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i217, ptr noundef nonnull @.str.20, i32 noundef %call5.i213) #16
  br label %if.end11.i220

if.end11.i220:                                    ; preds = %do.end.i218, %if.then6.i216
  %storemerge.i219 = phi i8 [ 0, %do.end.i218 ], [ %72, %if.then6.i216 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i209) #12
  br label %read_mos_reg.exit221

read_mos_reg.exit221:                             ; preds = %if.end11.i220, %write_mos_reg.exit207.read_mos_reg.exit221_crit_edge
  %data.1 = phi i8 [ %storemerge.i219, %if.end11.i220 ], [ 0, %write_mos_reg.exit207.read_mos_reg.exit221_crit_edge ]
  %73 = ptrtoint ptr %port_number23 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %port_number23, align 4
  %add = add i8 %74, 1
  %or = or i8 %add, %data.1
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %shl.i.i222 = shl i32 %78, 8
  %or.i223 = or i32 %shl.i.i222, -2147483648
  %conv3.i = zext i8 %or to i16
  %call5.i225 = tail call i32 @usb_control_msg(ptr noundef %76, i32 noundef %or.i223, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv3.i, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i225)
  %cmp.i226 = icmp slt i32 %call5.i225, 0
  br i1 %cmp.i226, label %do.end.i228, label %read_mos_reg.exit221.write_mos_reg.exit230_crit_edge

read_mos_reg.exit221.write_mos_reg.exit230_crit_edge: ; preds = %read_mos_reg.exit221
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit230

do.end.i228:                                      ; preds = %read_mos_reg.exit221
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i227 = getelementptr inbounds %struct.usb_device, ptr %76, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i227, ptr noundef nonnull @.str.20, i32 noundef %call5.i225) #16
  br label %write_mos_reg.exit230

write_mos_reg.exit230:                            ; preds = %do.end.i228, %read_mos_reg.exit221.write_mos_reg.exit230_crit_edge
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -125, ptr %3, align 4
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %shl.i.i231 = shl i32 %83, 8
  %or.i232 = or i32 %shl.i.i231, -2147483648
  %add.i235 = add i16 %28, 643
  %call5.i236 = tail call i32 @usb_control_msg(ptr noundef %81, i32 noundef %or.i232, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i235, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i236)
  %cmp.i237 = icmp slt i32 %call5.i236, 0
  br i1 %cmp.i237, label %do.end.i239, label %write_mos_reg.exit230.write_mos_reg.exit241_crit_edge

write_mos_reg.exit230.write_mos_reg.exit241_crit_edge: ; preds = %write_mos_reg.exit230
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit241

do.end.i239:                                      ; preds = %write_mos_reg.exit230
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i238 = getelementptr inbounds %struct.usb_device, ptr %81, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i238, ptr noundef nonnull @.str.20, i32 noundef %call5.i236) #16
  br label %write_mos_reg.exit241

write_mos_reg.exit241:                            ; preds = %do.end.i239, %write_mos_reg.exit230.write_mos_reg.exit241_crit_edge
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  %shl.i.i242 = shl i32 %87, 8
  %or.i243 = or i32 %shl.i.i242, -2147483648
  %add.i246 = add i16 %28, 524
  %call5.i247 = tail call i32 @usb_control_msg(ptr noundef %85, i32 noundef %or.i243, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i246, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i247)
  %cmp.i248 = icmp slt i32 %call5.i247, 0
  br i1 %cmp.i248, label %do.end.i250, label %write_mos_reg.exit241.write_mos_reg.exit252_crit_edge

write_mos_reg.exit241.write_mos_reg.exit252_crit_edge: ; preds = %write_mos_reg.exit241
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit252

do.end.i250:                                      ; preds = %write_mos_reg.exit241
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i249 = getelementptr inbounds %struct.usb_device, ptr %85, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i249, ptr noundef nonnull @.str.20, i32 noundef %call5.i247) #16
  br label %write_mos_reg.exit252

write_mos_reg.exit252:                            ; preds = %do.end.i250, %write_mos_reg.exit241.write_mos_reg.exit252_crit_edge
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 8
  %shl.i.i253 = shl i32 %91, 8
  %or.i254 = or i32 %shl.i.i253, -2147483648
  %call5.i257 = tail call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or.i254, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i257)
  %cmp.i258 = icmp slt i32 %call5.i257, 0
  br i1 %cmp.i258, label %do.end.i260, label %write_mos_reg.exit252.write_mos_reg.exit262_crit_edge

write_mos_reg.exit252.write_mos_reg.exit262_crit_edge: ; preds = %write_mos_reg.exit252
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit262

do.end.i260:                                      ; preds = %write_mos_reg.exit252
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i259 = getelementptr inbounds %struct.usb_device, ptr %89, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i259, ptr noundef nonnull @.str.20, i32 noundef %call5.i257) #16
  br label %write_mos_reg.exit262

write_mos_reg.exit262:                            ; preds = %do.end.i260, %write_mos_reg.exit252.write_mos_reg.exit262_crit_edge
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 3, ptr %3, align 4
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 8
  %shl.i.i263 = shl i32 %96, 8
  %or.i264 = or i32 %shl.i.i263, -2147483648
  %call5.i268 = tail call i32 @usb_control_msg(ptr noundef %94, i32 noundef %or.i264, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i182, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i268)
  %cmp.i269 = icmp slt i32 %call5.i268, 0
  br i1 %cmp.i269, label %do.end.i271, label %write_mos_reg.exit262.write_mos_reg.exit273_crit_edge

write_mos_reg.exit262.write_mos_reg.exit273_crit_edge: ; preds = %write_mos_reg.exit262
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit273

do.end.i271:                                      ; preds = %write_mos_reg.exit262
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i270 = getelementptr inbounds %struct.usb_device, ptr %94, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i270, ptr noundef nonnull @.str.20, i32 noundef %call5.i268) #16
  br label %write_mos_reg.exit273

write_mos_reg.exit273:                            ; preds = %do.end.i271, %write_mos_reg.exit262.write_mos_reg.exit273_crit_edge
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 8
  %shl.i.i274 = shl i32 %100, 8
  %or.i275 = or i32 %shl.i.i274, -2147483648
  %call5.i279 = tail call i32 @usb_control_msg(ptr noundef %98, i32 noundef %or.i275, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i246, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i279)
  %cmp.i280 = icmp slt i32 %call5.i279, 0
  br i1 %cmp.i280, label %do.end.i282, label %write_mos_reg.exit273.write_mos_reg.exit284_crit_edge

write_mos_reg.exit273.write_mos_reg.exit284_crit_edge: ; preds = %write_mos_reg.exit273
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit284

do.end.i282:                                      ; preds = %write_mos_reg.exit273
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i281 = getelementptr inbounds %struct.usb_device, ptr %98, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i281, ptr noundef nonnull @.str.20, i32 noundef %call5.i279) #16
  br label %write_mos_reg.exit284

write_mos_reg.exit284:                            ; preds = %do.end.i282, %write_mos_reg.exit273.write_mos_reg.exit284_crit_edge
  %101 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read_urb, align 4
  %call59 = tail call i32 @usb_submit_urb(ptr noundef %102, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %write_mos_reg.exit284.if.end66_crit_edge, label %do.end64

write_mos_reg.exit284.if.end66_crit_edge:         ; preds = %write_mos_reg.exit284
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

do.end64:                                         ; preds = %write_mos_reg.exit284
  call void @__sanitizer_cov_trace_pc() #14
  %dev65 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %call59) #16
  br label %if.end66

if.end66:                                         ; preds = %do.end64, %write_mos_reg.exit284.if.end66_crit_edge
  %103 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 8, ptr %shadowMCR, align 1
  %open = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 3
  %104 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %open, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7720_close(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #12
  %arrayidx.1 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #12
  %arrayidx.2 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #12
  %arrayidx.3 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #12
  %arrayidx.4 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #12
  %arrayidx.5 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.5, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #12
  %arrayidx.6 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.6, align 4
  tail call void @usb_kill_urb(ptr noundef %17) #12
  %arrayidx.7 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.7, align 4
  tail call void @usb_kill_urb(ptr noundef %19) #12
  %arrayidx.8 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 8
  %20 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.8, align 4
  tail call void @usb_kill_urb(ptr noundef %21) #12
  %arrayidx.9 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 9
  %22 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.9, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #12
  %arrayidx.10 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 10
  %24 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.10, align 4
  tail call void @usb_kill_urb(ptr noundef %25) #12
  %arrayidx.11 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 11
  %26 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.11, align 4
  tail call void @usb_kill_urb(ptr noundef %27) #12
  %arrayidx.12 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 12
  %28 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.12, align 4
  tail call void @usb_kill_urb(ptr noundef %29) #12
  %arrayidx.13 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 13
  %30 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.13, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #12
  %arrayidx.14 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 14
  %32 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.14, align 4
  tail call void @usb_kill_urb(ptr noundef %33) #12
  %arrayidx.15 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 15
  %34 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.15, align 4
  tail call void @usb_kill_urb(ptr noundef %35) #12
  br label %for.body5

for.body5:                                        ; preds = %for.inc14.for.body5_crit_edge, %for.body.preheader
  %j.151 = phi i32 [ %inc15, %for.inc14.for.body5_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx7 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 %j.151
  %36 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %37, null
  br i1 %tobool.not, label %for.body5.for.inc14_crit_edge, label %if.then8

for.body5.for.inc14_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc14

if.then8:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %39) #12
  %40 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx7, align 4
  tail call void @usb_free_urb(ptr noundef %41) #12
  br label %for.inc14

for.inc14:                                        ; preds = %if.then8, %for.body5.for.inc14_crit_edge
  %inc15 = add nuw nsw i32 %j.151, 1
  %exitcond.not = icmp eq i32 %inc15, 16
  br i1 %exitcond.not, label %for.end16, label %for.inc14.for.body5_crit_edge

for.inc14.for.body5_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5

for.end16:                                        ; preds = %for.inc14
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %42 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %43) #12
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %44 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %45) #12
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %46 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %port_number, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i = shl i32 %51, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %serial_portnum.tr.i.i = zext i8 %47 to i16
  %52 = shl nuw i16 %serial_portnum.tr.i.i, 8
  %conv.i.i = add i16 %52, 512
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %for.end16.write_mos_reg.exit_crit_edge

for.end16.write_mos_reg.exit_crit_edge:           ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i:                                         ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i, %for.end16.write_mos_reg.exit_crit_edge
  %53 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %port_number, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %shl.i.i41 = shl i32 %58, 8
  %or.i42 = or i32 %shl.i.i41, -2147483648
  %serial_portnum.tr.i.i43 = zext i8 %54 to i16
  %59 = shl nuw i16 %serial_portnum.tr.i.i43, 8
  %conv.i.i44 = add i16 %59, 512
  %call5.i45 = tail call i32 @usb_control_msg(ptr noundef %56, i32 noundef %or.i42, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i44, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i45)
  %cmp.i46 = icmp slt i32 %call5.i45, 0
  br i1 %cmp.i46, label %do.end.i48, label %write_mos_reg.exit.write_mos_reg.exit49_crit_edge

write_mos_reg.exit.write_mos_reg.exit49_crit_edge: ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit49

do.end.i48:                                       ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i47 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i47, ptr noundef nonnull @.str.20, i32 noundef %call5.i45) #16
  br label %write_mos_reg.exit49

write_mos_reg.exit49:                             ; preds = %do.end.i48, %write_mos_reg.exit.write_mos_reg.exit49_crit_edge
  %open = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 3
  %60 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %open, align 1
  br label %cleanup

cleanup:                                          ; preds = %write_mos_reg.exit49, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7720_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.preheader.for.inc_crit_edge, label %land.lhs.true

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body.preheader
  %status5 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %7)
  %cmp6.not = icmp eq i32 %7, -115
  br i1 %cmp6.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.then7_crit_edge

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then7:                                         ; preds = %land.lhs.true.15.if.then7_crit_edge, %land.lhs.true.14.if.then7_crit_edge, %land.lhs.true.13.if.then7_crit_edge, %land.lhs.true.12.if.then7_crit_edge, %land.lhs.true.11.if.then7_crit_edge, %land.lhs.true.10.if.then7_crit_edge, %land.lhs.true.9.if.then7_crit_edge, %land.lhs.true.8.if.then7_crit_edge, %land.lhs.true.7.if.then7_crit_edge, %land.lhs.true.6.if.then7_crit_edge, %land.lhs.true.5.if.then7_crit_edge, %land.lhs.true.4.if.then7_crit_edge, %land.lhs.true.3.if.then7_crit_edge, %land.lhs.true.2.if.then7_crit_edge, %land.lhs.true.1.if.then7_crit_edge, %land.lhs.true.if.then7_crit_edge
  %i.0119.lcssa = phi i32 [ 0, %land.lhs.true.if.then7_crit_edge ], [ 1, %land.lhs.true.1.if.then7_crit_edge ], [ 2, %land.lhs.true.2.if.then7_crit_edge ], [ 3, %land.lhs.true.3.if.then7_crit_edge ], [ 4, %land.lhs.true.4.if.then7_crit_edge ], [ 5, %land.lhs.true.5.if.then7_crit_edge ], [ 6, %land.lhs.true.6.if.then7_crit_edge ], [ 7, %land.lhs.true.7.if.then7_crit_edge ], [ 8, %land.lhs.true.8.if.then7_crit_edge ], [ 9, %land.lhs.true.9.if.then7_crit_edge ], [ 10, %land.lhs.true.10.if.then7_crit_edge ], [ 11, %land.lhs.true.11.if.then7_crit_edge ], [ 12, %land.lhs.true.12.if.then7_crit_edge ], [ 13, %land.lhs.true.13.if.then7_crit_edge ], [ 14, %land.lhs.true.14.if.then7_crit_edge ], [ 15, %land.lhs.true.15.if.then7_crit_edge ]
  %.lcssa = phi ptr [ %5, %land.lhs.true.if.then7_crit_edge ], [ %9, %land.lhs.true.1.if.then7_crit_edge ], [ %13, %land.lhs.true.2.if.then7_crit_edge ], [ %17, %land.lhs.true.3.if.then7_crit_edge ], [ %21, %land.lhs.true.4.if.then7_crit_edge ], [ %25, %land.lhs.true.5.if.then7_crit_edge ], [ %29, %land.lhs.true.6.if.then7_crit_edge ], [ %33, %land.lhs.true.7.if.then7_crit_edge ], [ %37, %land.lhs.true.8.if.then7_crit_edge ], [ %41, %land.lhs.true.9.if.then7_crit_edge ], [ %45, %land.lhs.true.10.if.then7_crit_edge ], [ %49, %land.lhs.true.11.if.then7_crit_edge ], [ %53, %land.lhs.true.12.if.then7_crit_edge ], [ %57, %land.lhs.true.13.if.then7_crit_edge ], [ %61, %land.lhs.true.14.if.then7_crit_edge ], [ %65, %land.lhs.true.15.if.then7_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_write.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_write, %if.then14)) #12
          to label %if.end36 [label %if.then14], !srcloc !251

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_write.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %i.0119.lcssa) #12
  br label %if.end36

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %status5.1 = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %status5.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status5.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %11)
  %cmp6.not.1 = icmp eq i32 %11, -115
  br i1 %cmp6.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.then7_crit_edge

land.lhs.true.1.if.then7_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %13, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %status5.2 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %status5.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status5.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %15)
  %cmp6.not.2 = icmp eq i32 %15, -115
  br i1 %cmp6.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.if.then7_crit_edge

land.lhs.true.2.if.then7_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %17, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %status5.3 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %status5.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status5.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %19)
  %cmp6.not.3 = icmp eq i32 %19, -115
  br i1 %cmp6.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.if.then7_crit_edge

land.lhs.true.3.if.then7_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %21, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %status5.4 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %status5.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status5.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %23)
  %cmp6.not.4 = icmp eq i32 %23, -115
  br i1 %cmp6.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true.4.if.then7_crit_edge

land.lhs.true.4.if.then7_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %25, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %status5.5 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %status5.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status5.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %27)
  %cmp6.not.5 = icmp eq i32 %27, -115
  br i1 %cmp6.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true.5.if.then7_crit_edge

land.lhs.true.5.if.then7_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 6
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %29, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %status5.6 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %status5.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status5.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %31)
  %cmp6.not.6 = icmp eq i32 %31, -115
  br i1 %cmp6.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %land.lhs.true.6.if.then7_crit_edge

land.lhs.true.6.if.then7_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 7
  %32 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %33, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %status5.7 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %status5.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status5.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %35)
  %cmp6.not.7 = icmp eq i32 %35, -115
  br i1 %cmp6.not.7, label %land.lhs.true.7.for.inc.7_crit_edge, label %land.lhs.true.7.if.then7_crit_edge

land.lhs.true.7.if.then7_crit_edge:               ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 8
  %36 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp eq ptr %37, null
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %land.lhs.true.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.8

land.lhs.true.8:                                  ; preds = %for.inc.7
  %status5.8 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %status5.8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status5.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %39)
  %cmp6.not.8 = icmp eq i32 %39, -115
  br i1 %cmp6.not.8, label %land.lhs.true.8.for.inc.8_crit_edge, label %land.lhs.true.8.if.then7_crit_edge

land.lhs.true.8.if.then7_crit_edge:               ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.8.for.inc.8_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.8

for.inc.8:                                        ; preds = %land.lhs.true.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 9
  %40 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.9 = icmp eq ptr %41, null
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %land.lhs.true.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.9

land.lhs.true.9:                                  ; preds = %for.inc.8
  %status5.9 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %status5.9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status5.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %43)
  %cmp6.not.9 = icmp eq i32 %43, -115
  br i1 %cmp6.not.9, label %land.lhs.true.9.for.inc.9_crit_edge, label %land.lhs.true.9.if.then7_crit_edge

land.lhs.true.9.if.then7_crit_edge:               ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.9.for.inc.9_crit_edge:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.9

for.inc.9:                                        ; preds = %land.lhs.true.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 10
  %44 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.10, align 4
  %tobool.not.10 = icmp eq ptr %45, null
  br i1 %tobool.not.10, label %for.inc.9.for.inc.10_crit_edge, label %land.lhs.true.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.10

land.lhs.true.10:                                 ; preds = %for.inc.9
  %status5.10 = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %status5.10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status5.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %47)
  %cmp6.not.10 = icmp eq i32 %47, -115
  br i1 %cmp6.not.10, label %land.lhs.true.10.for.inc.10_crit_edge, label %land.lhs.true.10.if.then7_crit_edge

land.lhs.true.10.if.then7_crit_edge:              ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.10.for.inc.10_crit_edge:            ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.10

for.inc.10:                                       ; preds = %land.lhs.true.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 11
  %48 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.11, align 4
  %tobool.not.11 = icmp eq ptr %49, null
  br i1 %tobool.not.11, label %for.inc.10.for.inc.11_crit_edge, label %land.lhs.true.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.11

land.lhs.true.11:                                 ; preds = %for.inc.10
  %status5.11 = getelementptr inbounds %struct.urb, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %status5.11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status5.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %51)
  %cmp6.not.11 = icmp eq i32 %51, -115
  br i1 %cmp6.not.11, label %land.lhs.true.11.for.inc.11_crit_edge, label %land.lhs.true.11.if.then7_crit_edge

land.lhs.true.11.if.then7_crit_edge:              ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.11.for.inc.11_crit_edge:            ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.11

for.inc.11:                                       ; preds = %land.lhs.true.11.for.inc.11_crit_edge, %for.inc.10.for.inc.11_crit_edge
  %arrayidx.12 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 12
  %52 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.12, align 4
  %tobool.not.12 = icmp eq ptr %53, null
  br i1 %tobool.not.12, label %for.inc.11.for.inc.12_crit_edge, label %land.lhs.true.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.12

land.lhs.true.12:                                 ; preds = %for.inc.11
  %status5.12 = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %status5.12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status5.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %55)
  %cmp6.not.12 = icmp eq i32 %55, -115
  br i1 %cmp6.not.12, label %land.lhs.true.12.for.inc.12_crit_edge, label %land.lhs.true.12.if.then7_crit_edge

land.lhs.true.12.if.then7_crit_edge:              ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.12.for.inc.12_crit_edge:            ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.12

for.inc.12:                                       ; preds = %land.lhs.true.12.for.inc.12_crit_edge, %for.inc.11.for.inc.12_crit_edge
  %arrayidx.13 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 13
  %56 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.13, align 4
  %tobool.not.13 = icmp eq ptr %57, null
  br i1 %tobool.not.13, label %for.inc.12.for.inc.13_crit_edge, label %land.lhs.true.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.13

land.lhs.true.13:                                 ; preds = %for.inc.12
  %status5.13 = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %status5.13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status5.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %59)
  %cmp6.not.13 = icmp eq i32 %59, -115
  br i1 %cmp6.not.13, label %land.lhs.true.13.for.inc.13_crit_edge, label %land.lhs.true.13.if.then7_crit_edge

land.lhs.true.13.if.then7_crit_edge:              ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.13.for.inc.13_crit_edge:            ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.13

for.inc.13:                                       ; preds = %land.lhs.true.13.for.inc.13_crit_edge, %for.inc.12.for.inc.13_crit_edge
  %arrayidx.14 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 14
  %60 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.14, align 4
  %tobool.not.14 = icmp eq ptr %61, null
  br i1 %tobool.not.14, label %for.inc.13.for.inc.14_crit_edge, label %land.lhs.true.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.14

land.lhs.true.14:                                 ; preds = %for.inc.13
  %status5.14 = getelementptr inbounds %struct.urb, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %status5.14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %status5.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %63)
  %cmp6.not.14 = icmp eq i32 %63, -115
  br i1 %cmp6.not.14, label %land.lhs.true.14.for.inc.14_crit_edge, label %land.lhs.true.14.if.then7_crit_edge

land.lhs.true.14.if.then7_crit_edge:              ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.14.for.inc.14_crit_edge:            ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.14

for.inc.14:                                       ; preds = %land.lhs.true.14.for.inc.14_crit_edge, %for.inc.13.for.inc.14_crit_edge
  %arrayidx.15 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 15
  %64 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.15, align 4
  %tobool.not.15 = icmp eq ptr %65, null
  br i1 %tobool.not.15, label %for.inc.14.for.inc.15_crit_edge, label %land.lhs.true.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.15

land.lhs.true.15:                                 ; preds = %for.inc.14
  %status5.15 = getelementptr inbounds %struct.urb, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %status5.15 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %status5.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %67)
  %cmp6.not.15 = icmp eq i32 %67, -115
  br i1 %cmp6.not.15, label %land.lhs.true.15.for.inc.15_crit_edge, label %land.lhs.true.15.if.then7_crit_edge

land.lhs.true.15.if.then7_crit_edge:              ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.15.for.inc.15_crit_edge:            ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.15

for.inc.15:                                       ; preds = %land.lhs.true.15.for.inc.15_crit_edge, %for.inc.14.for.inc.15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_write.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_write, %if.then31)) #12
          to label %cleanup [label %if.then31], !srcloc !251

if.then31:                                        ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #14
  %dev32 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_write.__UNIQUE_ID_ddebug260, ptr noundef %dev32, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #12
  br label %cleanup

if.end36:                                         ; preds = %if.then14, %if.then7
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %.lcssa, i32 0, i32 14
  %68 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %transfer_buffer, align 4
  %cmp37 = icmp eq ptr %69, null
  br i1 %cmp37, label %if.then38, label %if.end36.if.end45_crit_edge

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then38:                                        ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 2592, i32 noundef 32) #15
  %71 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i, ptr %transfer_buffer, align 4
  %tobool42.not = icmp eq ptr %call7.i, null
  br i1 %tobool42.not, label %if.then38.cleanup_crit_edge, label %if.then38.if.end45_crit_edge

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.then38.if.end45_crit_edge, %if.end36.if.end45_crit_edge
  %72 = tail call i32 @llvm.smin.i32(i32 %count, i32 32)
  %73 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %transfer_buffer, align 4
  %75 = call ptr @memcpy(ptr %74, ptr %data, i32 %72)
  %dev49 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %76 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_write, %if.then.i)) #12
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !251

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev49, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.29, i32 noundef %72, i32 noundef %72, ptr noundef %76) #12
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end45
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %79 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv = zext i8 %80 to i32
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %78, align 8
  %shl.i = shl i32 %82, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %.lcssa, i32 0, i32 8
  %83 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %78, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %.lcssa, i32 0, i32 10
  %84 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %.lcssa, i32 0, i32 19
  %85 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %72, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %.lcssa, i32 0, i32 28
  %86 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @mos7720_bulk_out_data_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %.lcssa, i32 0, i32 27
  %87 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %3, ptr %context4.i, align 4
  %call55 = tail call i32 @usb_submit_urb(ptr noundef nonnull %.lcssa, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %usb_serial_debug_data.exit.cleanup_crit_edge, label %do.body58

usb_serial_debug_data.exit.cleanup_crit_edge:     ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body58:                                        ; preds = %usb_serial_debug_data.exit
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 12
  %88 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool60.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool60.not, label %do.body58.if.then62_crit_edge, label %lor.lhs.false

do.body58.if.then62_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

lor.lhs.false:                                    ; preds = %do.body58
  %.b110 = load i1, ptr @mos7720_write.__print_once, align 1
  br i1 %.b110, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then62_crit_edge

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %do.body58.if.then62_crit_edge
  store i1 true, ptr @mos7720_write.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29, i32 noundef %call55) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %lor.lhs.false.cleanup_crit_edge, %usb_serial_debug_data.exit.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.then31, %for.inc.15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then31 ], [ -12, %if.then38.cleanup_crit_edge ], [ %call55, %if.then62 ], [ %call55, %lor.lhs.false.cleanup_crit_edge ], [ %72, %usb_serial_debug_data.exit.cleanup_crit_edge ], [ 0, %for.inc.15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7720_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
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
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %room.018 = phi i32 [ 0, %entry ], [ %room.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 %i.019
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %status = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %7)
  %cmp3.not = icmp eq i32 %7, -115
  %add = add i32 %room.018, 32
  %spec.select = select i1 %cmp3.not, i32 %room.018, i32 %add
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %room.1 = phi i32 [ %room.018, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body:                                          ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_write_room.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_write_room, %if.then8)) #12
          to label %do.end [label %if.then8], !srcloc !251

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_write_room.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %room.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  ret i32 %room.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7720_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
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
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 21593, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21593
  br i1 %cond, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_ioctl.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_ioctl, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !251

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_ioctl.__UNIQUE_ID_ddebug282, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %4 = inttoptr i32 %arg to ptr
  %call6 = tail call fastcc i32 @get_lsr_info(ptr noundef %tty, ptr noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -515, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7720_set_termios(ptr noundef %tty, ptr noundef %port, ptr nocapture noundef readnone %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %open = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %open, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_set_termios.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_set_termios, %if.then6)) #12
          to label %cleanup [label %if.then6], !srcloc !251

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_set_termios.__UNIQUE_ID_ddebug279, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call fastcc void @change_port_settings(ptr noundef %tty, ptr noundef nonnull %1)
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %4 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_urb, align 4
  %status9 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %status9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %7)
  %cmp10.not = icmp eq i32 %7, -115
  br i1 %cmp10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %call13 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then11.cleanup_crit_edge, label %do.body16

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_set_termios.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_set_termios, %if.then28)) #12
          to label %cleanup [label %if.then28], !srcloc !251

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %dev29 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_set_termios.__UNIQUE_ID_ddebug280, ptr noundef %dev29, ptr noundef nonnull @.str.50, i32 noundef %call13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body16, %if.then11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then6, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7720_break(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
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
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp2 = icmp eq i32 %break_state, -1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 4
  %8 = and i8 %7, -65
  %masksel = select i1 %cmp2, i8 64, i8 0
  %data.0 = or i8 %8, %masksel
  store i8 %data.0, ptr %3, align 4
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_number, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %serial_portnum.tr.i.i = zext i8 %10 to i16
  %15 = shl nuw i16 %serial_portnum.tr.i.i, 8
  %conv.i.i = add i16 %15, 512
  %conv3.i = zext i8 %data.0 to i16
  %add.i = or i16 %conv.i.i, %conv3.i
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7720_chars_in_buffer(ptr nocapture noundef readonly %tty) #2 align 64 {
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
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %chars.019 = phi i32 [ 0, %entry ], [ %chars.1, %for.inc.for.body_crit_edge ]
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 5, i32 %i.018
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %status = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %7)
  %cmp3 = icmp eq i32 %7, -115
  %add = add i32 %chars.019, 32
  %spec.select = select i1 %cmp3, i32 %add, i32 %chars.019
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %chars.1 = phi i32 [ %chars.019, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body:                                          ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_chars_in_buffer.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_chars_in_buffer, %if.then8)) #12
          to label %do.end [label %if.then8], !srcloc !251

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_chars_in_buffer.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.68, i32 noundef %chars.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  ret i32 %chars.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7720_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %stop_char = alloca i8, align 1
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
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup27_crit_edge, label %if.end

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end:                                           ; preds = %entry
  %open = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %open, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_throttle.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_throttle, %if.then6)) #12
          to label %cleanup27 [label %if.then6], !srcloc !251

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_throttle.__UNIQUE_ID_ddebug263, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.69) #12
  br label %cleanup27

if.end8:                                          ; preds = %if.end
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %6 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %termios, align 4
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.end16_crit_edge, label %if.then10

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stop_char) #12
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %stop_char to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %stop_char, align 1
  %call12 = call i32 @mos7720_write(ptr noundef %tty, ptr noundef %1, ptr noundef nonnull %stop_char, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stop_char) #12
  br i1 %cmp13, label %if.then10.cleanup27_crit_edge, label %if.then10.if.end16_crit_edge

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then10.cleanup27_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end16:                                         ; preds = %if.then10.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool19.not = icmp sgt i32 %12, -1
  br i1 %tobool19.not, label %if.end16.cleanup27_crit_edge, label %if.then20

if.end16.cleanup27_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.then20:                                        ; preds = %if.end16
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shadowMCR, align 1
  %15 = and i8 %14, -3
  store i8 %15, ptr %shadowMCR, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_number, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i = shl i32 %23, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %serial_portnum.tr.i.i = zext i8 %19 to i16
  %24 = shl nuw i16 %serial_portnum.tr.i.i, 8
  %conv.i.i = add i16 %24, 512
  %conv3.i = zext i8 %15 to i16
  %add.i = or i16 %conv.i.i, %conv3.i
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then20.cleanup27_crit_edge

if.then20.cleanup27_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

do.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %cleanup27

cleanup27:                                        ; preds = %do.end.i, %if.then20.cleanup27_crit_edge, %if.end16.cleanup27_crit_edge, %if.then10.cleanup27_crit_edge, %if.then6, %do.body, %entry.cleanup27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7720_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %start_char = alloca i8, align 1
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
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup26

if.end:                                           ; preds = %entry
  %open = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %open, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_unthrottle.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_unthrottle, %if.then6)) #12
          to label %cleanup26 [label %if.then6], !srcloc !251

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_unthrottle.__UNIQUE_ID_ddebug264, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.70) #12
  br label %cleanup26

if.end8:                                          ; preds = %if.end
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %6 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %termios, align 4
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.end16_crit_edge, label %if.then10

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start_char) #12
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %start_char to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %start_char, align 1
  %call12 = call i32 @mos7720_write(ptr noundef %tty, ptr noundef %1, ptr noundef nonnull %start_char, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start_char) #12
  br i1 %cmp13, label %if.then10.cleanup26_crit_edge, label %if.then10.if.end16_crit_edge

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then10.cleanup26_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup26

if.end16:                                         ; preds = %if.then10.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool19.not = icmp sgt i32 %12, -1
  br i1 %tobool19.not, label %if.end16.cleanup26_crit_edge, label %if.then20

if.end16.cleanup26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup26

if.then20:                                        ; preds = %if.end16
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shadowMCR, align 1
  %15 = or i8 %14, 2
  store i8 %15, ptr %shadowMCR, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_number, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i = shl i32 %23, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %serial_portnum.tr.i.i = zext i8 %19 to i16
  %24 = shl nuw i16 %serial_portnum.tr.i.i, 8
  %conv.i.i = add i16 %24, 512
  %conv3.i = zext i8 %15 to i16
  %add.i = or i16 %conv.i.i, %conv3.i
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then20.cleanup26_crit_edge

if.then20.cleanup26_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup26

do.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %cleanup26

cleanup26:                                        ; preds = %do.end.i, %if.then20.cleanup26_crit_edge, %if.end16.cleanup26_crit_edge, %if.then10.cleanup26_crit_edge, %if.then6, %do.body, %entry.cleanup26_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mos7720_tiocmget(ptr nocapture noundef readonly %tty) #4 align 64 {
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
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadowMCR, align 1
  %conv = zext i8 %5 to i32
  %shadowMSR = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %shadowMSR to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shadowMSR, align 2
  %conv1 = zext i8 %7 to i32
  %and = shl nuw nsw i32 %conv, 1
  %or = and i32 %and, 6
  %and5 = shl nuw nsw i32 %conv1, 1
  %8 = and i32 %and5, 32
  %or8 = or i32 %8, %or
  %and9 = lshr i32 %conv1, 1
  %9 = and i32 %and9, 64
  %or12 = or i32 %or8, %9
  %10 = and i32 %and5, 128
  %or16 = or i32 %or12, %10
  %and17 = shl nuw nsw i32 %conv1, 3
  %11 = and i32 %and17, 256
  %or20 = or i32 %or16, %11
  ret i32 %or20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7720_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
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
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadowMCR, align 1
  %conv = zext i8 %5 to i32
  %and = lshr i32 %set, 1
  %and6 = lshr i32 %set, 11
  %6 = and i32 %and6, 16
  %7 = and i32 %and, 3
  %8 = or i32 %7, %6
  %9 = or i32 %8, %conv
  %and11 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %and14 = and i32 %9, 253
  %mcr.3 = select i1 %tobool12.not, i32 %9, i32 %and14
  %and16 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %and19 = and i32 %mcr.3, 254
  %mcr.4 = select i1 %tobool17.not, i32 %mcr.3, i32 %and19
  %and21 = and i32 %clear, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and24 = and i32 %mcr.4, 239
  %mcr.5 = select i1 %tobool22.not, i32 %mcr.4, i32 %and24
  %conv26 = trunc i32 %mcr.5 to i8
  %10 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv26, ptr %shadowMCR, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_number, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i = shl i32 %18, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %serial_portnum.tr.i.i = zext i8 %14 to i16
  %19 = shl nuw i16 %serial_portnum.tr.i.i, 8
  %conv.i.i = add i16 %19, 512
  %20 = trunc i32 %mcr.5 to i16
  %conv3.i = and i16 %20, 255
  %add.i = or i16 %conv3.i, %conv.i.i
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.write_mos_reg.exit_crit_edge

entry.write_mos_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i, %entry.write_mos_reg.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7720_interrupt_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %dev2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body6 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge202
    i32 -108, label %entry.do.body_crit_edge203
  ]

entry.do.body_crit_edge203:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.do.body_crit_edge202:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge202, %entry.do.body_crit_edge203
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_interrupt_callback, %if.then)) #12
          to label %cleanup [label %if.then], !srcloc !251

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_interrupt_callback.__UNIQUE_ID_ddebug238, ptr noundef %dev3, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.71, i32 noundef %1) #12
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_interrupt_callback, %if.then18)) #12
          to label %exit [label %if.then18], !srcloc !251

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_interrupt_callback.__UNIQUE_ID_ddebug239, ptr noundef %dev3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.71, i32 noundef %1) #12
  br label %exit

sw.epilog:                                        ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.not = icmp eq i32 %6, 4
  br i1 %cmp.not, label %if.end45, label %do.body29, !prof !249

do.body29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_interrupt_callback, %if.then41)) #12
          to label %cleanup [label %if.then41], !srcloc !251

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_interrupt_callback.__UNIQUE_ID_ddebug240, ptr noundef %dev3, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end45:                                         ; preds = %sw.epilog
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %arrayidx46 = getelementptr i8, ptr %8, i32 2
  %11 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx46, align 1
  %or172 = or i8 %12, %10
  %13 = and i8 %or172, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool48.not = icmp eq i8 %13, 0
  br i1 %tobool48.not, label %if.else, label %do.body50

do.body50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_interrupt_callback, %if.then62)) #12
          to label %exit [label %if.then62], !srcloc !251

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_interrupt_callback.__UNIQUE_ID_ddebug241, ptr noundef %dev3, ptr noundef nonnull @.str.72) #12
  br label %exit

if.else:                                          ; preds = %if.end45
  %14 = and i8 %10, 15
  %and67 = zext i8 %14 to i32
  %15 = zext i32 %and67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %and67, label %if.else.sw.epilog102_crit_edge [
    i32 6, label %do.body69
    i32 12, label %do.body86
  ]

if.else.sw.epilog102_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog102

do.body69:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_interrupt_callback, %if.then81)) #12
          to label %sw.epilog102 [label %if.then81], !srcloc !251

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_interrupt_callback.__UNIQUE_ID_ddebug242, ptr noundef %dev3, ptr noundef nonnull @.str.73) #12
  br label %sw.epilog102

do.body86:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_interrupt_callback, %if.then98)) #12
          to label %sw.epilog102 [label %if.then98], !srcloc !251

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_interrupt_callback.__UNIQUE_ID_ddebug243, ptr noundef %dev3, ptr noundef nonnull @.str.74) #12
  br label %sw.epilog102

sw.epilog102:                                     ; preds = %if.then98, %do.body86, %if.then81, %do.body69, %if.else.sw.epilog102_crit_edge
  %16 = and i8 %12, 15
  %and104 = zext i8 %16 to i32
  %17 = zext i32 %and104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and104, label %sw.epilog102.exit_crit_edge [
    i32 6, label %do.body106
    i32 12, label %do.body123
  ]

sw.epilog102.exit_crit_edge:                      ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.body106:                                       ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_interrupt_callback, %if.then118)) #12
          to label %exit [label %if.then118], !srcloc !251

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_interrupt_callback.__UNIQUE_ID_ddebug244, ptr noundef %dev3, ptr noundef nonnull @.str.75) #12
  br label %exit

do.body123:                                       ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_interrupt_callback, %if.then135)) #12
          to label %exit [label %if.then135], !srcloc !251

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_interrupt_callback.__UNIQUE_ID_ddebug245, ptr noundef %dev3, ptr noundef nonnull @.str.76) #12
  br label %exit

exit:                                             ; preds = %if.then135, %do.body123, %if.then118, %do.body106, %sw.epilog102.exit_crit_edge, %if.then62, %do.body50, %if.then18, %do.body6
  %call141 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %exit.cleanup_crit_edge, label %do.end146

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end146:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.71, i32 noundef %call141) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end146, %exit.cleanup_crit_edge, %if.then41, %do.body29, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7720_bulk_in_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_bulk_in_callback.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_bulk_in_callback, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !251

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_bulk_in_callback.__UNIQUE_ID_ddebug251, ptr noundef %dev6, ptr noundef nonnull @.str.78, i32 noundef %1) #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_bulk_in_callback.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_bulk_in_callback, %if.then20)) #12
          to label %do.end24 [label %if.then20], !srcloc !251

if.then20:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %dev21 = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_bulk_in_callback.__UNIQUE_ID_ddebug252, ptr noundef %dev21, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77) #12
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %if.end7
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool25.not = icmp eq i32 %7, 0
  br i1 %tobool25.not, label %do.end24.if.end31_crit_edge, label %if.then26

do.end24.if.end31_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then26:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %port27 = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port27, ptr noundef %9, i8 noundef zeroext 0, i32 noundef %7) #12
  tail call void @tty_flip_buffer_push(ptr noundef %port27) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %do.end24.if.end31_crit_edge
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 14
  %10 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_urb, align 4
  %status32 = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %status32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %13)
  %cmp.not = icmp eq i32 %13, -115
  br i1 %cmp.not, label %if.end31.cleanup_crit_edge, label %if.then33

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33:                                        ; preds = %if.end31
  %call35 = tail call i32 @usb_submit_urb(ptr noundef %11, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then33.cleanup_crit_edge, label %do.body38

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_bulk_in_callback.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_bulk_in_callback, %if.then50)) #12
          to label %cleanup [label %if.then50], !srcloc !251

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  %dev51 = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_bulk_in_callback.__UNIQUE_ID_ddebug253, ptr noundef %dev51, ptr noundef nonnull @.str.80, i32 noundef %call35) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.body38, %if.then33.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then5, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7715_interrupt_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %dev2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %1, label %do.body6 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge147
    i32 -108, label %entry.do.body_crit_edge148
    i32 -19, label %entry.do.body_crit_edge149
  ]

entry.do.body_crit_edge149:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.do.body_crit_edge148:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.do.body_crit_edge147:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge147, %entry.do.body_crit_edge148, %entry.do.body_crit_edge149
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7715_interrupt_callback.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7715_interrupt_callback, %if.then)) #12
          to label %cleanup106 [label %if.then], !srcloc !251

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7715_interrupt_callback.__UNIQUE_ID_ddebug246, ptr noundef %dev3, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %1) #12
  br label %cleanup106

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7715_interrupt_callback.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7715_interrupt_callback, %if.then18)) #12
          to label %exit [label %if.then18], !srcloc !251

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7715_interrupt_callback.__UNIQUE_ID_ddebug247, ptr noundef %dev3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef %1) #12
  br label %exit

sw.epilog:                                        ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transfer_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.not = icmp eq i32 %6, 4
  br i1 %cmp.not, label %if.end45, label %do.body29, !prof !249

do.body29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7715_interrupt_callback.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7715_interrupt_callback, %if.then41)) #12
          to label %cleanup106 [label %if.then41], !srcloc !251

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7715_interrupt_callback.__UNIQUE_ID_ddebug248, ptr noundef %dev3, ptr noundef nonnull @.str.12) #12
  br label %cleanup106

if.end45:                                         ; preds = %sw.epilog
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.then47, label %if.end45.if.end85_crit_edge

if.end45.if.end85_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then47:                                        ; preds = %if.end45
  %and49 = and i32 %conv, 15
  %11 = zext i32 %and49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %and49, label %if.then47.if.end85_crit_edge [
    i32 6, label %do.body51
    i32 12, label %do.body68
  ]

if.then47.if.end85_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

do.body51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7715_interrupt_callback.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7715_interrupt_callback, %if.then63)) #12
          to label %if.end85 [label %if.then63], !srcloc !251

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7715_interrupt_callback.__UNIQUE_ID_ddebug249, ptr noundef %dev3, ptr noundef nonnull @.str.13) #12
  br label %if.end85

do.body68:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7715_interrupt_callback.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7715_interrupt_callback, %if.then80)) #12
          to label %if.end85 [label %if.then80], !srcloc !251

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7715_interrupt_callback.__UNIQUE_ID_ddebug250, ptr noundef %dev3, ptr noundef nonnull @.str.14) #12
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %do.body68, %if.then63, %do.body51, %if.then47.if.end85_crit_edge, %if.end45.if.end85_crit_edge
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %private = getelementptr inbounds %struct.usb_serial, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private, align 4
  %cmp86 = icmp eq ptr %17, null
  br i1 %cmp86, label %if.end85.cleanup106_crit_edge, label %if.end95, !prof !253

if.end85.cleanup106_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup106

if.end95:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %shadowDSR = getelementptr inbounds %struct.mos7715_parport, ptr %17, i32 0, i32 8
  %arrayidx96 = getelementptr i8, ptr %8, i32 2
  %18 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %19 to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %shadowDSR, i32 noundef 4) #12
  %20 = ptrtoint ptr %shadowDSR to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %conv97, ptr %shadowDSR, align 4
  br label %exit

exit:                                             ; preds = %if.end95, %if.then18, %do.body6
  %call99 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %exit.cleanup106_crit_edge, label %do.end104

exit.cleanup106_crit_edge:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup106

do.end104:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9, i32 noundef %call99) #16
  br label %cleanup106

cleanup106:                                       ; preds = %do.end104, %exit.cleanup106_crit_edge, %if.end85.cleanup106_crit_edge, %if.then41, %do.body29, %if.then, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deferred_restore_writes(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %serial = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %disc_mutex = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #12
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial, align 4
  %disconnected = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end:                                           ; preds = %entry
  %shadowDCR = getelementptr i8, ptr %work, i32 49
  %5 = ptrtoint ptr %shadowDCR to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shadowDCR, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv3.i = zext i8 %6 to i16
  %add.i = or i16 %conv3.i, 256
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.write_mos_reg.exit_crit_edge

if.end.write_mos_reg.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i, %if.end.write_mos_reg.exit_crit_edge
  %11 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial, align 4
  %shadowECR = getelementptr i8, ptr %work, i32 48
  %13 = ptrtoint ptr %shadowECR to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shadowECR, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i13 = shl i32 %18, 8
  %or.i14 = or i32 %shl.i.i13, -2147483648
  %conv3.i15 = zext i8 %14 to i16
  %add.i16 = or i16 %conv3.i15, 256
  %call5.i17 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i14, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i16, i16 noundef zeroext 10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i17)
  %cmp.i18 = icmp slt i32 %call5.i17, 0
  br i1 %cmp.i18, label %do.end.i20, label %write_mos_reg.exit.done_crit_edge

write_mos_reg.exit.done_crit_edge:                ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

do.end.i20:                                       ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i19 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i19, ptr noundef nonnull @.str.20, i32 noundef %call5.i17) #16
  br label %done

done:                                             ; preds = %do.end.i20, %write_mos_reg.exit.done_crit_edge, %entry.done_crit_edge
  %19 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serial, align 4
  %disc_mutex6 = getelementptr inbounds %struct.usb_serial, ptr %20, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %disc_mutex6) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_port(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_announce_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_mos7715_write_data(ptr nocapture noundef readonly %pp, i8 noundef zeroext %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call fastcc i32 @parport_prologue(ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %shadowECR.i = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %shadowECR.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %shadowECR.i, align 4
  %serial.i = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %8, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 256, i16 noundef zeroext 10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.mos7715_change_mode.exit_crit_edge

if.end.mos7715_change_mode.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mos7715_change_mode.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i.i) #16
  br label %mos7715_change_mode.exit

mos7715_change_mode.exit:                         ; preds = %do.end.i.i, %if.end.mos7715_change_mode.exit_crit_edge
  %9 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv3.i = zext i8 %d to i16
  %add.i = or i16 %conv3.i, 256
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %mos7715_change_mode.exit.write_mos_reg.exit_crit_edge

mos7715_change_mode.exit.write_mos_reg.exit_crit_edge: ; preds = %mos7715_change_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i:                                         ; preds = %mos7715_change_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i, %mos7715_change_mode.exit.write_mos_reg.exit_crit_edge
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data, align 8
  %serial.i6 = getelementptr inbounds %struct.mos7715_parport, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %serial.i6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serial.i6, align 4
  %disc_mutex.i = getelementptr inbounds %struct.usb_serial, ptr %18, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %disc_mutex.i) #12
  %msg_pending.i = getelementptr inbounds %struct.mos7715_parport, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %msg_pending.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %msg_pending.i, align 4
  %syncmsg_compl.i = getelementptr inbounds %struct.mos7715_parport, ptr %16, i32 0, i32 3
  tail call void @complete(ptr noundef %syncmsg_compl.i) #12
  br label %cleanup

cleanup:                                          ; preds = %write_mos_reg.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @parport_mos7715_read_data(ptr nocapture noundef readonly %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call fastcc i32 @parport_prologue(ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %serial = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 1) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.read_mos_reg.exit_crit_edge, label %if.end.i

if.end.read_mos_reg.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_mos_reg.exit

if.end.i:                                         ; preds = %if.end
  %shl.i.i = shl i32 %7, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or1.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.i = icmp eq i32 %call5.i, 1
  br i1 %cmp.i, label %if.then6.i, label %do.end.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i.i, align 8
  br label %if.end11.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.then6.i
  %storemerge.i = phi i8 [ 0, %do.end.i ], [ %10, %if.then6.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %read_mos_reg.exit

read_mos_reg.exit:                                ; preds = %if.end11.i, %if.end.read_mos_reg.exit_crit_edge
  %d.0 = phi i8 [ %storemerge.i, %if.end11.i ], [ 0, %if.end.read_mos_reg.exit_crit_edge ]
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 8
  %serial.i = getelementptr inbounds %struct.mos7715_parport, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial.i, align 4
  %disc_mutex.i = getelementptr inbounds %struct.usb_serial, ptr %14, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %disc_mutex.i) #12
  %msg_pending.i = getelementptr inbounds %struct.mos7715_parport, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %msg_pending.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %msg_pending.i, align 4
  %syncmsg_compl.i = getelementptr inbounds %struct.mos7715_parport, ptr %12, i32 0, i32 3
  tail call void @complete(ptr noundef %syncmsg_compl.i) #12
  br label %cleanup

cleanup:                                          ; preds = %read_mos_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %d.0, %read_mos_reg.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_mos7715_write_control(ptr nocapture noundef readonly %pp, i8 noundef zeroext %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call fastcc i32 @parport_prologue(ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i8 %d, 15
  %shadowDCR = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %shadowDCR to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shadowDCR, align 1
  %5 = and i8 %4, -16
  %or12 = or i8 %5, %2
  %serial = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv3.i = zext i8 %or12 to i16
  %add.i = or i16 %conv3.i, 256
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.write_mos_reg.exit_crit_edge

if.end.write_mos_reg.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i, %if.end.write_mos_reg.exit_crit_edge
  %12 = ptrtoint ptr %shadowDCR to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or12, ptr %shadowDCR, align 1
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 8
  %serial.i = getelementptr inbounds %struct.mos7715_parport, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial.i, align 4
  %disc_mutex.i = getelementptr inbounds %struct.usb_serial, ptr %16, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %disc_mutex.i) #12
  %msg_pending.i = getelementptr inbounds %struct.mos7715_parport, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %msg_pending.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %msg_pending.i, align 4
  %syncmsg_compl.i = getelementptr inbounds %struct.mos7715_parport, ptr %14, i32 0, i32 3
  tail call void @complete(ptr noundef %syncmsg_compl.i) #12
  br label %cleanup

cleanup:                                          ; preds = %write_mos_reg.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @parport_mos7715_read_control(ptr nocapture noundef readonly %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_lock) #12
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shadowDCR = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shadowDCR to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shadowDCR, align 1
  %4 = and i8 %3, 15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_lock) #12
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @parport_mos7715_frob_control(ptr nocapture noundef readonly %pp, i8 noundef zeroext %mask, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call fastcc i32 @parport_prologue(ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i8 %val, 15
  %3 = and i8 %mask, 15
  %shadowDCR = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %shadowDCR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadowDCR, align 1
  %neg = xor i8 %3, -1
  %and8 = and i8 %5, %neg
  %xor = xor i8 %and8, %2
  store i8 %xor, ptr %shadowDCR, align 1
  %serial = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv3.i = zext i8 %xor to i16
  %add.i = or i16 %conv3.i, 256
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.write_mos_reg.exit_crit_edge

if.end.write_mos_reg.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i, %if.end.write_mos_reg.exit_crit_edge
  %12 = ptrtoint ptr %shadowDCR to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shadowDCR, align 1
  %14 = and i8 %13, 15
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data, align 8
  %serial.i = getelementptr inbounds %struct.mos7715_parport, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serial.i, align 4
  %disc_mutex.i = getelementptr inbounds %struct.usb_serial, ptr %18, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %disc_mutex.i) #12
  %msg_pending.i = getelementptr inbounds %struct.mos7715_parport, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %msg_pending.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %msg_pending.i, align 4
  %syncmsg_compl.i = getelementptr inbounds %struct.mos7715_parport, ptr %16, i32 0, i32 3
  tail call void @complete(ptr noundef %syncmsg_compl.i) #12
  br label %cleanup

cleanup:                                          ; preds = %write_mos_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %14, %write_mos_reg.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @parport_mos7715_read_status(ptr nocapture noundef readonly %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_lock) #12
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shadowDSR = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shadowDSR, i32 noundef 4) #12
  %2 = ptrtoint ptr %shadowDSR to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %shadowDSR, align 4
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, -8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_lock) #12
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @parport_mos7715_enable_irq(ptr nocapture noundef %pp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @parport_mos7715_disable_irq(ptr nocapture noundef %pp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_mos7715_data_forward(ptr nocapture noundef readonly %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call fastcc i32 @parport_prologue(ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %shadowECR.i = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %shadowECR.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %shadowECR.i, align 4
  %serial.i = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %8, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 288, i16 noundef zeroext 10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.mos7715_change_mode.exit_crit_edge

if.end.mos7715_change_mode.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mos7715_change_mode.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i.i) #16
  br label %mos7715_change_mode.exit

mos7715_change_mode.exit:                         ; preds = %do.end.i.i, %if.end.mos7715_change_mode.exit_crit_edge
  %shadowDCR = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %shadowDCR to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shadowDCR, align 1
  %11 = and i8 %10, -33
  store i8 %11, ptr %shadowDCR, align 1
  %12 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i = shl i32 %17, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv3.i = zext i8 %11 to i16
  %add.i = or i16 %conv3.i, 256
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %mos7715_change_mode.exit.write_mos_reg.exit_crit_edge

mos7715_change_mode.exit.write_mos_reg.exit_crit_edge: ; preds = %mos7715_change_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i:                                         ; preds = %mos7715_change_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i, %mos7715_change_mode.exit.write_mos_reg.exit_crit_edge
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data, align 8
  %serial.i10 = getelementptr inbounds %struct.mos7715_parport, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %serial.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serial.i10, align 4
  %disc_mutex.i = getelementptr inbounds %struct.usb_serial, ptr %21, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %disc_mutex.i) #12
  %msg_pending.i = getelementptr inbounds %struct.mos7715_parport, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %msg_pending.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %msg_pending.i, align 4
  %syncmsg_compl.i = getelementptr inbounds %struct.mos7715_parport, ptr %19, i32 0, i32 3
  tail call void @complete(ptr noundef %syncmsg_compl.i) #12
  br label %cleanup

cleanup:                                          ; preds = %write_mos_reg.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_mos7715_data_reverse(ptr nocapture noundef readonly %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call fastcc i32 @parport_prologue(ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %shadowECR.i = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %shadowECR.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %shadowECR.i, align 4
  %serial.i = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %8, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 288, i16 noundef zeroext 10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.mos7715_change_mode.exit_crit_edge

if.end.mos7715_change_mode.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mos7715_change_mode.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i.i) #16
  br label %mos7715_change_mode.exit

mos7715_change_mode.exit:                         ; preds = %do.end.i.i, %if.end.mos7715_change_mode.exit_crit_edge
  %shadowDCR = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %shadowDCR to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shadowDCR, align 1
  %11 = or i8 %10, 32
  store i8 %11, ptr %shadowDCR, align 1
  %12 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i = shl i32 %17, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv3.i = zext i8 %11 to i16
  %add.i = or i16 %conv3.i, 256
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %mos7715_change_mode.exit.write_mos_reg.exit_crit_edge

mos7715_change_mode.exit.write_mos_reg.exit_crit_edge: ; preds = %mos7715_change_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i:                                         ; preds = %mos7715_change_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i, %mos7715_change_mode.exit.write_mos_reg.exit_crit_edge
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data, align 8
  %serial.i10 = getelementptr inbounds %struct.mos7715_parport, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %serial.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serial.i10, align 4
  %disc_mutex.i = getelementptr inbounds %struct.usb_serial, ptr %21, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %disc_mutex.i) #12
  %msg_pending.i = getelementptr inbounds %struct.mos7715_parport, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %msg_pending.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %msg_pending.i, align 4
  %syncmsg_compl.i = getelementptr inbounds %struct.mos7715_parport, ptr %19, i32 0, i32 3
  tail call void @complete(ptr noundef %syncmsg_compl.i) #12
  br label %cleanup

cleanup:                                          ; preds = %write_mos_reg.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @parport_mos7715_init_state(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %s) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %s, align 4
  %ecr = getelementptr inbounds %struct.pc_parport_state, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %ecr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ecr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_mos7715_save_state(ptr nocapture noundef readonly %pp, ptr nocapture noundef writeonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_lock) #12
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shadowDCR = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shadowDCR to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shadowDCR, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %s, align 4
  %shadowECR = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %shadowECR to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shadowECR, align 4
  %conv2 = zext i8 %6 to i32
  %ecr = getelementptr inbounds %struct.pc_parport_state, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %ecr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv2, ptr %ecr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_mos7715_restore_state(ptr nocapture noundef readonly %pp, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_lock) #12
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !253

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  %conv = trunc i32 %3 to i8
  %shadowDCR = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %shadowDCR to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %shadowDCR, align 1
  %ecr = getelementptr inbounds %struct.pc_parport_state, ptr %s, i32 0, i32 1
  %5 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ecr, align 4
  %conv3 = trunc i32 %6 to i8
  %shadowECR = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %shadowECR to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %shadowECR, align 4
  %work = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_mos7715_write_compat(ptr nocapture noundef readonly %pp, ptr noundef %buffer, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #12
  %2 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %actual_len, align 4, !annotation !254
  %call = tail call fastcc i32 @parport_prologue(ptr noundef %pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %shadowECR.i = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %shadowECR.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 64, ptr %shadowECR.i, align 4
  %serial.i = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 320, i16 noundef zeroext 10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.mos7715_change_mode.exit_crit_edge

if.end.mos7715_change_mode.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mos7715_change_mode.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i.i) #16
  br label %mos7715_change_mode.exit

mos7715_change_mode.exit:                         ; preds = %do.end.i.i, %if.end.mos7715_change_mode.exit_crit_edge
  %10 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serial.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i = shl i32 %15, 8
  %or = or i32 %shl.i, -1073676288
  %call6 = call i32 @usb_bulk_msg(ptr noundef %13, i32 noundef %or, ptr noundef %buffer, i32 noundef %len, ptr noundef nonnull %actual_len, i32 noundef 5000) #12
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data, align 8
  %serial.i20 = getelementptr inbounds %struct.mos7715_parport, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %serial.i20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serial.i20, align 4
  %disc_mutex.i = getelementptr inbounds %struct.usb_serial, ptr %19, i32 0, i32 14
  call void @mutex_unlock(ptr noundef %disc_mutex.i) #12
  %msg_pending.i = getelementptr inbounds %struct.mos7715_parport, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %msg_pending.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %msg_pending.i, align 4
  %syncmsg_compl.i = getelementptr inbounds %struct.mos7715_parport, ptr %17, i32 0, i32 3
  call void @complete(ptr noundef %syncmsg_compl.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end11, label %do.end

do.end:                                           ; preds = %mos7715_change_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.23, i32 noundef %call6) #16
  br label %cleanup

if.end11:                                         ; preds = %mos7715_change_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %26, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_read_nibble(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_read_byte(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parport_prologue(ptr nocapture noundef readonly %pp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_lock) #12
  %private_data = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end, !prof !253

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_lock) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_pending = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msg_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %msg_pending, align 4
  %syncmsg_compl = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %syncmsg_compl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %syncmsg_compl, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_lock) #12
  %work = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %work, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call zeroext i1 @flush_work(ptr noundef %work) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %serial = getelementptr inbounds %struct.mos7715_parport, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial, align 4
  %disc_mutex = getelementptr inbounds %struct.usb_serial, ptr %7, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #12
  %8 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial, align 4
  %disconnected = getelementptr inbounds %struct.usb_serial, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %disc_mutex11 = getelementptr inbounds %struct.usb_serial, ptr %9, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %disc_mutex11) #12
  %11 = ptrtoint ptr %msg_pending to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %msg_pending, align 4
  tail call void @complete(ptr noundef %syncmsg_compl) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then9 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_remove_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_del_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7720_bulk_out_data_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_bulk_out_data_callback.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_bulk_out_data_callback, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !251

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_bulk_out_data_callback.__UNIQUE_ID_ddebug254, ptr noundef %dev6, ptr noundef nonnull @.str.37, i32 noundef %1) #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %do.body10, label %if.end28

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_bulk_out_data_callback.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7720_bulk_out_data_callback, %if.then22)) #12
          to label %cleanup [label %if.then22], !srcloc !251

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %dev23 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev23, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_bulk_out_data_callback.__UNIQUE_ID_ddebug255, ptr noundef %dev24, ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end7
  %open = getelementptr inbounds %struct.moschip_port, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %open, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool29.not = icmp eq i8 %9, 0
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %port = getelementptr inbounds %struct.moschip_port, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 4
  %port31 = getelementptr inbounds %struct.usb_serial_port, ptr %11, i32 0, i32 1
  tail call void @tty_port_tty_wakeup(ptr noundef %port31) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end28.cleanup_crit_edge, %if.then22, %do.body10, %if.then5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_lsr_info(ptr nocapture noundef readonly %tty, ptr noundef %value) unnamed_addr #2 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #12
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %result, align 4
  %port_number1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %port_number1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_number1, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %chars.019.i = phi i32 [ 0, %entry ], [ %chars.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.moschip_port, ptr %6, i32 0, i32 5, i32 %i.018.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %status.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %10)
  %cmp3.i = icmp eq i32 %10, -115
  %add.i = add i32 %chars.019.i, 32
  %spec.select.i = select i1 %cmp3.i, i32 %add.i, i32 %chars.019.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i.for.inc.i_crit_edge
  %chars.1.i = phi i32 [ %chars.019.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %do.body.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.body.i:                                        ; preds = %for.inc.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7720_chars_in_buffer.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_lsr_info, %if.then8.i)) #12
          to label %mos7720_chars_in_buffer.exit [label %if.then8.i], !srcloc !251

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7720_chars_in_buffer.__UNIQUE_ID_ddebug257, ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.68, i32 noundef %chars.1.i) #12
  br label %mos7720_chars_in_buffer.exit

mos7720_chars_in_buffer.exit:                     ; preds = %if.then8.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chars.1.i)
  %cmp = icmp eq i32 %chars.1.i, 0
  br i1 %cmp, label %if.then, label %mos7720_chars_in_buffer.exit.if.then.i_crit_edge

mos7720_chars_in_buffer.exit.if.then.i_crit_edge: ; preds = %mos7720_chars_in_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then:                                          ; preds = %mos7720_chars_in_buffer.exit
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 1) #15
  %tobool.not.i1 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i1, label %if.then.if.then.i_crit_edge, label %if.end.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.i:                                         ; preds = %if.then
  %serial_portnum.tr.i.i = zext i8 %4 to i16
  %18 = shl nuw i16 %serial_portnum.tr.i.i, 8
  %conv.i.i = add i16 %18, 512
  %shl.i.i = shl i32 %16, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or1.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 5, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp.i = icmp eq i32 %call5.i, 1
  br i1 %cmp.i, label %read_mos_reg.exit, label %read_mos_reg.exit.thread5

read_mos_reg.exit.thread5:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %if.then.i

read_mos_reg.exit:                                ; preds = %if.end.i
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %21 = and i8 %20, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %21)
  %cmp5 = icmp eq i8 %21, 96
  br i1 %cmp5, label %do.body, label %read_mos_reg.exit.if.then.i_crit_edge

read_mos_reg.exit.if.then.i_crit_edge:            ; preds = %read_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

do.body:                                          ; preds = %read_mos_reg.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_lsr_info.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_lsr_info, %if.then11)) #12
          to label %do.end [label %if.then11], !srcloc !251

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_lsr_info.__UNIQUE_ID_ddebug281, ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43) #12
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %22 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %result, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.end, %read_mos_reg.exit.if.then.i_crit_edge, %read_mos_reg.exit.thread5, %if.then.if.then.i_crit_edge, %mos7720_chars_in_buffer.exit.if.then.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.then.i.copy_to_user.exit.thread_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.then.i
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %value, i32 4, i32 -1226833920) #17, !srcloc !255
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %result, i32 noundef 4) #12
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %value, ptr noundef nonnull %result, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool15.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool15.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.then.i.copy_to_user.exit.thread_crit_edge
  %24 = phi i32 [ -14, %if.then.i.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #12
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @change_port_settings(ptr noundef %tty, ptr noundef %mos7720_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %mos7720_port, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %port1 = getelementptr inbounds %struct.moschip_port, ptr %mos7720_port, i32 0, i32 4
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %port_number3 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %port_number3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_number3, align 4
  %open = getelementptr inbounds %struct.moschip_port, ptr %mos7720_port, i32 0, i32 3
  %6 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %open, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then8)) #12
          to label %cleanup [label %if.then8], !srcloc !251

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug270, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag, align 4
  %and = lshr i32 %9, 4
  %10 = and i32 %and, 3
  %and14 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body56, label %if.then16

if.then16:                                        ; preds = %if.end10
  %and17 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then32)) #12
          to label %if.end73 [label %if.then32], !srcloc !251

if.then32:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %dev33 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug271, ptr noundef %dev33, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51) #12
  br label %if.end73

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then49)) #12
          to label %if.end73 [label %if.then49], !srcloc !251

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dev50 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug272, ptr noundef %dev50, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51) #12
  br label %if.end73

do.body56:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then68)) #12
          to label %if.end73 [label %if.then68], !srcloc !251

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  %dev69 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug273, ptr noundef %dev69, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.51) #12
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %do.body56, %if.then49, %if.else, %if.then32, %if.then19
  %lParity.0 = phi i32 [ 8, %if.then32 ], [ 24, %if.then49 ], [ 0, %if.then68 ], [ 8, %if.then19 ], [ 24, %if.else ], [ 0, %do.body56 ]
  %and74 = lshr i32 %9, 25
  %11 = and i32 %and74, 32
  %and80 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else100, label %if.then82

if.then82:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then95)) #12
          to label %if.end118 [label %if.then95], !srcloc !251

if.then95:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  %dev96 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug274, ptr noundef %dev96, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.51) #12
  br label %if.end118

if.else100:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then113)) #12
          to label %if.end118 [label %if.then113], !srcloc !251

if.then113:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #14
  %dev114 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug275, ptr noundef %dev114, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.51) #12
  br label %if.end118

if.end118:                                        ; preds = %if.then113, %if.else100, %if.then95, %if.then82
  %lStop.0 = phi i32 [ 4, %if.then95 ], [ 0, %if.then113 ], [ 4, %if.then82 ], [ 0, %if.else100 ]
  %12 = ptrtoint ptr %mos7720_port to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mos7720_port, align 4
  %14 = and i8 %13, -64
  %15 = or i32 %10, %11
  %or124 = or i32 %15, %lParity.0
  %or126 = or i32 %or124, %lStop.0
  %16 = trunc i32 %or126 to i8
  %conv130 = or i8 %14, %16
  store i8 %conv130, ptr %mos7720_port, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %20, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %serial_portnum.tr.i.i = zext i8 %5 to i16
  %21 = shl nuw i16 %serial_portnum.tr.i.i, 8
  %conv.i.i = add i16 %21, 512
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end118.write_mos_reg.exit_crit_edge

if.end118.write_mos_reg.exit_crit_edge:           ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i:                                         ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i, %if.end118.write_mos_reg.exit_crit_edge
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i26 = shl i32 %25, 8
  %or.i27 = or i32 %shl.i.i26, -2147483648
  %call5.i30 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i27, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i30)
  %cmp.i31 = icmp slt i32 %call5.i30, 0
  br i1 %cmp.i31, label %do.end.i33, label %write_mos_reg.exit.write_mos_reg.exit34_crit_edge

write_mos_reg.exit.write_mos_reg.exit34_crit_edge: ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit34

do.end.i33:                                       ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i32 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i32, ptr noundef nonnull @.str.20, i32 noundef %call5.i30) #16
  br label %write_mos_reg.exit34

write_mos_reg.exit34:                             ; preds = %do.end.i33, %write_mos_reg.exit.write_mos_reg.exit34_crit_edge
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i35 = shl i32 %29, 8
  %or.i36 = or i32 %shl.i.i35, -2147483648
  %add.i = add i16 %21, 719
  %call5.i39 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i36, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i39)
  %cmp.i40 = icmp slt i32 %call5.i39, 0
  br i1 %cmp.i40, label %do.end.i42, label %write_mos_reg.exit34.write_mos_reg.exit43_crit_edge

write_mos_reg.exit34.write_mos_reg.exit43_crit_edge: ; preds = %write_mos_reg.exit34
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit43

do.end.i42:                                       ; preds = %write_mos_reg.exit34
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i41 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i41, ptr noundef nonnull @.str.20, i32 noundef %call5.i39) #16
  br label %write_mos_reg.exit43

write_mos_reg.exit43:                             ; preds = %do.end.i42, %write_mos_reg.exit34.write_mos_reg.exit43_crit_edge
  %30 = ptrtoint ptr %mos7720_port to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mos7720_port, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i44 = shl i32 %35, 8
  %or.i45 = or i32 %shl.i.i44, -2147483648
  %conv3.i = zext i8 %31 to i16
  %add.i48 = or i16 %conv.i.i, %conv3.i
  %call5.i49 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i45, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i48, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i49)
  %cmp.i50 = icmp slt i32 %call5.i49, 0
  br i1 %cmp.i50, label %do.end.i52, label %write_mos_reg.exit43.write_mos_reg.exit53_crit_edge

write_mos_reg.exit43.write_mos_reg.exit53_crit_edge: ; preds = %write_mos_reg.exit43
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit53

do.end.i52:                                       ; preds = %write_mos_reg.exit43
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i51 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i51, ptr noundef nonnull @.str.20, i32 noundef %call5.i49) #16
  br label %write_mos_reg.exit53

write_mos_reg.exit53:                             ; preds = %do.end.i52, %write_mos_reg.exit43.write_mos_reg.exit53_crit_edge
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %mos7720_port, i32 0, i32 1
  %36 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 11, ptr %shadowMCR, align 1
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i54 = shl i32 %40, 8
  %or.i55 = or i32 %shl.i.i54, -2147483648
  %add.i58 = add i16 %21, 523
  %call5.i59 = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or.i55, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i58, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i59)
  %cmp.i60 = icmp slt i32 %call5.i59, 0
  br i1 %cmp.i60, label %do.end.i62, label %write_mos_reg.exit53.write_mos_reg.exit63_crit_edge

write_mos_reg.exit53.write_mos_reg.exit63_crit_edge: ; preds = %write_mos_reg.exit53
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit63

do.end.i62:                                       ; preds = %write_mos_reg.exit53
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i61 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i61, ptr noundef nonnull @.str.20, i32 noundef %call5.i59) #16
  br label %write_mos_reg.exit63

write_mos_reg.exit63:                             ; preds = %do.end.i62, %write_mos_reg.exit53.write_mos_reg.exit63_crit_edge
  %and139 = and i32 %9, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  %spec.select1 = select i1 %tobool140.not, i8 8, i8 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool148.not = icmp sgt i32 %9, -1
  br i1 %tobool148.not, label %if.else160, label %if.then149

if.then149:                                       ; preds = %write_mos_reg.exit63
  %41 = or i8 %spec.select1, 32
  %42 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %shadowMCR, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool154.not = icmp eq i8 %5, 0
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i72 = shl i32 %46, 8
  %or.i73 = or i32 %shl.i.i72, -2147483648
  br i1 %tobool154.not, label %if.else157, label %if.then155

if.then155:                                       ; preds = %if.then149
  %call5.i67 = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i73, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i67)
  %cmp.i68 = icmp slt i32 %call5.i67, 0
  br i1 %cmp.i68, label %do.end.i70, label %if.then155.if.end165_crit_edge

if.then155.if.end165_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

do.end.i70:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i69 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i69, ptr noundef nonnull @.str.20, i32 noundef %call5.i67) #16
  br label %if.end165

if.else157:                                       ; preds = %if.then149
  %call5.i75 = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i73, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i75)
  %cmp.i76 = icmp slt i32 %call5.i75, 0
  br i1 %cmp.i76, label %do.end.i78, label %if.else157.if.end165_crit_edge

if.else157.if.end165_crit_edge:                   ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

do.end.i78:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i77 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i77, ptr noundef nonnull @.str.20, i32 noundef %call5.i75) #16
  br label %if.end165

if.else160:                                       ; preds = %write_mos_reg.exit63
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %spec.select1, ptr %shadowMCR, align 1
  br label %if.end165

if.end165:                                        ; preds = %if.else160, %do.end.i78, %if.else157.if.end165_crit_edge, %do.end.i70, %if.then155.if.end165_crit_edge
  %48 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %shadowMCR, align 1
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i80 = shl i32 %53, 8
  %or.i81 = or i32 %shl.i.i80, -2147483648
  %conv3.i84 = zext i8 %49 to i16
  %add.i85 = or i16 %conv.i.i, %conv3.i84
  %call5.i86 = tail call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or.i81, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i85, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i86)
  %cmp.i87 = icmp slt i32 %call5.i86, 0
  br i1 %cmp.i87, label %do.end.i89, label %if.end165.write_mos_reg.exit90_crit_edge

if.end165.write_mos_reg.exit90_crit_edge:         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit90

do.end.i89:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i88 = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i88, ptr noundef nonnull @.str.20, i32 noundef %call5.i86) #16
  br label %write_mos_reg.exit90

write_mos_reg.exit90:                             ; preds = %do.end.i89, %if.end165.write_mos_reg.exit90_crit_edge
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool169.not = icmp eq i32 %call.i, 0
  br i1 %tobool169.not, label %do.body171, label %write_mos_reg.exit90.if.end188_crit_edge

write_mos_reg.exit90.if.end188_crit_edge:         ; preds = %write_mos_reg.exit90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

do.body171:                                       ; preds = %write_mos_reg.exit90
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.end188.thread)) #12
          to label %if.end188 [label %if.end188.thread], !srcloc !251

if.end188.thread:                                 ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #14
  %dev184 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug276, ptr noundef %dev184, ptr noundef nonnull @.str.57) #12
  br label %do.body195

if.end188:                                        ; preds = %do.body171, %write_mos_reg.exit90.if.end188_crit_edge
  %baud.0 = phi i32 [ %call.i, %write_mos_reg.exit90.if.end188_crit_edge ], [ 9600, %do.body171 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 230399, i32 %baud.0)
  %cmp189 = icmp sgt i32 %baud.0, 230399
  br i1 %cmp189, label %if.then191, label %if.end188.do.body195_crit_edge

if.end188.do.body195_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body195

if.then191:                                       ; preds = %if.end188
  tail call fastcc void @set_higher_rates(ptr noundef nonnull %mos7720_port, i32 noundef %baud.0)
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i91 = shl i32 %57, 8
  %or.i92 = or i32 %shl.i.i91, -2147483648
  %add.i95 = add i16 %21, 524
  %call5.i96 = tail call i32 @usb_control_msg(ptr noundef %55, i32 noundef %or.i92, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i95, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i96)
  %cmp.i97 = icmp slt i32 %call5.i96, 0
  br i1 %cmp.i97, label %do.end.i99, label %if.then191.cleanup_crit_edge

if.then191.cleanup_crit_edge:                     ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i99:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i98 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i98, ptr noundef nonnull @.str.20, i32 noundef %call5.i96) #16
  br label %cleanup

do.body195:                                       ; preds = %if.end188.do.body195_crit_edge, %if.end188.thread
  %baud.0120 = phi i32 [ 9600, %if.end188.thread ], [ %baud.0, %if.end188.do.body195_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then207)) #12
          to label %do.end211 [label %if.then207], !srcloc !251

if.then207:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #14
  %dev208 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug277, ptr noundef %dev208, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.51, i32 noundef %baud.0120) #12
  br label %do.end211

do.end211:                                        ; preds = %if.then207, %do.body195
  tail call fastcc void @send_cmd_write_baud_rate(ptr noundef nonnull %mos7720_port, i32 noundef %baud.0120)
  br i1 %tobool140.not, label %do.end211.if.end216_crit_edge, label %if.then215

do.end211.if.end216_crit_edge:                    ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end216

if.then215:                                       ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %baud.0120, i32 noundef %baud.0120) #12
  br label %if.end216

if.end216:                                        ; preds = %if.then215, %do.end211.if.end216_crit_edge
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %shl.i.i101 = shl i32 %61, 8
  %or.i102 = or i32 %shl.i.i101, -2147483648
  %add.i105 = add i16 %21, 524
  %call5.i106 = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i102, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i105, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i106)
  %cmp.i107 = icmp slt i32 %call5.i106, 0
  br i1 %cmp.i107, label %do.end.i109, label %if.end216.write_mos_reg.exit110_crit_edge

if.end216.write_mos_reg.exit110_crit_edge:        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit110

do.end.i109:                                      ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i108 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i108, ptr noundef nonnull @.str.20, i32 noundef %call5.i106) #16
  br label %write_mos_reg.exit110

write_mos_reg.exit110:                            ; preds = %do.end.i109, %if.end216.write_mos_reg.exit110_crit_edge
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %62 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_urb, align 4
  %status218 = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %status218 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %65)
  %cmp219.not = icmp eq i32 %65, -115
  br i1 %cmp219.not, label %write_mos_reg.exit110.cleanup_crit_edge, label %if.then221

write_mos_reg.exit110.cleanup_crit_edge:          ; preds = %write_mos_reg.exit110
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then221:                                       ; preds = %write_mos_reg.exit110
  %call223 = tail call i32 @usb_submit_urb(ptr noundef %63, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.then221.cleanup_crit_edge, label %do.body226

if.then221.cleanup_crit_edge:                     ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body226:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then238)) #12
          to label %cleanup [label %if.then238], !srcloc !251

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #14
  %dev239 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug278, ptr noundef %dev239, ptr noundef nonnull @.str.50, i32 noundef %call223) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then238, %do.body226, %if.then221.cleanup_crit_edge, %write_mos_reg.exit110.cleanup_crit_edge, %do.end.i99, %if.then191.cleanup_crit_edge, %if.then8, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_higher_rates(ptr noundef %mos7720_port, i32 noundef %baud) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %mos7720_port, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %port1 = getelementptr inbounds %struct.moschip_port, ptr %mos7720_port, i32 0, i32 4
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_higher_rates.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_higher_rates, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !251

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_higher_rates.__UNIQUE_ID_ddebug265, ptr noundef %dev, ptr noundef nonnull @.str.60) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %port_number7 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %port_number7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_number7, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %serial_portnum.tr.i.i = zext i8 %5 to i16
  %10 = shl nuw i16 %serial_portnum.tr.i.i, 8
  %conv.i.i = add i16 %10, 512
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.end.write_mos_reg.exit_crit_edge

do.end.write_mos_reg.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i, %do.end.write_mos_reg.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i1 = shl i32 %14, 8
  %or.i2 = or i32 %shl.i.i1, -2147483648
  %call5.i5 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i2, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i5)
  %cmp.i6 = icmp slt i32 %call5.i5, 0
  br i1 %cmp.i6, label %do.end.i8, label %write_mos_reg.exit.write_mos_reg.exit9_crit_edge

write_mos_reg.exit.write_mos_reg.exit9_crit_edge: ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit9

do.end.i8:                                        ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i7 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i7, ptr noundef nonnull @.str.20, i32 noundef %call5.i5) #16
  br label %write_mos_reg.exit9

write_mos_reg.exit9:                              ; preds = %do.end.i8, %write_mos_reg.exit.write_mos_reg.exit9_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i10 = shl i32 %18, 8
  %or.i11 = or i32 %shl.i.i10, -2147483648
  %add.i = add i16 %10, 719
  %call5.i14 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i11, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i14)
  %cmp.i15 = icmp slt i32 %call5.i14, 0
  br i1 %cmp.i15, label %do.end.i17, label %write_mos_reg.exit9.write_mos_reg.exit18_crit_edge

write_mos_reg.exit9.write_mos_reg.exit18_crit_edge: ; preds = %write_mos_reg.exit9
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit18

do.end.i17:                                       ; preds = %write_mos_reg.exit9
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i16 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i16, ptr noundef nonnull @.str.20, i32 noundef %call5.i14) #16
  br label %write_mos_reg.exit18

write_mos_reg.exit18:                             ; preds = %do.end.i17, %write_mos_reg.exit9.write_mos_reg.exit18_crit_edge
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %mos7720_port, i32 0, i32 1
  %19 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 11, ptr %shadowMCR, align 1
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i19 = shl i32 %23, 8
  %or.i20 = or i32 %shl.i.i19, -2147483648
  %add.i23 = add i16 %10, 523
  %call5.i24 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i20, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i23, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i24)
  %cmp.i25 = icmp slt i32 %call5.i24, 0
  br i1 %cmp.i25, label %do.end.i27, label %write_mos_reg.exit18.write_mos_reg.exit28_crit_edge

write_mos_reg.exit18.write_mos_reg.exit28_crit_edge: ; preds = %write_mos_reg.exit18
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit28

do.end.i27:                                       ; preds = %write_mos_reg.exit18
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i26 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i26, ptr noundef nonnull @.str.20, i32 noundef %call5.i24) #16
  br label %write_mos_reg.exit28

write_mos_reg.exit28:                             ; preds = %do.end.i27, %write_mos_reg.exit18.write_mos_reg.exit28_crit_edge
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i29 = shl i32 %27, 8
  %or.i30 = or i32 %shl.i.i29, -2147483648
  %call5.i31 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i30, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i31)
  %cmp.i32 = icmp slt i32 %call5.i31, 0
  br i1 %cmp.i32, label %do.end.i34, label %write_mos_reg.exit28.write_mos_reg.exit35_crit_edge

write_mos_reg.exit28.write_mos_reg.exit35_crit_edge: ; preds = %write_mos_reg.exit28
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit35

do.end.i34:                                       ; preds = %write_mos_reg.exit28
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i33 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i33, ptr noundef nonnull @.str.20, i32 noundef %call5.i31) #16
  br label %write_mos_reg.exit35

write_mos_reg.exit35:                             ; preds = %do.end.i34, %write_mos_reg.exit28.write_mos_reg.exit35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp14 = icmp eq i8 %5, 0
  %. = select i1 %cmp14, i32 16, i32 17
  %baud.tr = trunc i32 %baud to i8
  %conv18 = shl i8 %baud.tr, 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i36 = shl i32 %31, 8
  %or.i37 = or i32 %shl.i.i36, -2147483648
  %arrayidx.i.i = getelementptr [20 x i16], ptr @get_reg_index.mos7715_index_lookup_table, i32 0, i32 %.
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i.i, align 2
  %conv3.i = zext i8 %conv18 to i16
  %call5.i39 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i37, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv3.i, i16 noundef zeroext %33, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i39)
  %cmp.i40 = icmp slt i32 %call5.i39, 0
  br i1 %cmp.i40, label %do.end.i42, label %write_mos_reg.exit35.write_mos_reg.exit43_crit_edge

write_mos_reg.exit35.write_mos_reg.exit43_crit_edge: ; preds = %write_mos_reg.exit35
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit43

do.end.i42:                                       ; preds = %write_mos_reg.exit35
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i41 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i41, ptr noundef nonnull @.str.20, i32 noundef %call5.i39) #16
  br label %write_mos_reg.exit43

write_mos_reg.exit43:                             ; preds = %do.end.i42, %write_mos_reg.exit35.write_mos_reg.exit43_crit_edge
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i44 = shl i32 %37, 8
  %or.i45 = or i32 %shl.i.i44, -2147483648
  %call5.i47 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i45, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i47)
  %cmp.i48 = icmp slt i32 %call5.i47, 0
  br i1 %cmp.i48, label %do.end.i50, label %write_mos_reg.exit43.write_mos_reg.exit51_crit_edge

write_mos_reg.exit43.write_mos_reg.exit51_crit_edge: ; preds = %write_mos_reg.exit43
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit51

do.end.i50:                                       ; preds = %write_mos_reg.exit43
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i49 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i49, ptr noundef nonnull @.str.20, i32 noundef %call5.i47) #16
  br label %write_mos_reg.exit51

write_mos_reg.exit51:                             ; preds = %do.end.i50, %write_mos_reg.exit43.write_mos_reg.exit51_crit_edge
  %38 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 43, ptr %shadowMCR, align 1
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i52 = shl i32 %42, 8
  %or.i53 = or i32 %shl.i.i52, -2147483648
  %add.i56 = add i16 %10, 555
  %call5.i57 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i53, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i56, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i57)
  %cmp.i58 = icmp slt i32 %call5.i57, 0
  br i1 %cmp.i58, label %do.end.i60, label %write_mos_reg.exit51.write_mos_reg.exit61_crit_edge

write_mos_reg.exit51.write_mos_reg.exit61_crit_edge: ; preds = %write_mos_reg.exit51
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit61

do.end.i60:                                       ; preds = %write_mos_reg.exit51
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i59 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i59, ptr noundef nonnull @.str.20, i32 noundef %call5.i57) #16
  br label %write_mos_reg.exit61

write_mos_reg.exit61:                             ; preds = %do.end.i60, %write_mos_reg.exit51.write_mos_reg.exit61_crit_edge
  %43 = ptrtoint ptr %mos7720_port to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mos7720_port, align 4
  %45 = or i8 %44, -128
  store i8 %45, ptr %mos7720_port, align 4
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i62 = shl i32 %49, 8
  %or.i63 = or i32 %shl.i.i62, -2147483648
  %conv3.i66 = zext i8 %45 to i16
  %add.i67 = or i16 %conv.i.i, %conv3.i66
  %call5.i68 = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i63, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i67, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i68)
  %cmp.i69 = icmp slt i32 %call5.i68, 0
  br i1 %cmp.i69, label %do.end.i71, label %write_mos_reg.exit61.write_mos_reg.exit72_crit_edge

write_mos_reg.exit61.write_mos_reg.exit72_crit_edge: ; preds = %write_mos_reg.exit61
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit72

do.end.i71:                                       ; preds = %write_mos_reg.exit61
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i70 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i70, ptr noundef nonnull @.str.20, i32 noundef %call5.i68) #16
  br label %write_mos_reg.exit72

write_mos_reg.exit72:                             ; preds = %do.end.i71, %write_mos_reg.exit61.write_mos_reg.exit72_crit_edge
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i73 = shl i32 %53, 8
  %or.i74 = or i32 %shl.i.i73, -2147483648
  %add.i77 = add i16 %10, 513
  %call5.i78 = tail call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or.i74, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i77, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i78)
  %cmp.i79 = icmp slt i32 %call5.i78, 0
  br i1 %cmp.i79, label %do.end.i81, label %write_mos_reg.exit72.write_mos_reg.exit82_crit_edge

write_mos_reg.exit72.write_mos_reg.exit82_crit_edge: ; preds = %write_mos_reg.exit72
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit82

do.end.i81:                                       ; preds = %write_mos_reg.exit72
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i80 = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i80, ptr noundef nonnull @.str.20, i32 noundef %call5.i78) #16
  br label %write_mos_reg.exit82

write_mos_reg.exit82:                             ; preds = %do.end.i81, %write_mos_reg.exit72.write_mos_reg.exit82_crit_edge
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i83 = shl i32 %57, 8
  %or.i84 = or i32 %shl.i.i83, -2147483648
  %call5.i87 = tail call i32 @usb_control_msg(ptr noundef %55, i32 noundef %or.i84, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i87)
  %cmp.i88 = icmp slt i32 %call5.i87, 0
  br i1 %cmp.i88, label %do.end.i90, label %write_mos_reg.exit82.write_mos_reg.exit91_crit_edge

write_mos_reg.exit82.write_mos_reg.exit91_crit_edge: ; preds = %write_mos_reg.exit82
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit91

do.end.i90:                                       ; preds = %write_mos_reg.exit82
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i89 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i89, ptr noundef nonnull @.str.20, i32 noundef %call5.i87) #16
  br label %write_mos_reg.exit91

write_mos_reg.exit91:                             ; preds = %do.end.i90, %write_mos_reg.exit82.write_mos_reg.exit91_crit_edge
  %58 = ptrtoint ptr %mos7720_port to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mos7720_port, align 4
  %60 = and i8 %59, 127
  store i8 %60, ptr %mos7720_port, align 4
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %shl.i.i92 = shl i32 %64, 8
  %or.i93 = or i32 %shl.i.i92, -2147483648
  %conv3.i96 = zext i8 %60 to i16
  %add.i97 = or i16 %conv.i.i, %conv3.i96
  %call5.i98 = tail call i32 @usb_control_msg(ptr noundef %62, i32 noundef %or.i93, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i97, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i98)
  %cmp.i99 = icmp slt i32 %call5.i98, 0
  br i1 %cmp.i99, label %do.end.i101, label %write_mos_reg.exit91.cleanup_crit_edge

write_mos_reg.exit91.cleanup_crit_edge:           ; preds = %write_mos_reg.exit91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i101:                                      ; preds = %write_mos_reg.exit91
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i100 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i100, ptr noundef nonnull @.str.20, i32 noundef %call5.i98) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end.i101, %write_mos_reg.exit91.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_cmd_write_baud_rate(ptr noundef %mos7720_port, i32 noundef %baudrate) unnamed_addr #2 align 64 {
entry:
  %divisor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %divisor) #12
  %0 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %divisor, align 4, !annotation !254
  %cmp = icmp eq ptr %mos7720_port, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %port1 = getelementptr inbounds %struct.moschip_port, ptr %mos7720_port, i32 0, i32 4
  %1 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port1, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port_number, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_cmd_write_baud_rate.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_cmd_write_baud_rate, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !251

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_cmd_write_baud_rate.__UNIQUE_ID_ddebug269, ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef %baudrate) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %call7 = call fastcc i32 @calc_baud_rate_divisor(ptr noundef %2, i32 noundef %baudrate, ptr noundef nonnull %divisor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev13 = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61) #16
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %7 = ptrtoint ptr %mos7720_port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mos7720_port, align 4
  %9 = or i8 %8, -128
  store i8 %9, ptr %mos7720_port, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %serial_portnum.tr.i.i = zext i8 %6 to i16
  %14 = shl nuw i16 %serial_portnum.tr.i.i, 8
  %conv.i.i = add i16 %14, 512
  %conv3.i = zext i8 %9 to i16
  %add.i = or i16 %conv.i.i, %conv3.i
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end14.write_mos_reg.exit_crit_edge

if.end14.write_mos_reg.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.20, i32 noundef %call5.i) #16
  br label %write_mos_reg.exit

write_mos_reg.exit:                               ; preds = %do.end.i, %if.end14.write_mos_reg.exit_crit_edge
  %15 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %divisor, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i1 = shl i32 %20, 8
  %or.i2 = or i32 %shl.i.i1, -2147483648
  %21 = trunc i32 %16 to i16
  %conv3.i5 = and i16 %21, 255
  %add.i6 = or i16 %conv3.i5, %conv.i.i
  %call5.i7 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i2, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i6, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i7)
  %cmp.i8 = icmp slt i32 %call5.i7, 0
  br i1 %cmp.i8, label %do.end.i10, label %write_mos_reg.exit.write_mos_reg.exit11_crit_edge

write_mos_reg.exit.write_mos_reg.exit11_crit_edge: ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit11

do.end.i10:                                       ; preds = %write_mos_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i9 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i9, ptr noundef nonnull @.str.20, i32 noundef %call5.i7) #16
  br label %write_mos_reg.exit11

write_mos_reg.exit11:                             ; preds = %do.end.i10, %write_mos_reg.exit.write_mos_reg.exit11_crit_edge
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i12 = shl i32 %25, 8
  %or.i13 = or i32 %shl.i.i12, -2147483648
  %26 = lshr i16 %21, 8
  %add.i17 = or i16 %26, %conv.i.i
  %call5.i18 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i13, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i17, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i18)
  %cmp.i19 = icmp slt i32 %call5.i18, 0
  br i1 %cmp.i19, label %do.end.i21, label %write_mos_reg.exit11.write_mos_reg.exit22_crit_edge

write_mos_reg.exit11.write_mos_reg.exit22_crit_edge: ; preds = %write_mos_reg.exit11
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mos_reg.exit22

do.end.i21:                                       ; preds = %write_mos_reg.exit11
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i20 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i20, ptr noundef nonnull @.str.20, i32 noundef %call5.i18) #16
  br label %write_mos_reg.exit22

write_mos_reg.exit22:                             ; preds = %do.end.i21, %write_mos_reg.exit11.write_mos_reg.exit22_crit_edge
  %27 = ptrtoint ptr %mos7720_port to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mos7720_port, align 4
  %29 = and i8 %28, 127
  store i8 %29, ptr %mos7720_port, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %4, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i23 = shl i32 %33, 8
  %or.i24 = or i32 %shl.i.i23, -2147483648
  %conv3.i27 = zext i8 %29 to i16
  %add.i28 = or i16 %conv.i.i, %conv3.i27
  %call5.i29 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i24, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %add.i28, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i29)
  %cmp.i30 = icmp slt i32 %call5.i29, 0
  br i1 %cmp.i30, label %do.end.i32, label %write_mos_reg.exit22.cleanup_crit_edge

write_mos_reg.exit22.cleanup_crit_edge:           ; preds = %write_mos_reg.exit22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i32:                                       ; preds = %write_mos_reg.exit22
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i31 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i31, ptr noundef nonnull @.str.20, i32 noundef %call5.i29) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end.i32, %write_mos_reg.exit22.cleanup_crit_edge, %do.end12, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %divisor) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_baud_rate_divisor(ptr noundef %port, i32 noundef %baudrate, ptr nocapture noundef writeonly %divisor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_baud_rate_divisor.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@calc_baud_rate_divisor, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_baud_rate_divisor.__UNIQUE_ID_ddebug266, ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i32 noundef %baudrate) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %baudrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %baudrate, label %for.inc.15 [
    i32 50, label %do.end.if.then5_crit_edge
    i32 110, label %if.then5.fold.split
    i32 134, label %if.then5.fold.split95
    i32 150, label %if.then5.fold.split96
    i32 300, label %if.then5.fold.split97
    i32 600, label %if.then5.fold.split98
    i32 1200, label %if.then5.fold.split99
    i32 1800, label %if.then5.fold.split100
    i32 2400, label %if.then5.fold.split101
    i32 4800, label %if.then5.fold.split102
    i32 7200, label %if.then5.fold.split103
    i32 9600, label %if.then5.fold.split104
    i32 19200, label %if.then5.fold.split105
    i32 38400, label %if.then5.fold.split106
    i32 57600, label %if.then5.fold.split107
    i32 115200, label %if.then5.fold.split108
  ]

do.end.if.then5_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split95:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split96:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split97:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split98:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split99:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split100:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split101:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split102:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split103:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split104:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split105:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split106:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split107:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5.fold.split108:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5:                                         ; preds = %if.then5.fold.split108, %if.then5.fold.split107, %if.then5.fold.split106, %if.then5.fold.split105, %if.then5.fold.split104, %if.then5.fold.split103, %if.then5.fold.split102, %if.then5.fold.split101, %if.then5.fold.split100, %if.then5.fold.split99, %if.then5.fold.split98, %if.then5.fold.split97, %if.then5.fold.split96, %if.then5.fold.split95, %if.then5.fold.split, %do.end.if.then5_crit_edge
  %i.093.lcssa = phi i32 [ 0, %do.end.if.then5_crit_edge ], [ 1, %if.then5.fold.split ], [ 2, %if.then5.fold.split95 ], [ 3, %if.then5.fold.split96 ], [ 4, %if.then5.fold.split97 ], [ 5, %if.then5.fold.split98 ], [ 6, %if.then5.fold.split99 ], [ 7, %if.then5.fold.split100 ], [ 8, %if.then5.fold.split101 ], [ 9, %if.then5.fold.split102 ], [ 10, %if.then5.fold.split103 ], [ 11, %if.then5.fold.split104 ], [ 12, %if.then5.fold.split105 ], [ 13, %if.then5.fold.split106 ], [ 14, %if.then5.fold.split107 ], [ 15, %if.then5.fold.split108 ]
  %divisor7 = getelementptr [16 x %struct.divisor_table_entry], ptr @divisor_table, i32 0, i32 %i.093.lcssa, i32 1
  %1 = ptrtoint ptr %divisor7 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %divisor7, align 4
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %divisor, align 4
  br label %cleanup

for.inc.15:                                       ; preds = %do.end
  %4 = add i32 %baudrate, -76
  call void @__sanitizer_cov_trace_const_cmp4(i32 230324, i32 %4)
  %5 = icmp ult i32 %4, 230324
  br i1 %5, label %if.then13, label %do.body46

if.then13:                                        ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #14
  %div90 = udiv i32 230400, %baudrate
  %div1591 = udiv i32 2304000, %baudrate
  %mul.neg = mul nuw nsw i32 %div90, 65526
  %sub = add nuw nsw i32 %mul.neg, %div1591
  %conv20 = and i32 %sub, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv20)
  %cmp21 = icmp ugt i32 %conv20, 4
  %inc24 = zext i1 %cmp21 to i32
  %spec.select = add nuw nsw i32 %div90, %inc24
  %6 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %divisor, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_baud_rate_divisor.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@calc_baud_rate_divisor, %if.then39)) #12
          to label %cleanup [label %if.then39], !srcloc !251

if.then39:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %dev40 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_baud_rate_divisor.__UNIQUE_ID_ddebug267, ptr noundef %dev40, ptr noundef nonnull @.str.66, i32 noundef %baudrate, i32 noundef %spec.select) #12
  br label %cleanup

do.body46:                                        ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_baud_rate_divisor.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@calc_baud_rate_divisor, %if.then58)) #12
          to label %cleanup [label %if.then58], !srcloc !251

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  %dev59 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_baud_rate_divisor.__UNIQUE_ID_ddebug268, ptr noundef %dev59, ptr noundef nonnull @.str.67) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %do.body46, %if.then39, %if.then13, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then39 ], [ -22, %if.then58 ], [ 0, %if.then13 ], [ -22, %do.body46 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !65, !66, !67, !68, !70, !72, !74, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !137, !139, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !191, !192, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !232, !234, !235, !237}
!llvm.module.flags = !{!238, !239, !240, !241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !{ptr @__initcall__kmod_mos7720__284_1776_usb_serial_module_init6, !1, !"__initcall__kmod_mos7720__284_1776_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/mos7720.c", i32 1776, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author285, !4, !"__UNIQUE_ID_author285", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/mos7720.c", i32 1778, i32 1}
!5 = !{ptr @__UNIQUE_ID_description286, !6, !"__UNIQUE_ID_description286", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/mos7720.c", i32 1779, i32 1}
!7 = !{ptr @__UNIQUE_ID_file287, !8, !"__UNIQUE_ID_file287", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/mos7720.c", i32 1780, i32 1}
!9 = !{ptr @__UNIQUE_ID_license288, !8, !"__UNIQUE_ID_license288", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/mos7720.c", i32 69, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/mos7720.c", i32 1772, i32 41}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/mos7720.c", i32 1746, i32 18}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/mos7720.c", i32 1744, i32 12}
!19 = !{ptr @moschip7720_2port_driver, !20, !"moschip7720_2port_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/mos7720.c", i32 1741, i32 33}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/mos7720.c", i32 1668, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mos7720_startup._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @mos7720_startup._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/mos7720.c", i32 1674, i32 2}
!31 = !{ptr @mos7720_startup.__UNIQUE_ID_ddebug283, !30, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/mos7720.c", i32 708, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mos7715_interrupt_callback.__UNIQUE_ID_ddebug246, !33, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/serial/mos7720.c", i32 711, i32 3}
!38 = !{ptr @mos7715_interrupt_callback.__UNIQUE_ID_ddebug247, !37, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/serial/mos7720.c", i32 725, i32 3}
!41 = !{ptr @mos7715_interrupt_callback.__UNIQUE_ID_ddebug248, !40, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/serial/mos7720.c", i32 733, i32 4}
!44 = !{ptr @mos7715_interrupt_callback.__UNIQUE_ID_ddebug249, !43, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/serial/mos7720.c", i32 736, i32 4}
!47 = !{ptr @mos7715_interrupt_callback.__UNIQUE_ID_ddebug250, !46, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/serial/mos7720.c", i32 757, i32 3}
!50 = !{ptr @mos7715_interrupt_callback._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mos7715_interrupt_callback._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mos7715_parport_init.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/usb/serial/mos7720.c", i32 566, i32 2}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/mos7720.c", i32 586, i32 3}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mos7715_parport_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mos7715_parport_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @init_completion.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/linux/completion.h", i32 87, i32 2}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/serial/mos7720.c", i32 195, i32 3}
!65 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @write_mos_reg._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @write_mos_reg._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @get_reg_index.mos7715_index_lookup_table, !69, !"mos7715_index_lookup_table", i1 false, i1 false}
!69 = !{!"../drivers/usb/serial/mos7720.c", i32 136, i32 21}
!70 = distinct !{null, !71, !"dummy", i1 false, i1 false}
!71 = !{!"../drivers/usb/serial/mos7720.c", i32 105, i32 27}
!72 = !{ptr @parport_mos7715_ops, !73, !"parport_mos7715_ops", i1 false, i1 false}
!73 = !{!"../drivers/usb/serial/mos7720.c", i32 522, i32 34}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/serial/mos7720.c", i32 101, i32 8}
!76 = !{ptr @release_lock, !75, !"release_lock", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/serial/mos7720.c", i32 515, i32 3}
!79 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @parport_mos7715_write_compat._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @parport_mos7715_write_compat._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/serial/mos7720.c", i32 228, i32 3}
!84 = !{ptr @read_mos_reg._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @read_mos_reg._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/serial/mos7720.c", i32 899, i32 2}
!88 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mos7720_open.__UNIQUE_ID_ddebug256, !87, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/serial/mos7720.c", i32 931, i32 3}
!92 = !{ptr @mos7720_open._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mos7720_open._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/serial/mos7720.c", i32 1071, i32 4}
!96 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mos7720_write.__UNIQUE_ID_ddebug259, !95, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/serial/mos7720.c", i32 1077, i32 3}
!100 = !{ptr @mos7720_write.__UNIQUE_ID_ddebug260, !99, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!101 = distinct !{null, !102, !"__print_once", i1 false, i1 false}
!102 = !{!"../drivers/usb/serial/mos7720.c", i32 1105, i32 3}
!103 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mos7720_write._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @mos7720_write._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!108 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !107, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/mos7720.c", i32 806, i32 3}
!113 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @mos7720_bulk_out_data_callback.__UNIQUE_ID_ddebug254, !112, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/serial/mos7720.c", i32 812, i32 3}
!117 = !{ptr @mos7720_bulk_out_data_callback.__UNIQUE_ID_ddebug255, !116, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/serial/mos7720.c", i32 1041, i32 2}
!120 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @mos7720_write_room.__UNIQUE_ID_ddebug258, !119, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/serial/mos7720.c", i32 1636, i32 3}
!124 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @mos7720_ioctl.__UNIQUE_ID_ddebug282, !123, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!126 = !{ptr @.str.43, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/serial/mos7720.c", i32 1564, i32 4}
!128 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @get_lsr_info.__UNIQUE_ID_ddebug281, !127, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!132 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!133 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/serial/mos7720.c", i32 1526, i32 3}
!139 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @mos7720_set_termios.__UNIQUE_ID_ddebug279, !138, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/serial/mos7720.c", i32 1536, i32 4}
!143 = !{ptr @mos7720_set_termios.__UNIQUE_ID_ddebug280, !142, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/serial/mos7720.c", i32 1379, i32 3}
!146 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug270, !145, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/serial/mos7720.c", i32 1412, i32 4}
!149 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug271, !148, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/serial/mos7720.c", i32 1415, i32 4}
!152 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug272, !151, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/serial/mos7720.c", i32 1419, i32 3}
!155 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug273, !154, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!156 = !{ptr @.str.55, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/serial/mos7720.c", i32 1428, i32 3}
!158 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug274, !157, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!159 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/serial/mos7720.c", i32 1431, i32 3}
!161 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug275, !160, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!162 = !{ptr @.str.57, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/serial/mos7720.c", i32 1482, i32 3}
!164 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug276, !163, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!165 = !{ptr @.str.58, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/serial/mos7720.c", i32 1493, i32 2}
!167 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug277, !166, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!168 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug278, !169, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!169 = !{!"../drivers/usb/serial/mos7720.c", i32 1505, i32 4}
!170 = !{ptr @.str.59, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/serial/mos7720.c", i32 1195, i32 2}
!172 = !{ptr @.str.60, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @set_higher_rates.__UNIQUE_ID_ddebug265, !171, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!174 = !{ptr @.str.61, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/serial/mos7720.c", i32 1327, i32 2}
!176 = !{ptr @.str.62, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @send_cmd_write_baud_rate.__UNIQUE_ID_ddebug269, !175, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!178 = !{ptr @.str.63, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/serial/mos7720.c", i32 1332, i32 3}
!180 = !{ptr @send_cmd_write_baud_rate._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @send_cmd_write_baud_rate._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.64, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/serial/mos7720.c", i32 1276, i32 2}
!184 = !{ptr @.str.65, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @calc_baud_rate_divisor.__UNIQUE_ID_ddebug266, !183, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!186 = !{ptr @.str.66, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/serial/mos7720.c", i32 1298, i32 3}
!188 = !{ptr @calc_baud_rate_divisor.__UNIQUE_ID_ddebug267, !187, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!189 = !{ptr @.str.67, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/serial/mos7720.c", i32 1302, i32 2}
!191 = !{ptr @calc_baud_rate_divisor.__UNIQUE_ID_ddebug268, !190, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!192 = !{ptr @divisor_table, !193, !"divisor_table", i1 false, i1 false}
!193 = !{!"../drivers/usb/serial/mos7720.c", i32 1244, i32 41}
!194 = !{ptr @.str.68, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/serial/mos7720.c", i32 961, i32 2}
!196 = !{ptr @mos7720_chars_in_buffer.__UNIQUE_ID_ddebug257, !195, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!197 = !{ptr @.str.69, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/serial/mos7720.c", i32 1128, i32 3}
!199 = !{ptr @mos7720_throttle.__UNIQUE_ID_ddebug263, !198, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!200 = !{ptr @.str.70, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/serial/mos7720.c", i32 1158, i32 3}
!202 = !{ptr @mos7720_unthrottle.__UNIQUE_ID_ddebug264, !201, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!203 = !{ptr @.str.71, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/serial/mos7720.c", i32 623, i32 3}
!205 = !{ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug238, !204, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!206 = !{ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug239, !207, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!207 = !{!"../drivers/usb/serial/mos7720.c", i32 626, i32 3}
!208 = !{ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug240, !209, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!209 = !{!"../drivers/usb/serial/mos7720.c", i32 643, i32 3}
!210 = !{ptr @.str.72, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/serial/mos7720.c", i32 652, i32 3}
!212 = !{ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug241, !211, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!213 = !{ptr @.str.73, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/serial/mos7720.c", i32 656, i32 4}
!215 = !{ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug242, !214, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!216 = !{ptr @.str.74, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/serial/mos7720.c", i32 659, i32 4}
!218 = !{ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug243, !217, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!219 = !{ptr @.str.75, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/serial/mos7720.c", i32 668, i32 4}
!221 = !{ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug244, !220, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!222 = !{ptr @.str.76, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/serial/mos7720.c", i32 671, i32 4}
!224 = !{ptr @mos7720_interrupt_callback.__UNIQUE_ID_ddebug245, !223, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!225 = !{ptr @mos7720_interrupt_callback._entry, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/usb/serial/mos7720.c", i32 682, i32 3}
!227 = !{ptr @mos7720_interrupt_callback._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.77, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/serial/mos7720.c", i32 773, i32 3}
!230 = !{ptr @.str.78, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @mos7720_bulk_in_callback.__UNIQUE_ID_ddebug251, !229, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!232 = !{ptr @.str.79, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/usb/serial/mos7720.c", i32 779, i32 2}
!234 = !{ptr @mos7720_bulk_in_callback.__UNIQUE_ID_ddebug252, !233, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!235 = !{ptr @.str.80, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/serial/mos7720.c", i32 791, i32 4}
!237 = !{ptr @mos7720_bulk_in_callback.__UNIQUE_ID_ddebug253, !236, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!238 = !{i32 1, !"wchar_size", i32 2}
!239 = !{i32 1, !"min_enum_size", i32 4}
!240 = !{i32 8, !"branch-target-enforcement", i32 0}
!241 = !{i32 8, !"sign-return-address", i32 0}
!242 = !{i32 8, !"sign-return-address-all", i32 0}
!243 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!244 = !{i32 7, !"uwtable", i32 1}
!245 = !{i32 7, !"frame-pointer", i32 2}
!246 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!247 = !{i64 2148346000}
!248 = !{i64 2148260464, i64 2148260496, i64 2148260525, i64 2148260559, i64 2148260590, i64 2148260613}
!249 = !{!"branch_weights", i32 2000, i32 1}
!250 = !{i64 2149914589}
!251 = !{i64 2148738284, i64 2148738289, i64 2148738302, i64 2148738346, i64 2148738380, i64 2148738401}
!252 = !{i8 0, i8 2}
!253 = !{!"branch_weights", i32 1, i32 2000}
!254 = !{!"auto-init"}
!255 = !{i64 2152631216, i64 2152631241}
