; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/mos7840.c_pt.bc'
source_filename = "../drivers/usb/serial/mos7840.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.usb_serial_endpoints = type { i8, i8, i8, i8, [16 x ptr], [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.moschip_port = type { i32, ptr, i8, i8, ptr, i8, i8, i8, %struct.spinlock, [16 x ptr], [16 x i8], i8, i8, %struct.timer_list, %struct.timer_list, ptr, ptr, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_mos7840__322_1771_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @moschip7840_4port_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description323 = internal constant [56 x i8] c"mos7840.description=Moschip 7840/7820 USB Serial Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [40 x i8] c"mos7840.file=drivers/usb/serial/mos7840\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [20 x i8] c"mos7840.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mos7840\00", [24 x i8] zeroinitializer }, align 32
@id_table = internal constant { [20 x %struct.usb_device_id], [96 x i8] } { [20 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1367, i16 8209, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1367, i16 30752, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4362, i16 8720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 -26864, i16 30736, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 -26864, i16 30752, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 -26864, i16 30784, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 -26864, i16 30787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21470, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -17408, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21468, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -17407, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21463, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21456, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21455, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21454, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21438, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -17406, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -21436, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2134, i16 -17405, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@moschip7840_4port_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 0, i8 0, i8 0, i8 1, i8 0, i32 0, i32 0, ptr @mos7840_probe, ptr @mos7840_attach, ptr @mos7840_calc_num_ports, ptr null, ptr null, ptr @mos7840_port_probe, ptr @mos7840_port_remove, ptr null, ptr null, ptr null, ptr @mos7840_open, ptr @mos7840_close, ptr @mos7840_write, ptr @mos7840_write_room, ptr @mos7840_ioctl, ptr null, ptr null, ptr @mos7840_set_termios, ptr @mos7840_break, ptr @mos7840_chars_in_buffer, ptr null, ptr null, ptr @mos7840_throttle, ptr @mos7840_unthrottle, ptr @mos7840_tiocmget, ptr @mos7840_tiocmset, ptr null, ptr @usb_serial_generic_get_icount, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mos7840_bulk_in_callback, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Moschip 7840/7820 USB Serial Driver\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mos7840_attach.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mos7840_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/serial/mos7840.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Writing ZLP_REG5 failed status-0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@mos7840_attach.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 1, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ZLP_REG5 Writing success status%d\0A\00", [61 x i8] zeroinitializer }, align 32
@mos7840_set_reg_sync.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mos7840_set_reg_sync\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mos7840_set_reg_sync offset is %x, value %x\0A\00", [51 x i8] zeroinitializer }, align 32
@mos7840_calc_num_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 1507, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"missing endpoints\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mos7840_calc_num_ports\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mos7840_calc_num_ports._entry_ptr = internal global ptr @mos7840_calc_num_ports._entry, section ".printk_index", align 4
@mos7840_port_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 1, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mos7840_port_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mos7840_startup: configuring port %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&mos7840_port->pool_lock\00", [39 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.15, i8 1, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port->minor = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.16, i8 1, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mos7840_port->port_num = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.17, i8 1, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Reading ControlReg failed status-0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.18, i8 1, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ControlReg Reading success val is %x, status%d\0A\00", [48 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.19, i8 1, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Writing ControlReg failed(rx_disable) status-0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.20, i8 1, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ControlReg Writing success(rx_disable) status%d\0A\00", [47 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.21, i8 1, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Writing DCR0 failed status-0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.22, i8 1, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DCR0 Writing success status%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.23, i8 1, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Writing DCR1 failed status-0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.24, i8 1, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DCR1 Writing success status%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.25, i8 1, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Writing DCR2 failed status-0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.26, i8 1, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DCR2 Writing success status%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.27, i8 1, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Writing CLK_START_VALUE_REGISTER failed status-0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.28, i8 1, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CLK_START_VALUE_REGISTER Writing success status%d\0A\00", [45 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.29, i8 1, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Writing CLK_MULTI_REGISTER failed status-0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.30, i8 1, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CLK_MULTI_REGISTER Writing success status%d\0A\00", [51 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.31, i8 1, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Writing SCRATCH_PAD_REGISTER failed status-0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.32, i8 1, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SCRATCH_PAD_REGISTER Writing success status%d\0A\00", [49 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.33, i8 1, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ZLIP offset %x\0A\00", [16 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.34, i8 1, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Writing ZLP_REG%d failed status-0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.35, i8 1, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ZLP_REG%d Writing success status%d\0A\00", [60 x i8] zeroinitializer }, align 32
@mos7840_port_probe.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.33, i8 1, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mos7840_port_probe.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.34, i8 1, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mos7840_port_probe.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.35, i8 1, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mos7840_port_probe.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&mos7840_port->led_timer1)\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mos7840_port_probe.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&mos7840_port->led_timer2)\00", [36 x i8] zeroinitializer }, align 32
@mos7840_dump_serial_port.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mos7840_dump_serial_port\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SpRegOffset is %2x\0A\00", [44 x i8] zeroinitializer }, align 32
@mos7840_dump_serial_port.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.42, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ControlRegOffset is %2x\0A\00", [39 x i8] zeroinitializer }, align 32
@mos7840_dump_serial_port.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.43, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DCRRegOffset is %2x\0A\00", [43 x i8] zeroinitializer }, align 32
@mos7840_get_reg_sync.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mos7840_get_reg_sync\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s offset is %x, return val %x\0A\00", [32 x i8] zeroinitializer }, align 32
@mos7840_set_uart_reg.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mos7840_set_uart_reg\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s application number is %x\0A\00", [35 x i8] zeroinitializer }, align 32
@mos7840_set_led_callback.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mos7840_set_led_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - urb shutting down: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mos7840_set_led_callback.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.50, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - nonzero urb status: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mos7840_open\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Reading Spreg failed\0A\00", [42 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.53, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"writing Spreg failed\0A\00", [42 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.53, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mos7840_open.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.54, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Reading Controlreg failed\0A\00", [37 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.55, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"writing Controlreg failed\0A\00", [37 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.56, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disabling interrupts failed\0A\00", [35 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.57, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Writing FIFO_CONTROL_REGISTER  failed\0A\00", [57 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.57, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mos7840_open.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.58, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port number is %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.59, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"minor number is %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.60, i8 0, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bulkin endpoint is %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.61, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BulkOut endpoint is %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.62, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Interrupt endpoint is %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.63, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"port's number in the device is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mos7840_open.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.64, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: bulkin endpoint is %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mos7840_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.51, ptr @.str.3, i32 706, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - Error %d submitting control urb\0A\00", [58 x i8] zeroinitializer }, align 32
@mos7840_open._entry_ptr = internal global ptr @mos7840_open._entry, section ".printk_index", align 4
@mos7840_get_uart_reg.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.47, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mos7840_get_uart_reg\00", [43 x i8] zeroinitializer }, align 32
@mos7840_write.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mos7840_write\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"URB:%d\0A\00", [24 x i8] zeroinitializer }, align 32
@mos7840_write.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.3, ptr @.str.69, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - no more free urbs\0A\00", [40 x i8] zeroinitializer }, align 32
@mos7840_write.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.3, ptr @.str.70, i8 0, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bulkout endpoint is %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mos7840_write.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mos7840_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.3, i32 918, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s - usb_submit_urb(write bulk) failed with status = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mos7840_write._entry_ptr = internal global ptr @mos7840_write._entry, section ".printk_index", align 4
@mos7840_write.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.3, ptr @.str.72, i8 0, i8 -25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"icount.tx is %d:\0A\00", [46 x i8] zeroinitializer }, align 32
@mos7840_bulk_out_data_callback.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mos7840_bulk_out_data_callback\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nonzero write bulk status received:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mos7840_write_room.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mos7840_write_room\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - returns %u\0A\00", [47 x i8] zeroinitializer }, align 32
@mos7840_ioctl.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 1, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mos7840_ioctl\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s TIOCSERGETLSR\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mos7840_set_termios.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 1, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mos7840_set_termios\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"usb_submit_urb(read bulk) failed, status = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mos7840_change_port_settings.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mos7840_change_port_settings\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - parity = odd\0A\00", [45 x i8] zeroinitializer }, align 32
@mos7840_change_port_settings.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.86, i8 1, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - parity = even\0A\00", [44 x i8] zeroinitializer }, align 32
@mos7840_change_port_settings.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.87, i8 1, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - parity = none\0A\00", [44 x i8] zeroinitializer }, align 32
@mos7840_change_port_settings.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.88, i8 1, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - stop bits = 2\0A\00", [44 x i8] zeroinitializer }, align 32
@mos7840_change_port_settings.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.89, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - stop bits = 1\0A\00", [44 x i8] zeroinitializer }, align 32
@mos7840_change_port_settings.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.90, i8 1, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - mos7840_port->shadowLCR is %x\0A\00", [60 x i8] zeroinitializer }, align 32
@mos7840_change_port_settings.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.91, i8 1, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Picked default baud...\0A\00", [40 x i8] zeroinitializer }, align 32
@mos7840_change_port_settings.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.93, i8 1, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - baud rate = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mos7840_change_port_settings.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.83, i8 1, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mos7840_change_port_settings.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.94, i8 1, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - mos7840_port->shadowLCR is End %x\0A\00", [56 x i8] zeroinitializer }, align 32
@mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mos7840_send_cmd_write_baud_rate\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - baud = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.97, i8 1, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reading spreg failed in set_serial_baud\0A\00", [55 x i8] zeroinitializer }, align 32
@mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.98, i8 1, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Writing spreg failed in set_serial_baud\0A\00", [55 x i8] zeroinitializer }, align 32
@mos7840_send_cmd_write_baud_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.95, ptr @.str.3, i32 1158, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - bad baud rate\0A\00", [44 x i8] zeroinitializer }, align 32
@mos7840_send_cmd_write_baud_rate._entry_ptr = internal global ptr @mos7840_send_cmd_write_baud_rate._entry, section ".printk_index", align 4
@mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.100, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"set_serial_baud Value to write DLL is %x\0A\00", [54 x i8] zeroinitializer }, align 32
@mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.101, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"set_serial_baud Value to write DLM is %x\0A\00", [54 x i8] zeroinitializer }, align 32
@mos7840_calc_baud_rate_divisor.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.3, ptr @.str.103, i8 1, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mos7840_calc_baud_rate_divisor\00", [33 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s - %d\0A\00", [23 x i8] zeroinitializer }, align 32
@mos7840_break.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.105, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mos7840_break\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s mos7840_port->shadowLCR is %x\0A\00", [62 x i8] zeroinitializer }, align 32
@mos7840_chars_in_buffer.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.3, ptr @.str.76, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mos7840_chars_in_buffer\00", [40 x i8] zeroinitializer }, align 32
@mos7840_tiocmget.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.3, ptr @.str.108, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mos7840_tiocmget\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s - 0x%04X\0A\00", [19 x i8] zeroinitializer }, align 32
@mos7840_tiocmset.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.3, ptr @.str.110, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mos7840_tiocmset\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setting MODEM_CONTROL_REGISTER Failed\0A\00", [57 x i8] zeroinitializer }, align 32
@mos7840_bulk_in_callback.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mos7840_bulk_in_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nonzero read bulk status received: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mos7840_bulk_in_callback.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.113, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"icount.rx is %d:\0A\00", [46 x i8] zeroinitializer }, align 32
@mos7840_bulk_in_callback.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.114, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"usb_submit_urb(read bulk) failed, retval = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.116, ptr @.str.117, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.118 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1767, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1771, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 168, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [25 x i8] c"moschip7840_4port_device\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1738, i32 33 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1743, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1524, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1526, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 232, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1507, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1545, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1555, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1561, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1562, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1586, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1589, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1598, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1601, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1609, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1612, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1618, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1621, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1627, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1630, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1636, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1639, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1644, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1647, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1653, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1656, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1664, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1667, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1670, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1698, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1701, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 338, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 339, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 340, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 266, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 290, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 361, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 365, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 558, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 564, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 580, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 588, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 599, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 606, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 674, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 675, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 676, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 677, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 678, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 679, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 701, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 705, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 319, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 865, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 872, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 907, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [27 x i8] c"mos7840_write.__print_once\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 917, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 924, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 493, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 830, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1394, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 174, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1346, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1232, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1235, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1239, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1248, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1251, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1259, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1301, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1305, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1321, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1106, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1145, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1152, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1158, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1168, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1172, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1060, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 803, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 749, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1011, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 1044, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 441, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 454, i32 3 }
@___asan_gen_.480 = private constant [32 x i8] c"../drivers/usb/serial/mos7840.c\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 464, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 393, i32 2 }
@llvm.compiler.used = appending global [135 x ptr] [ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_mos7840__322_1771_usb_serial_module_init6, ptr @mos7840_calc_num_ports._entry, ptr @mos7840_calc_num_ports._entry_ptr, ptr @mos7840_open._entry, ptr @mos7840_open._entry_ptr, ptr @mos7840_send_cmd_write_baud_rate._entry, ptr @mos7840_send_cmd_write_baud_rate._entry_ptr, ptr @mos7840_write._entry, ptr @mos7840_write._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @moschip7840_4port_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mos7840_port_probe.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @mos7840_port_probe.__key.36, ptr @.str.37, ptr @mos7840_port_probe.__key.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @mos7840_write.__print_once, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moschip7840_4port_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7840_calc_num_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7840_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7840_port_probe.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7840_port_probe.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7840_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7840_write.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7840_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mos7840_send_cmd_write_baud_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7840_probe(ptr nocapture noundef %serial, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1) #11
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or6 = or i32 %shl.i, -2147483520
  %call7 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or6, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 7, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 5000) #8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i.i, align 8
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.else, label %if.end3.if.end15_crit_edge

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.else:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 1) #11
  %tobool.not.i = icmp eq ptr %call7.i.i24, null
  br i1 %tobool.not.i, label %if.else.mos7810_check.exit.thread_crit_edge, label %if.end.i

if.else.mos7810_check.exit.thread_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %mos7810_check.exit.thread

if.end.i:                                         ; preds = %if.else
  %11 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or3.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 768, i16 noundef zeroext 4, ptr noundef nonnull %call7.i.i24, i16 noundef zeroext 1, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.i = icmp eq i32 %call4.i, 1
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call7.i.i24 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call7.i.i24, align 8
  %phi.cast.i = zext i8 %16 to i16
  %phi.bo.i = or i16 %phi.cast.i, 768
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %mcr_data.0.i = phi i16 [ %phi.bo.i, %if.then5.i ], [ 768, %if.end.i.if.end6.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %if.end35.i.for.body.i_crit_edge, %if.end6.i
  %data.079.i = phi i16 [ 0, %if.end6.i ], [ %data.1.i, %if.end35.i.for.body.i_crit_edge ]
  %pass_count.078.i = phi i32 [ 0, %if.end6.i ], [ %inc.i, %if.end35.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serial, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i74.i = shl i32 %20, 8
  %or12.i = or i32 %shl.i74.i, -2147483648
  %shr.i = lshr i32 21930, %pass_count.078.i
  %shr.tr.i = trunc i32 %shr.i to i16
  %21 = shl nuw i16 %shr.tr.i, 1
  %22 = and i16 %21, 2
  %conv15.i = or i16 %22, 768
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or12.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv15.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %23 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serial, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i75.i = shl i32 %26, 8
  %or21.i = or i32 %shl.i75.i, -2147483520
  %call22.i = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or21.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 7, ptr noundef nonnull %call7.i.i24, i16 noundef zeroext 1, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22.i)
  %cmp23.i = icmp eq i32 %call22.i, 1
  br i1 %cmp23.i, label %if.then25.i, label %for.body.i.if.end27.i_crit_edge

for.body.i.if.end27.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then25.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call7.i.i24 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %call7.i.i24, align 8
  %conv26.i = zext i8 %28 to i16
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %for.body.i.if.end27.i_crit_edge
  %data.1.i = phi i16 [ %conv26.i, %if.then25.i ], [ %data.079.i, %for.body.i.if.end27.i_crit_edge ]
  %29 = lshr i16 %data.1.i, 1
  %30 = zext i16 %29 to i32
  %31 = xor i32 %shr.i, %30
  %xor.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool33.not.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool33.not.not.i, label %if.end27.i.mos7810_check.exit_crit_edge, label %if.end35.i

if.end27.i.mos7810_check.exit_crit_edge:          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mos7810_check.exit

if.end35.i:                                       ; preds = %if.end27.i
  %inc.i = add nuw nsw i32 %pass_count.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end35.i.mos7810_check.exit_crit_edge, label %if.end35.i.for.body.i_crit_edge

if.end35.i.for.body.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end35.i.mos7810_check.exit_crit_edge:          ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mos7810_check.exit

mos7810_check.exit:                               ; preds = %if.end35.i.mos7810_check.exit_crit_edge, %if.end27.i.mos7810_check.exit_crit_edge
  %pass_count.0.lcssa.i = phi i32 [ %pass_count.078.i, %if.end27.i.mos7810_check.exit_crit_edge ], [ 16, %if.end35.i.mos7810_check.exit_crit_edge ]
  %32 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %serial, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i76.i = shl i32 %35, 8
  %or40.i = or i32 %shl.i76.i, -2147483648
  %call44.i = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or40.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %mcr_data.0.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %pass_count.0.lcssa.i)
  %cmp45.i.not = icmp eq i32 %pass_count.0.lcssa.i, 16
  br i1 %cmp45.i.not, label %mos7810_check.exit.if.end15_crit_edge, label %mos7810_check.exit.mos7810_check.exit.thread_crit_edge

mos7810_check.exit.mos7810_check.exit.thread_crit_edge: ; preds = %mos7810_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mos7810_check.exit.thread

mos7810_check.exit.if.end15_crit_edge:            ; preds = %mos7810_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

mos7810_check.exit.thread:                        ; preds = %mos7810_check.exit.mos7810_check.exit.thread_crit_edge, %if.else.mos7810_check.exit.thread_crit_edge
  br label %if.end15

if.end15:                                         ; preds = %mos7810_check.exit.thread, %mos7810_check.exit.if.end15_crit_edge, %if.end3.if.end15_crit_edge
  %device_flags.0 = phi i32 [ 4, %if.end3.if.end15_crit_edge ], [ 2, %mos7810_check.exit.thread ], [ 9, %mos7810_check.exit.if.end15_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %out

out:                                              ; preds = %if.end15, %entry.out_crit_edge
  %device_flags.1 = phi i32 [ %1, %entry.out_crit_edge ], [ %device_flags.0, %if.end15 ]
  %36 = inttoptr i32 %device_flags.1 to ptr
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %37 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %private.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7840_attach(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %port = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_attach, %if.then.i)) #8
          to label %mos7840_set_reg_sync.exit [label %if.then.i], !srcloc !329

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i, ptr noundef nonnull @.str.7, i32 noundef 62, i32 noundef 15) #8
  br label %mos7840_set_reg_sync.exit

mos7840_set_reg_sync.exit:                        ; preds = %if.then.i, %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call9.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 15, i16 noundef zeroext 62, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp = icmp slt i32 %call9.i, 0
  br i1 %cmp, label %do.body, label %do.body6

do.body:                                          ; preds = %mos7840_set_reg_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_attach.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_attach, %if.then5)) #8
          to label %if.end22 [label %if.then5], !srcloc !329

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_attach.__UNIQUE_ID_ddebug295, ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call9.i) #8
  br label %if.end22

do.body6:                                         ; preds = %mos7840_set_reg_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_attach.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_attach, %if.then18)) #8
          to label %if.end22 [label %if.then18], !srcloc !329

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_attach.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %call9.i) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %do.body6, %if.then5, %do.body
  ret i32 %call9.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7840_calc_num_ports(ptr nocapture noundef readonly %serial, ptr nocapture noundef readonly %epds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, 7
  %3 = add nsw i32 %and, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %3)
  %4 = icmp ult i32 %3, -4
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %epds to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %epds, align 4
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp2 = icmp ugt i32 %and, %conv
  br i1 %cmp2, label %if.end.do.end_crit_edge, label %lor.lhs.false4

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false4:                                   ; preds = %if.end
  %num_bulk_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 1
  %7 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_bulk_out, align 1
  %conv5 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv5)
  %cmp6 = icmp ugt i32 %and, %conv5
  br i1 %cmp6, label %lor.lhs.false4.do.end_crit_edge, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %if.end.do.end_crit_edge
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %9 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %and, %lor.lhs.false4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7840_port_probe(ptr noundef %port) #2 align 64 {
entry:
  %Data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %Data) #8
  %5 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %Data, align 2, !annotation !330
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %6 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_number, align 4
  %conv = zext i8 %7 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !329

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 256) #11
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %port9 = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %port, ptr %port9, align 4
  %pool_lock = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %pool_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @mos7840_port_probe.__key, i16 noundef signext 3) #8
  %add = add nuw nsw i32 %conv, 1
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %call7.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then26)) #8
          to label %do.body31 [label %if.then26], !srcloc !329

if.then26:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %minor = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 3
  %11 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minor, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug298, ptr noundef %dev27, ptr noundef nonnull @.str.15, i32 noundef %12) #8
  br label %do.body31

do.body31:                                        ; preds = %if.then26, %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then43)) #8
          to label %do.end48 [label %if.then43], !srcloc !329

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %dev44 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev44, ptr noundef nonnull @.str.16, i32 noundef %14) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body31
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %do.end48.if.end75_crit_edge, label %if.else

do.end48.if.end75_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.else:                                          ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp55 = icmp eq i8 %18, 2
  %19 = trunc i32 %16 to i8
  %20 = add i8 %19, -2
  %sub.tr = select i1 %cmp55, i8 1, i8 %20
  %21 = shl i8 %sub.tr, 1
  %conv61 = add i8 %21, 8
  %conv67 = add i8 %21, 9
  %22 = mul i8 %sub.tr, 3
  %conv73 = add i8 %22, 22
  br label %if.end75

if.end75:                                         ; preds = %if.else, %do.end48.if.end75_crit_edge
  %conv61.sink = phi i8 [ %conv61, %if.else ], [ 0, %do.end48.if.end75_crit_edge ]
  %conv67.sink = phi i8 [ %conv67, %if.else ], [ 1, %do.end48.if.end75_crit_edge ]
  %conv73.sink = phi i8 [ %conv73, %if.else ], [ 4, %do.end48.if.end75_crit_edge ]
  %23 = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv61.sink, ptr %23, align 8
  %25 = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv67.sink, ptr %25, align 1
  %27 = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv73.sink, ptr %27, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_dump_serial_port.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then.i)) #8
          to label %do.body3.i [label %if.then.i], !srcloc !329

if.then.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %23, align 8
  %conv.i = zext i8 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_dump_serial_port.__UNIQUE_ID_ddebug242, ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef %conv.i) #8
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %if.end75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_dump_serial_port.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then15.i)) #8
          to label %do.body20.i [label %if.then15.i], !srcloc !329

if.then15.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev16.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %25, align 1
  %conv17.i = zext i8 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_dump_serial_port.__UNIQUE_ID_ddebug243, ptr noundef %dev16.i, ptr noundef nonnull @.str.42, i32 noundef %conv17.i) #8
  br label %do.body20.i

do.body20.i:                                      ; preds = %if.then15.i, %do.body3.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_dump_serial_port.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then32.i)) #8
          to label %mos7840_dump_serial_port.exit [label %if.then32.i], !srcloc !329

if.then32.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev33.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %27, align 2
  %conv34.i = zext i8 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_dump_serial_port.__UNIQUE_ID_ddebug244, ptr noundef %dev33.i, ptr noundef nonnull @.str.43, i32 noundef %conv34.i) #8
  br label %mos7840_dump_serial_port.exit

mos7840_dump_serial_port.exit:                    ; preds = %if.then32.i, %do.body20.i
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %25, align 1
  %conv77 = zext i8 %37 to i16
  %call78 = call fastcc i32 @mos7840_get_reg_sync(ptr noundef %port, i16 noundef zeroext %conv77, ptr noundef nonnull %Data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.body82, label %do.body100

do.body82:                                        ; preds = %mos7840_dump_serial_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then94)) #8
          to label %error [label %if.then94], !srcloc !329

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  %dev95 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug300, ptr noundef %dev95, ptr noundef nonnull @.str.17, i32 noundef %call78) #8
  br label %error

do.body100:                                       ; preds = %mos7840_dump_serial_port.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then112)) #8
          to label %if.end118 [label %if.then112], !srcloc !329

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  %dev113 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %38 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %Data, align 2
  %conv114 = zext i16 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev113, ptr noundef nonnull @.str.18, i32 noundef %conv114, i32 noundef %call78) #8
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %do.body100
  %40 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %Data, align 2
  %42 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %25, align 1
  %conv125 = zext i8 %43 to i16
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = and i16 %41, 243
  %49 = or i16 %48, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then.i793)) #8
          to label %mos7840_set_reg_sync.exit [label %if.then.i793], !srcloc !329

if.then.i793:                                     ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6.i = zext i8 %43 to i32
  %conv7.i = zext i16 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i, ptr noundef nonnull @.str.7, i32 noundef %conv6.i, i32 noundef %conv7.i) #8
  br label %mos7840_set_reg_sync.exit

mos7840_set_reg_sync.exit:                        ; preds = %if.then.i793, %if.end118
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %47, align 8
  %shl.i.i = shl i32 %51, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call9.i = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %49, i16 noundef zeroext %conv125, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp127 = icmp slt i32 %call9.i, 0
  br i1 %cmp127, label %do.body130, label %do.body148

do.body130:                                       ; preds = %mos7840_set_reg_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then142)) #8
          to label %error [label %if.then142], !srcloc !329

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  %dev143 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug302, ptr noundef %dev143, ptr noundef nonnull @.str.19, i32 noundef %call9.i) #8
  br label %error

do.body148:                                       ; preds = %mos7840_set_reg_sync.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then160)) #8
          to label %if.end165 [label %if.then160], !srcloc !329

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #10
  %dev161 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug303, ptr noundef %dev161, ptr noundef nonnull @.str.20, i32 noundef %call9.i) #8
  br label %if.end165

if.end165:                                        ; preds = %if.then160, %do.body148
  %52 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %Data, align 2
  %53 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %27, align 2
  %conv169 = zext i8 %54 to i16
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then.i796)) #8
          to label %mos7840_set_reg_sync.exit800 [label %if.then.i796], !srcloc !329

if.then.i796:                                     ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i794 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6.i795 = zext i8 %54 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i794, ptr noundef nonnull @.str.7, i32 noundef %conv6.i795, i32 noundef 1) #8
  br label %mos7840_set_reg_sync.exit800

mos7840_set_reg_sync.exit800:                     ; preds = %if.then.i796, %if.end165
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i797 = shl i32 %60, 8
  %or.i798 = or i32 %shl.i.i797, -2147483648
  %call9.i799 = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i798, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext %conv169, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i799)
  %cmp171 = icmp slt i32 %call9.i799, 0
  br i1 %cmp171, label %do.body174, label %do.body192

do.body174:                                       ; preds = %mos7840_set_reg_sync.exit800
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then186)) #8
          to label %error [label %if.then186], !srcloc !329

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #10
  %dev187 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug304, ptr noundef %dev187, ptr noundef nonnull @.str.21, i32 noundef %call9.i799) #8
  br label %error

do.body192:                                       ; preds = %mos7840_set_reg_sync.exit800
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then204)) #8
          to label %if.end209 [label %if.then204], !srcloc !329

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #10
  %dev205 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug305, ptr noundef %dev205, ptr noundef nonnull @.str.22, i32 noundef %call9.i799) #8
  br label %if.end209

if.end209:                                        ; preds = %if.then204, %do.body192
  %61 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %27, align 2
  %conv211 = zext i8 %62 to i16
  %add212 = add nuw nsw i16 %conv211, 1
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then.i803)) #8
          to label %mos7840_set_reg_sync.exit807 [label %if.then.i803], !srcloc !329

if.then.i803:                                     ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i801 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6.i802 = zext i16 %add212 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i801, ptr noundef nonnull @.str.7, i32 noundef %conv6.i802, i32 noundef 5) #8
  br label %mos7840_set_reg_sync.exit807

mos7840_set_reg_sync.exit807:                     ; preds = %if.then.i803, %if.end209
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i.i804 = shl i32 %68, 8
  %or.i805 = or i32 %shl.i.i804, -2147483648
  %call9.i806 = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or.i805, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext %add212, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i806)
  %cmp215 = icmp slt i32 %call9.i806, 0
  br i1 %cmp215, label %do.body218, label %do.body236

do.body218:                                       ; preds = %mos7840_set_reg_sync.exit807
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then230)) #8
          to label %error [label %if.then230], !srcloc !329

if.then230:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #10
  %dev231 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug306, ptr noundef %dev231, ptr noundef nonnull @.str.23, i32 noundef %call9.i806) #8
  br label %error

do.body236:                                       ; preds = %mos7840_set_reg_sync.exit807
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then248)) #8
          to label %if.end253 [label %if.then248], !srcloc !329

if.then248:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #10
  %dev249 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug307, ptr noundef %dev249, ptr noundef nonnull @.str.24, i32 noundef %call9.i806) #8
  br label %if.end253

if.end253:                                        ; preds = %if.then248, %do.body236
  %69 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 36, ptr %Data, align 2
  %70 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %27, align 2
  %conv255 = zext i8 %71 to i16
  %add256 = add nuw nsw i16 %conv255, 2
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %port, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then.i810)) #8
          to label %mos7840_set_reg_sync.exit814 [label %if.then.i810], !srcloc !329

if.then.i810:                                     ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i808 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6.i809 = zext i16 %add256 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i808, ptr noundef nonnull @.str.7, i32 noundef %conv6.i809, i32 noundef 36) #8
  br label %mos7840_set_reg_sync.exit814

mos7840_set_reg_sync.exit814:                     ; preds = %if.then.i810, %if.end253
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %shl.i.i811 = shl i32 %77, 8
  %or.i812 = or i32 %shl.i.i811, -2147483648
  %call9.i813 = tail call i32 @usb_control_msg(ptr noundef %75, i32 noundef %or.i812, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 36, i16 noundef zeroext %add256, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i813)
  %cmp259 = icmp slt i32 %call9.i813, 0
  br i1 %cmp259, label %do.body262, label %do.body280

do.body262:                                       ; preds = %mos7840_set_reg_sync.exit814
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then274)) #8
          to label %error [label %if.then274], !srcloc !329

if.then274:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #10
  %dev275 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug308, ptr noundef %dev275, ptr noundef nonnull @.str.25, i32 noundef %call9.i813) #8
  br label %error

do.body280:                                       ; preds = %mos7840_set_reg_sync.exit814
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then292)) #8
          to label %if.end297 [label %if.then292], !srcloc !329

if.then292:                                       ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #10
  %dev293 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug309, ptr noundef %dev293, ptr noundef nonnull @.str.26, i32 noundef %call9.i813) #8
  br label %if.end297

if.end297:                                        ; preds = %if.then292, %do.body280
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %port, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then.i816)) #8
          to label %mos7840_set_reg_sync.exit820 [label %if.then.i816], !srcloc !329

if.then.i816:                                     ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i815 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i815, ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef 0) #8
  br label %mos7840_set_reg_sync.exit820

mos7840_set_reg_sync.exit820:                     ; preds = %if.then.i816, %if.end297
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %shl.i.i817 = shl i32 %83, 8
  %or.i818 = or i32 %shl.i.i817, -2147483648
  %call9.i819 = tail call i32 @usb_control_msg(ptr noundef %81, i32 noundef %or.i818, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i819)
  %cmp299 = icmp slt i32 %call9.i819, 0
  br i1 %cmp299, label %do.body302, label %do.body320

do.body302:                                       ; preds = %mos7840_set_reg_sync.exit820
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then314)) #8
          to label %error [label %if.then314], !srcloc !329

if.then314:                                       ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #10
  %dev315 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug310, ptr noundef %dev315, ptr noundef nonnull @.str.27, i32 noundef %call9.i819) #8
  br label %error

do.body320:                                       ; preds = %mos7840_set_reg_sync.exit820
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then332)) #8
          to label %if.end337 [label %if.then332], !srcloc !329

if.then332:                                       ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #10
  %dev333 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug311, ptr noundef %dev333, ptr noundef nonnull @.str.28, i32 noundef %call9.i819) #8
  br label %if.end337

if.end337:                                        ; preds = %if.then332, %do.body320
  %84 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 32, ptr %Data, align 2
  %85 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %port, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then.i822)) #8
          to label %mos7840_set_reg_sync.exit826 [label %if.then.i822], !srcloc !329

if.then.i822:                                     ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i821 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i821, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 32) #8
  br label %mos7840_set_reg_sync.exit826

mos7840_set_reg_sync.exit826:                     ; preds = %if.then.i822, %if.end337
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  %shl.i.i823 = shl i32 %90, 8
  %or.i824 = or i32 %shl.i.i823, -2147483648
  %call9.i825 = tail call i32 @usb_control_msg(ptr noundef %88, i32 noundef %or.i824, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i825)
  %cmp339 = icmp slt i32 %call9.i825, 0
  br i1 %cmp339, label %do.body342, label %do.body360

do.body342:                                       ; preds = %mos7840_set_reg_sync.exit826
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then354)) #8
          to label %error [label %if.then354], !srcloc !329

if.then354:                                       ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #10
  %dev355 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug312, ptr noundef %dev355, ptr noundef nonnull @.str.29, i32 noundef %call9.i825) #8
  br label %error

do.body360:                                       ; preds = %mos7840_set_reg_sync.exit826
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then372)) #8
          to label %if.end377 [label %if.then372], !srcloc !329

if.then372:                                       ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #10
  %dev373 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug313, ptr noundef %dev373, ptr noundef nonnull @.str.30, i32 noundef %call9.i825) #8
  br label %if.end377

if.end377:                                        ; preds = %if.then372, %do.body360
  %91 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %port, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %num_ports.i = getelementptr inbounds %struct.usb_serial, ptr %92, i32 0, i32 6
  %95 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_ports.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %96)
  %cmp.i = icmp eq i8 %96, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end377.if.else.i_crit_edge

if.end377.if.else.i_crit_edge:                    ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end377
  %97 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %port_number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp7.not.i = icmp eq i8 %98, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end377.if.else.i_crit_edge
  %99 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %port_number, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %land.lhs.true.i.do.body.i_crit_edge
  %.sink42.i = phi i8 [ %100, %if.else.i ], [ %98, %land.lhs.true.i.do.body.i_crit_edge ]
  %.sink.i = phi i16 [ 256, %if.else.i ], [ 512, %land.lhs.true.i.do.body.i_crit_edge ]
  %conv11.i = zext i8 %.sink42.i to i16
  %add.i = shl nuw i16 %conv11.i, 8
  %shl.i = add i16 %add.i, %.sink.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then24.i)) #8
          to label %mos7840_set_uart_reg.exit [label %if.then24.i], !srcloc !329

if.then24.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i = zext i16 %shl.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i) #8
  br label %mos7840_set_uart_reg.exit

mos7840_set_uart_reg.exit:                        ; preds = %if.then24.i, %do.body.i
  %101 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %94, align 8
  %shl.i.i827 = shl i32 %102, 8
  %or29.i = or i32 %shl.i.i827, -2147483648
  %call30.i = tail call i32 @usb_control_msg(ptr noundef %94, i32 noundef %or29.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %shl.i, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp379 = icmp slt i32 %call30.i, 0
  br i1 %cmp379, label %do.body382, label %do.body400

do.body382:                                       ; preds = %mos7840_set_uart_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then394)) #8
          to label %error [label %if.then394], !srcloc !329

if.then394:                                       ; preds = %do.body382
  call void @__sanitizer_cov_trace_pc() #10
  %dev395 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug314, ptr noundef %dev395, ptr noundef nonnull @.str.31, i32 noundef %call30.i) #8
  br label %error

do.body400:                                       ; preds = %mos7840_set_uart_reg.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then412)) #8
          to label %if.end417 [label %if.then412], !srcloc !329

if.then412:                                       ; preds = %do.body400
  call void @__sanitizer_cov_trace_pc() #10
  %dev413 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug315, ptr noundef %dev413, ptr noundef nonnull @.str.32, i32 noundef %call30.i) #8
  br label %if.end417

if.end417:                                        ; preds = %if.then412, %do.body400
  %103 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp419.not = icmp eq i32 %104, 1
  br i1 %cmp419.not, label %if.end417.if.else496_crit_edge, label %land.lhs.true

if.end417.if.else496_crit_edge:                   ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else496

land.lhs.true:                                    ; preds = %if.end417
  %num_ports421 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 6
  %105 = ptrtoint ptr %num_ports421 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %num_ports421, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %106)
  %cmp423 = icmp eq i8 %106, 2
  br i1 %cmp423, label %if.then425, label %land.lhs.true.if.else496_crit_edge

land.lhs.true.if.else496_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else496

if.then425:                                       ; preds = %land.lhs.true
  %107 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 255, ptr %Data, align 2
  %108 = trunc i32 %104 to i16
  %conv430 = add i16 %108, 58
  %call431 = tail call fastcc i32 @mos7840_set_reg_sync(ptr noundef %port, i16 noundef zeroext %conv430, i16 noundef zeroext 255)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then444)) #8
          to label %do.end454 [label %if.then444], !srcloc !329

if.then444:                                       ; preds = %if.then425
  call void @__sanitizer_cov_trace_pc() #10
  %dev445 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %109 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %call7.i.i, align 8
  %conv450 = add i32 %110, 58
  %conv451 = and i32 %conv450, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug316, ptr noundef %dev445, ptr noundef nonnull @.str.33, i32 noundef %conv451) #8
  br label %do.end454

do.end454:                                        ; preds = %if.then444, %if.then425
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call431)
  %cmp455 = icmp slt i32 %call431, 0
  br i1 %cmp455, label %do.body458, label %do.body477

do.body458:                                       ; preds = %do.end454
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then470)) #8
          to label %error [label %if.then470], !srcloc !329

if.then470:                                       ; preds = %do.body458
  call void @__sanitizer_cov_trace_pc() #10
  %dev471 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %add472 = add nuw nsw i32 %conv, 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug317, ptr noundef %dev471, ptr noundef nonnull @.str.34, i32 noundef %add472, i32 noundef %call431) #8
  br label %error

do.body477:                                       ; preds = %do.end454
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then489)) #8
          to label %if.end569 [label %if.then489], !srcloc !329

if.then489:                                       ; preds = %do.body477
  call void @__sanitizer_cov_trace_pc() #10
  %dev490 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %add491 = add nuw nsw i32 %conv, 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug318, ptr noundef %dev490, ptr noundef nonnull @.str.35, i32 noundef %add491, i32 noundef %call431) #8
  br label %if.end569

if.else496:                                       ; preds = %land.lhs.true.if.else496_crit_edge, %if.end417.if.else496_crit_edge
  %111 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 255, ptr %Data, align 2
  %112 = trunc i32 %104 to i16
  %conv502 = add i16 %112, 57
  %call503 = tail call fastcc i32 @mos7840_set_reg_sync(ptr noundef %port, i16 noundef zeroext %conv502, i16 noundef zeroext 255)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then516)) #8
          to label %do.end527 [label %if.then516], !srcloc !329

if.then516:                                       ; preds = %if.else496
  call void @__sanitizer_cov_trace_pc() #10
  %dev517 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %113 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %call7.i.i, align 8
  %conv523 = add i32 %114, 57
  %conv524 = and i32 %conv523, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug319, ptr noundef %dev517, ptr noundef nonnull @.str.33, i32 noundef %conv524) #8
  br label %do.end527

do.end527:                                        ; preds = %if.then516, %if.else496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call503)
  %cmp528 = icmp slt i32 %call503, 0
  br i1 %cmp528, label %do.body531, label %do.body550

do.body531:                                       ; preds = %do.end527
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then543)) #8
          to label %error [label %if.then543], !srcloc !329

if.then543:                                       ; preds = %do.body531
  call void @__sanitizer_cov_trace_pc() #10
  %dev544 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug320, ptr noundef %dev544, ptr noundef nonnull @.str.34, i32 noundef %add, i32 noundef %call503) #8
  br label %error

do.body550:                                       ; preds = %do.end527
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_port_probe.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_port_probe, %if.then562)) #8
          to label %if.end569 [label %if.then562], !srcloc !329

if.then562:                                       ; preds = %do.body550
  call void @__sanitizer_cov_trace_pc() #10
  %dev563 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_port_probe.__UNIQUE_ID_ddebug321, ptr noundef %dev563, ptr noundef nonnull @.str.35, i32 noundef %add, i32 noundef %call503) #8
  br label %if.end569

if.end569:                                        ; preds = %if.then562, %do.body550, %if.then489, %do.body477
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool570.not = icmp eq i32 %and, 0
  %has_led = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 12
  %and.lobit = lshr exact i32 %and, 3
  %115 = trunc i32 %and.lobit to i8
  %116 = ptrtoint ptr %has_led to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %has_led, align 1
  br i1 %tobool570.not, label %if.end569.cleanup_crit_edge, label %if.then574

if.end569.cleanup_crit_edge:                      ; preds = %if.end569
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then574:                                       ; preds = %if.end569
  %call575 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %led_urb = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 15
  %117 = ptrtoint ptr %led_urb to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call575, ptr %led_urb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %118 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3264, i32 noundef 8) #11
  %led_dr = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 16
  %119 = ptrtoint ptr %led_dr to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call7.i, ptr %led_dr, align 8
  %120 = ptrtoint ptr %led_urb to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %led_urb, align 4
  %tobool578.not = icmp eq ptr %121, null
  %tobool580.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool578.not, i1 true, i1 %tobool580.not
  br i1 %or.cond, label %if.then574.error_crit_edge, label %do.body583

if.then574.error_crit_edge:                       ; preds = %if.then574
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body583:                                       ; preds = %if.then574
  call void @__sanitizer_cov_trace_pc() #10
  %led_timer1 = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %led_timer1, ptr noundef nonnull @mos7840_led_off, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @mos7840_port_probe.__key.36) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %122 = load volatile i32, ptr @jiffies, align 128
  %add587 = add i32 %122, 50
  %expires = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 13, i32 1
  %123 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add587, ptr %expires, align 4
  %led_timer2 = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 14
  tail call void @init_timer_key(ptr noundef %led_timer2, ptr noundef nonnull @mos7840_led_flag_off, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @mos7840_port_probe.__key.38) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %124 = load volatile i32, ptr @jiffies, align 128
  %add593 = add i32 %124, 50
  %expires595 = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 14, i32 1
  %125 = ptrtoint ptr %expires595 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add593, ptr %expires595, align 4
  tail call fastcc void @mos7840_set_led_sync(ptr noundef %port)
  br label %cleanup

error:                                            ; preds = %if.then574.error_crit_edge, %if.then543, %do.body531, %if.then470, %do.body458, %if.then394, %do.body382, %if.then354, %do.body342, %if.then314, %do.body302, %if.then274, %do.body262, %if.then230, %do.body218, %if.then186, %do.body174, %if.then142, %do.body130, %if.then94, %do.body82
  %status.0 = phi i32 [ %call78, %if.then94 ], [ %call9.i, %if.then142 ], [ %call9.i799, %if.then186 ], [ %call9.i806, %if.then230 ], [ %call9.i813, %if.then274 ], [ %call9.i819, %if.then314 ], [ %call9.i825, %if.then354 ], [ %call30.i, %if.then394 ], [ %call431, %if.then470 ], [ %call503, %if.then543 ], [ -12, %if.then574.error_crit_edge ], [ %call78, %do.body82 ], [ %call9.i, %do.body130 ], [ %call9.i799, %do.body174 ], [ %call9.i806, %do.body218 ], [ %call9.i813, %do.body262 ], [ %call9.i819, %do.body302 ], [ %call9.i825, %do.body342 ], [ %call30.i, %do.body382 ], [ %call431, %do.body458 ], [ %call503, %do.body531 ]
  %led_dr597 = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 16
  %126 = ptrtoint ptr %led_dr597 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %led_dr597, align 8
  tail call void @kfree(ptr noundef %127) #8
  %led_urb598 = getelementptr inbounds %struct.moschip_port, ptr %call7.i.i, i32 0, i32 15
  %128 = ptrtoint ptr %led_urb598 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %led_urb598, align 4
  tail call void @usb_free_urb(ptr noundef %129) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %do.body583, %if.end569.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %error ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %do.body583 ], [ 0, %if.end569.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %Data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7840_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %has_led = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %has_led to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_led, align 1, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 768, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %led_timer1 = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 13
  %call1 = tail call i32 @del_timer_sync(ptr noundef %led_timer1) #8
  %led_timer2 = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 14
  %call2 = tail call i32 @del_timer_sync(ptr noundef %led_timer2) #8
  %led_urb = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %led_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %led_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #8
  %12 = ptrtoint ptr %led_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %led_urb, align 4
  tail call void @usb_free_urb(ptr noundef %13) #8
  %led_dr = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %led_dr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %led_dr, align 4
  tail call void @kfree(ptr noundef %15) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7840_open(ptr nocapture noundef readnone %tty, ptr noundef %port) #2 align 64 {
entry:
  %Data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %Data) #8
  %4 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %Data, align 2, !annotation !330
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %7 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_urb, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pipe, align 4
  %call2 = tail call i32 @usb_clear_halt(ptr noundef %6, i32 noundef %10) #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %13 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_urb, align 4
  %pipe4 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %pipe4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipe4, align 4
  %call5 = tail call i32 @usb_clear_halt(ptr noundef %12, i32 noundef %16) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %j.0854 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %arrayidx = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 %j.0854
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call6, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 32) #11
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %transfer_buffer, align 4
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_free_urb(ptr noundef nonnull %call6) #8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0854, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %21 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %Data, align 2
  %SpRegOffset = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %SpRegOffset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %SpRegOffset, align 4
  %conv = zext i8 %23 to i16
  %call14 = call fastcc i32 @mos7840_get_reg_sync(ptr noundef %port, i16 noundef zeroext %conv, ptr noundef nonnull %Data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.body, label %if.end25

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then22)) #8
          to label %err [label %if.then22], !srcloc !329

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug251, ptr noundef %dev23, ptr noundef nonnull @.str.52) #8
  br label %err

if.end25:                                         ; preds = %for.end
  %24 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %Data, align 2
  %26 = or i16 %25, 128
  store i16 %26, ptr %Data, align 2
  %27 = ptrtoint ptr %SpRegOffset to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %SpRegOffset, align 4
  %conv29 = zext i8 %28 to i16
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = and i16 %26, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then.i)) #8
          to label %mos7840_set_reg_sync.exit [label %if.then.i], !srcloc !329

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6.i = zext i8 %28 to i32
  %conv7.i = zext i16 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i, ptr noundef nonnull @.str.7, i32 noundef %conv6.i, i32 noundef %conv7.i) #8
  br label %mos7840_set_reg_sync.exit

mos7840_set_reg_sync.exit:                        ; preds = %if.then.i, %if.end25
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %32, align 8
  %shl.i.i = shl i32 %35, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call9.i = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %33, i16 noundef zeroext %conv29, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp31 = icmp slt i32 %call9.i, 0
  br i1 %cmp31, label %do.body34, label %if.end51

do.body34:                                        ; preds = %mos7840_set_reg_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then46)) #8
          to label %err [label %if.then46], !srcloc !329

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %dev47 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug252, ptr noundef %dev47, ptr noundef nonnull @.str.53) #8
  br label %err

if.end51:                                         ; preds = %mos7840_set_reg_sync.exit
  %36 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %Data, align 2
  %38 = and i16 %37, -129
  store i16 %38, ptr %Data, align 2
  %39 = ptrtoint ptr %SpRegOffset to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %SpRegOffset, align 4
  %conv55 = zext i8 %40 to i16
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = and i16 %37, 127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then.i596)) #8
          to label %mos7840_set_reg_sync.exit600 [label %if.then.i596], !srcloc !329

if.then.i596:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i593 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6.i594 = zext i8 %40 to i32
  %conv7.i595 = zext i16 %45 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i593, ptr noundef nonnull @.str.7, i32 noundef %conv6.i594, i32 noundef %conv7.i595) #8
  br label %mos7840_set_reg_sync.exit600

mos7840_set_reg_sync.exit600:                     ; preds = %if.then.i596, %if.end51
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %44, align 8
  %shl.i.i597 = shl i32 %47, 8
  %or.i598 = or i32 %shl.i.i597, -2147483648
  %call9.i599 = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i598, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %45, i16 noundef zeroext %conv55, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i599)
  %cmp57 = icmp slt i32 %call9.i599, 0
  br i1 %cmp57, label %do.body60, label %if.end77

do.body60:                                        ; preds = %mos7840_set_reg_sync.exit600
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then72)) #8
          to label %err [label %if.then72], !srcloc !329

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  %dev73 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug253, ptr noundef %dev73, ptr noundef nonnull @.str.53) #8
  br label %err

if.end77:                                         ; preds = %mos7840_set_reg_sync.exit600
  %48 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %Data, align 2
  %ControlRegOffset = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %ControlRegOffset to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ControlRegOffset, align 1
  %conv78 = zext i8 %50 to i16
  %call79 = call fastcc i32 @mos7840_get_reg_sync(ptr noundef %port, i16 noundef zeroext %conv78, ptr noundef nonnull %Data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.body83, label %if.end100

do.body83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then95)) #8
          to label %err [label %if.then95], !srcloc !329

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #10
  %dev96 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug254, ptr noundef %dev96, ptr noundef nonnull @.str.54) #8
  br label %err

if.end100:                                        ; preds = %if.end77
  %51 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %Data, align 2
  %53 = or i16 %52, 40
  store i16 %53, ptr %Data, align 2
  %54 = ptrtoint ptr %ControlRegOffset to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ControlRegOffset, align 1
  %conv108 = zext i8 %55 to i16
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = and i16 %53, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then.i604)) #8
          to label %mos7840_set_reg_sync.exit608 [label %if.then.i604], !srcloc !329

if.then.i604:                                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i601 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6.i602 = zext i8 %55 to i32
  %conv7.i603 = zext i16 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i601, ptr noundef nonnull @.str.7, i32 noundef %conv6.i602, i32 noundef %conv7.i603) #8
  br label %mos7840_set_reg_sync.exit608

mos7840_set_reg_sync.exit608:                     ; preds = %if.then.i604, %if.end100
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %59, align 8
  %shl.i.i605 = shl i32 %62, 8
  %or.i606 = or i32 %shl.i.i605, -2147483648
  %call9.i607 = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i606, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %60, i16 noundef zeroext %conv108, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i607)
  %cmp110 = icmp slt i32 %call9.i607, 0
  br i1 %cmp110, label %do.body113, label %if.end130

do.body113:                                       ; preds = %mos7840_set_reg_sync.exit608
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then125)) #8
          to label %err [label %if.then125], !srcloc !329

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  %dev126 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug255, ptr noundef %dev126, ptr noundef nonnull @.str.55) #8
  br label %err

if.end130:                                        ; preds = %mos7840_set_reg_sync.exit608
  %63 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %Data, align 2
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %num_ports.i = getelementptr inbounds %struct.usb_serial, ptr %65, i32 0, i32 6
  %68 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_ports.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp.i = icmp eq i8 %69, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end130.if.else.i_crit_edge

if.end130.if.else.i_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end130
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %70 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %port_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp7.not.i = icmp eq i8 %71, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end130.if.else.i_crit_edge
  %port_number14.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %72 = ptrtoint ptr %port_number14.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %port_number14.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %land.lhs.true.i.do.body.i_crit_edge
  %.sink42.i = phi i8 [ %73, %if.else.i ], [ %71, %land.lhs.true.i.do.body.i_crit_edge ]
  %.sink.i = phi i16 [ 256, %if.else.i ], [ 512, %land.lhs.true.i.do.body.i_crit_edge ]
  %conv11.i = zext i8 %.sink42.i to i16
  %add.i = shl nuw i16 %conv11.i, 8
  %shl.i = add i16 %add.i, %.sink.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then24.i)) #8
          to label %mos7840_set_uart_reg.exit [label %if.then24.i], !srcloc !329

if.then24.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i = zext i16 %shl.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i) #8
  br label %mos7840_set_uart_reg.exit

mos7840_set_uart_reg.exit:                        ; preds = %if.then24.i, %do.body.i
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %67, align 8
  %shl.i.i609 = shl i32 %75, 8
  %or29.i = or i32 %shl.i.i609, -2147483648
  %call30.i = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or29.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %shl.i, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp132 = icmp slt i32 %call30.i, 0
  br i1 %cmp132, label %do.body135, label %if.end152

do.body135:                                       ; preds = %mos7840_set_uart_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then147)) #8
          to label %err [label %if.then147], !srcloc !329

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #10
  %dev148 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug256, ptr noundef %dev148, ptr noundef nonnull @.str.56) #8
  br label %err

if.end152:                                        ; preds = %mos7840_set_uart_reg.exit
  %76 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %Data, align 2
  %77 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %port, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %num_ports.i610 = getelementptr inbounds %struct.usb_serial, ptr %78, i32 0, i32 6
  %81 = ptrtoint ptr %num_ports.i610 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_ports.i610, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp.i611 = icmp eq i8 %82, 2
  br i1 %cmp.i611, label %land.lhs.true.i614, label %if.end152.if.else.i616_crit_edge

if.end152.if.else.i616_crit_edge:                 ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i616

land.lhs.true.i614:                               ; preds = %if.end152
  %port_number.i612 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %83 = ptrtoint ptr %port_number.i612 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %port_number.i612, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp7.not.i613 = icmp eq i8 %84, 0
  br i1 %cmp7.not.i613, label %land.lhs.true.i614.if.else.i616_crit_edge, label %land.lhs.true.i614.do.body.i622_crit_edge

land.lhs.true.i614.do.body.i622_crit_edge:        ; preds = %land.lhs.true.i614
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i622

land.lhs.true.i614.if.else.i616_crit_edge:        ; preds = %land.lhs.true.i614
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i616

if.else.i616:                                     ; preds = %land.lhs.true.i614.if.else.i616_crit_edge, %if.end152.if.else.i616_crit_edge
  %port_number14.i615 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %85 = ptrtoint ptr %port_number14.i615 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %port_number14.i615, align 4
  br label %do.body.i622

do.body.i622:                                     ; preds = %if.else.i616, %land.lhs.true.i614.do.body.i622_crit_edge
  %.sink42.i617 = phi i8 [ %86, %if.else.i616 ], [ %84, %land.lhs.true.i614.do.body.i622_crit_edge ]
  %.sink.i618 = phi i16 [ 256, %if.else.i616 ], [ 512, %land.lhs.true.i614.do.body.i622_crit_edge ]
  %conv11.i619 = zext i8 %.sink42.i617 to i16
  %add.i620 = shl nuw i16 %conv11.i619, 8
  %shl.i621 = add i16 %add.i620, %.sink.i618
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then24.i625)) #8
          to label %mos7840_set_uart_reg.exit629 [label %if.then24.i625], !srcloc !329

if.then24.i625:                                   ; preds = %do.body.i622
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i623 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i624 = zext i16 %shl.i621 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i623, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i624) #8
  br label %mos7840_set_uart_reg.exit629

mos7840_set_uart_reg.exit629:                     ; preds = %if.then24.i625, %do.body.i622
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %80, align 8
  %shl.i.i626 = shl i32 %88, 8
  %or29.i627 = or i32 %shl.i.i626, -2147483648
  %call30.i628 = tail call i32 @usb_control_msg(ptr noundef %80, i32 noundef %or29.i627, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %shl.i621, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i628)
  %cmp154 = icmp slt i32 %call30.i628, 0
  br i1 %cmp154, label %do.body157, label %if.end174

do.body157:                                       ; preds = %mos7840_set_uart_reg.exit629
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then169)) #8
          to label %err [label %if.then169], !srcloc !329

if.then169:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #10
  %dev170 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug257, ptr noundef %dev170, ptr noundef nonnull @.str.57) #8
  br label %err

if.end174:                                        ; preds = %mos7840_set_uart_reg.exit629
  %89 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 207, ptr %Data, align 2
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %port, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %num_ports.i630 = getelementptr inbounds %struct.usb_serial, ptr %91, i32 0, i32 6
  %94 = ptrtoint ptr %num_ports.i630 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %num_ports.i630, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %cmp.i631 = icmp eq i8 %95, 2
  br i1 %cmp.i631, label %land.lhs.true.i634, label %if.end174.if.else.i636_crit_edge

if.end174.if.else.i636_crit_edge:                 ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i636

land.lhs.true.i634:                               ; preds = %if.end174
  %port_number.i632 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %96 = ptrtoint ptr %port_number.i632 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %port_number.i632, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp7.not.i633 = icmp eq i8 %97, 0
  br i1 %cmp7.not.i633, label %land.lhs.true.i634.if.else.i636_crit_edge, label %land.lhs.true.i634.do.body.i642_crit_edge

land.lhs.true.i634.do.body.i642_crit_edge:        ; preds = %land.lhs.true.i634
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i642

land.lhs.true.i634.if.else.i636_crit_edge:        ; preds = %land.lhs.true.i634
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i636

if.else.i636:                                     ; preds = %land.lhs.true.i634.if.else.i636_crit_edge, %if.end174.if.else.i636_crit_edge
  %port_number14.i635 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %98 = ptrtoint ptr %port_number14.i635 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %port_number14.i635, align 4
  br label %do.body.i642

do.body.i642:                                     ; preds = %if.else.i636, %land.lhs.true.i634.do.body.i642_crit_edge
  %.sink42.i637 = phi i8 [ %99, %if.else.i636 ], [ %97, %land.lhs.true.i634.do.body.i642_crit_edge ]
  %.sink.i638 = phi i16 [ 256, %if.else.i636 ], [ 512, %land.lhs.true.i634.do.body.i642_crit_edge ]
  %conv11.i639 = zext i8 %.sink42.i637 to i16
  %add.i640 = shl nuw i16 %conv11.i639, 8
  %shl.i641 = add i16 %add.i640, %.sink.i638
  %val.addr.0.i = or i16 %shl.i641, 207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then24.i645)) #8
          to label %mos7840_set_uart_reg.exit649 [label %if.then24.i645], !srcloc !329

if.then24.i645:                                   ; preds = %do.body.i642
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i643 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i644 = zext i16 %val.addr.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i643, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i644) #8
  br label %mos7840_set_uart_reg.exit649

mos7840_set_uart_reg.exit649:                     ; preds = %if.then24.i645, %do.body.i642
  %100 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %93, align 8
  %shl.i.i646 = shl i32 %101, 8
  %or29.i647 = or i32 %shl.i.i646, -2147483648
  %call30.i648 = tail call i32 @usb_control_msg(ptr noundef %93, i32 noundef %or29.i647, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i648)
  %cmp176 = icmp slt i32 %call30.i648, 0
  br i1 %cmp176, label %do.body179, label %if.end196

do.body179:                                       ; preds = %mos7840_set_uart_reg.exit649
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then191)) #8
          to label %err [label %if.then191], !srcloc !329

if.then191:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #10
  %dev192 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug258, ptr noundef %dev192, ptr noundef nonnull @.str.57) #8
  br label %err

if.end196:                                        ; preds = %mos7840_set_uart_reg.exit649
  %102 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 3, ptr %Data, align 2
  %103 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %port, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %num_ports.i650 = getelementptr inbounds %struct.usb_serial, ptr %104, i32 0, i32 6
  %107 = ptrtoint ptr %num_ports.i650 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %num_ports.i650, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %108)
  %cmp.i651 = icmp eq i8 %108, 2
  br i1 %cmp.i651, label %land.lhs.true.i654, label %if.end196.if.else.i656_crit_edge

if.end196.if.else.i656_crit_edge:                 ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i656

land.lhs.true.i654:                               ; preds = %if.end196
  %port_number.i652 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %109 = ptrtoint ptr %port_number.i652 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %port_number.i652, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp7.not.i653 = icmp eq i8 %110, 0
  br i1 %cmp7.not.i653, label %land.lhs.true.i654.if.else.i656_crit_edge, label %land.lhs.true.i654.do.body.i663_crit_edge

land.lhs.true.i654.do.body.i663_crit_edge:        ; preds = %land.lhs.true.i654
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i663

land.lhs.true.i654.if.else.i656_crit_edge:        ; preds = %land.lhs.true.i654
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i656

if.else.i656:                                     ; preds = %land.lhs.true.i654.if.else.i656_crit_edge, %if.end196.if.else.i656_crit_edge
  %port_number14.i655 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %111 = ptrtoint ptr %port_number14.i655 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %port_number14.i655, align 4
  br label %do.body.i663

do.body.i663:                                     ; preds = %if.else.i656, %land.lhs.true.i654.do.body.i663_crit_edge
  %.sink42.i657 = phi i8 [ %112, %if.else.i656 ], [ %110, %land.lhs.true.i654.do.body.i663_crit_edge ]
  %.sink.i658 = phi i16 [ 256, %if.else.i656 ], [ 512, %land.lhs.true.i654.do.body.i663_crit_edge ]
  %conv11.i659 = zext i8 %.sink42.i657 to i16
  %add.i660 = shl nuw i16 %conv11.i659, 8
  %shl.i661 = add i16 %add.i660, %.sink.i658
  %val.addr.0.i662 = or i16 %shl.i661, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then24.i666)) #8
          to label %mos7840_set_uart_reg.exit670 [label %if.then24.i666], !srcloc !329

if.then24.i666:                                   ; preds = %do.body.i663
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i664 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i665 = zext i16 %val.addr.0.i662 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i664, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i665) #8
  br label %mos7840_set_uart_reg.exit670

mos7840_set_uart_reg.exit670:                     ; preds = %if.then24.i666, %do.body.i663
  %113 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %106, align 8
  %shl.i.i667 = shl i32 %114, 8
  %or29.i668 = or i32 %shl.i.i667, -2147483648
  %call30.i669 = tail call i32 @usb_control_msg(ptr noundef %106, i32 noundef %or29.i668, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i662, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %115 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %Data, align 2
  %conv198 = trunc i16 %116 to i8
  %shadowLCR = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 2
  %117 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv198, ptr %shadowLCR, align 4
  store i16 11, ptr %Data, align 2
  %118 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %port, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %num_ports.i671 = getelementptr inbounds %struct.usb_serial, ptr %119, i32 0, i32 6
  %122 = ptrtoint ptr %num_ports.i671 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %num_ports.i671, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %123)
  %cmp.i672 = icmp eq i8 %123, 2
  br i1 %cmp.i672, label %land.lhs.true.i675, label %mos7840_set_uart_reg.exit670.if.else.i677_crit_edge

mos7840_set_uart_reg.exit670.if.else.i677_crit_edge: ; preds = %mos7840_set_uart_reg.exit670
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i677

land.lhs.true.i675:                               ; preds = %mos7840_set_uart_reg.exit670
  %port_number.i673 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %124 = ptrtoint ptr %port_number.i673 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %port_number.i673, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp7.not.i674 = icmp eq i8 %125, 0
  br i1 %cmp7.not.i674, label %land.lhs.true.i675.if.else.i677_crit_edge, label %land.lhs.true.i675.do.body.i684_crit_edge

land.lhs.true.i675.do.body.i684_crit_edge:        ; preds = %land.lhs.true.i675
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i684

land.lhs.true.i675.if.else.i677_crit_edge:        ; preds = %land.lhs.true.i675
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i677

if.else.i677:                                     ; preds = %land.lhs.true.i675.if.else.i677_crit_edge, %mos7840_set_uart_reg.exit670.if.else.i677_crit_edge
  %port_number14.i676 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %126 = ptrtoint ptr %port_number14.i676 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %port_number14.i676, align 4
  br label %do.body.i684

do.body.i684:                                     ; preds = %if.else.i677, %land.lhs.true.i675.do.body.i684_crit_edge
  %.sink42.i678 = phi i8 [ %127, %if.else.i677 ], [ %125, %land.lhs.true.i675.do.body.i684_crit_edge ]
  %.sink.i679 = phi i16 [ 256, %if.else.i677 ], [ 512, %land.lhs.true.i675.do.body.i684_crit_edge ]
  %conv11.i680 = zext i8 %.sink42.i678 to i16
  %add.i681 = shl nuw i16 %conv11.i680, 8
  %shl.i682 = add i16 %add.i681, %.sink.i679
  %val.addr.0.i683 = or i16 %shl.i682, 11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then24.i687)) #8
          to label %mos7840_set_uart_reg.exit691 [label %if.then24.i687], !srcloc !329

if.then24.i687:                                   ; preds = %do.body.i684
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i685 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i686 = zext i16 %val.addr.0.i683 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i685, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i686) #8
  br label %mos7840_set_uart_reg.exit691

mos7840_set_uart_reg.exit691:                     ; preds = %if.then24.i687, %do.body.i684
  %128 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %121, align 8
  %shl.i.i688 = shl i32 %129, 8
  %or29.i689 = or i32 %shl.i.i688, -2147483648
  %call30.i690 = tail call i32 @usb_control_msg(ptr noundef %121, i32 noundef %or29.i689, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i683, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %130 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %Data, align 2
  %conv200 = trunc i16 %131 to i8
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 3
  %132 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv200, ptr %shadowMCR, align 1
  store i16 0, ptr %Data, align 2
  %call201 = call fastcc i32 @mos7840_get_uart_reg(ptr noundef %port, i16 noundef zeroext 3, ptr noundef nonnull %Data)
  %133 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %Data, align 2
  %conv202 = trunc i16 %134 to i8
  %135 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv202, ptr %shadowLCR, align 4
  %136 = or i16 %134, 128
  store i16 %136, ptr %Data, align 2
  %137 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %port, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %141 = and i16 %136, 255
  %num_ports.i692 = getelementptr inbounds %struct.usb_serial, ptr %138, i32 0, i32 6
  %142 = ptrtoint ptr %num_ports.i692 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %num_ports.i692, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %143)
  %cmp.i693 = icmp eq i8 %143, 2
  br i1 %cmp.i693, label %land.lhs.true.i696, label %mos7840_set_uart_reg.exit691.if.else.i698_crit_edge

mos7840_set_uart_reg.exit691.if.else.i698_crit_edge: ; preds = %mos7840_set_uart_reg.exit691
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i698

land.lhs.true.i696:                               ; preds = %mos7840_set_uart_reg.exit691
  %port_number.i694 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %144 = ptrtoint ptr %port_number.i694 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %port_number.i694, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp7.not.i695 = icmp eq i8 %145, 0
  br i1 %cmp7.not.i695, label %land.lhs.true.i696.if.else.i698_crit_edge, label %land.lhs.true.i696.do.body.i705_crit_edge

land.lhs.true.i696.do.body.i705_crit_edge:        ; preds = %land.lhs.true.i696
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i705

land.lhs.true.i696.if.else.i698_crit_edge:        ; preds = %land.lhs.true.i696
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i698

if.else.i698:                                     ; preds = %land.lhs.true.i696.if.else.i698_crit_edge, %mos7840_set_uart_reg.exit691.if.else.i698_crit_edge
  %port_number14.i697 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %146 = ptrtoint ptr %port_number14.i697 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %port_number14.i697, align 4
  br label %do.body.i705

do.body.i705:                                     ; preds = %if.else.i698, %land.lhs.true.i696.do.body.i705_crit_edge
  %.sink42.i699 = phi i8 [ %147, %if.else.i698 ], [ %145, %land.lhs.true.i696.do.body.i705_crit_edge ]
  %.sink.i700 = phi i16 [ 256, %if.else.i698 ], [ 512, %land.lhs.true.i696.do.body.i705_crit_edge ]
  %conv11.i701 = zext i8 %.sink42.i699 to i16
  %add.i702 = shl nuw i16 %conv11.i701, 8
  %shl.i703 = add i16 %add.i702, %.sink.i700
  %val.addr.0.i704 = or i16 %shl.i703, %141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then24.i708)) #8
          to label %mos7840_set_uart_reg.exit712 [label %if.then24.i708], !srcloc !329

if.then24.i708:                                   ; preds = %do.body.i705
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i706 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i707 = zext i16 %val.addr.0.i704 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i706, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i707) #8
  br label %mos7840_set_uart_reg.exit712

mos7840_set_uart_reg.exit712:                     ; preds = %if.then24.i708, %do.body.i705
  %148 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %140, align 8
  %shl.i.i709 = shl i32 %149, 8
  %or29.i710 = or i32 %shl.i.i709, -2147483648
  %call30.i711 = tail call i32 @usb_control_msg(ptr noundef %140, i32 noundef %or29.i710, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i704, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %150 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 12, ptr %Data, align 2
  %151 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %port, align 8
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %num_ports.i713 = getelementptr inbounds %struct.usb_serial, ptr %152, i32 0, i32 6
  %155 = ptrtoint ptr %num_ports.i713 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %num_ports.i713, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %156)
  %cmp.i714 = icmp eq i8 %156, 2
  br i1 %cmp.i714, label %land.lhs.true.i717, label %mos7840_set_uart_reg.exit712.if.else.i719_crit_edge

mos7840_set_uart_reg.exit712.if.else.i719_crit_edge: ; preds = %mos7840_set_uart_reg.exit712
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i719

land.lhs.true.i717:                               ; preds = %mos7840_set_uart_reg.exit712
  %port_number.i715 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %157 = ptrtoint ptr %port_number.i715 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %port_number.i715, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %cmp7.not.i716 = icmp eq i8 %158, 0
  br i1 %cmp7.not.i716, label %land.lhs.true.i717.if.else.i719_crit_edge, label %land.lhs.true.i717.do.body.i726_crit_edge

land.lhs.true.i717.do.body.i726_crit_edge:        ; preds = %land.lhs.true.i717
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i726

land.lhs.true.i717.if.else.i719_crit_edge:        ; preds = %land.lhs.true.i717
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i719

if.else.i719:                                     ; preds = %land.lhs.true.i717.if.else.i719_crit_edge, %mos7840_set_uart_reg.exit712.if.else.i719_crit_edge
  %port_number14.i718 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %159 = ptrtoint ptr %port_number14.i718 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %port_number14.i718, align 4
  br label %do.body.i726

do.body.i726:                                     ; preds = %if.else.i719, %land.lhs.true.i717.do.body.i726_crit_edge
  %.sink42.i720 = phi i8 [ %160, %if.else.i719 ], [ %158, %land.lhs.true.i717.do.body.i726_crit_edge ]
  %.sink.i721 = phi i16 [ 256, %if.else.i719 ], [ 512, %land.lhs.true.i717.do.body.i726_crit_edge ]
  %conv11.i722 = zext i8 %.sink42.i720 to i16
  %add.i723 = shl nuw i16 %conv11.i722, 8
  %shl.i724 = add i16 %add.i723, %.sink.i721
  %val.addr.0.i725 = or i16 %shl.i724, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then24.i729)) #8
          to label %mos7840_set_uart_reg.exit733 [label %if.then24.i729], !srcloc !329

if.then24.i729:                                   ; preds = %do.body.i726
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i727 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i728 = zext i16 %val.addr.0.i725 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i727, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i728) #8
  br label %mos7840_set_uart_reg.exit733

mos7840_set_uart_reg.exit733:                     ; preds = %if.then24.i729, %do.body.i726
  %161 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %154, align 8
  %shl.i.i730 = shl i32 %162, 8
  %or29.i731 = or i32 %shl.i.i730, -2147483648
  %call30.i732 = tail call i32 @usb_control_msg(ptr noundef %154, i32 noundef %or29.i731, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i725, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %163 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %Data, align 2
  %164 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %port, align 8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %num_ports.i734 = getelementptr inbounds %struct.usb_serial, ptr %165, i32 0, i32 6
  %168 = ptrtoint ptr %num_ports.i734 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %num_ports.i734, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %169)
  %cmp.i735 = icmp eq i8 %169, 2
  br i1 %cmp.i735, label %land.lhs.true.i738, label %mos7840_set_uart_reg.exit733.if.else.i740_crit_edge

mos7840_set_uart_reg.exit733.if.else.i740_crit_edge: ; preds = %mos7840_set_uart_reg.exit733
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i740

land.lhs.true.i738:                               ; preds = %mos7840_set_uart_reg.exit733
  %port_number.i736 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %170 = ptrtoint ptr %port_number.i736 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %port_number.i736, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %cmp7.not.i737 = icmp eq i8 %171, 0
  br i1 %cmp7.not.i737, label %land.lhs.true.i738.if.else.i740_crit_edge, label %land.lhs.true.i738.do.body.i746_crit_edge

land.lhs.true.i738.do.body.i746_crit_edge:        ; preds = %land.lhs.true.i738
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i746

land.lhs.true.i738.if.else.i740_crit_edge:        ; preds = %land.lhs.true.i738
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i740

if.else.i740:                                     ; preds = %land.lhs.true.i738.if.else.i740_crit_edge, %mos7840_set_uart_reg.exit733.if.else.i740_crit_edge
  %port_number14.i739 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %172 = ptrtoint ptr %port_number14.i739 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %port_number14.i739, align 4
  br label %do.body.i746

do.body.i746:                                     ; preds = %if.else.i740, %land.lhs.true.i738.do.body.i746_crit_edge
  %.sink42.i741 = phi i8 [ %173, %if.else.i740 ], [ %171, %land.lhs.true.i738.do.body.i746_crit_edge ]
  %.sink.i742 = phi i16 [ 256, %if.else.i740 ], [ 512, %land.lhs.true.i738.do.body.i746_crit_edge ]
  %conv11.i743 = zext i8 %.sink42.i741 to i16
  %add.i744 = shl nuw i16 %conv11.i743, 8
  %shl.i745 = add i16 %add.i744, %.sink.i742
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then24.i749)) #8
          to label %mos7840_set_uart_reg.exit753 [label %if.then24.i749], !srcloc !329

if.then24.i749:                                   ; preds = %do.body.i746
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i747 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i748 = zext i16 %shl.i745 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i747, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i748) #8
  br label %mos7840_set_uart_reg.exit753

mos7840_set_uart_reg.exit753:                     ; preds = %if.then24.i749, %do.body.i746
  %174 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %167, align 8
  %shl.i.i750 = shl i32 %175, 8
  %or29.i751 = or i32 %shl.i.i750, -2147483648
  %call30.i752 = tail call i32 @usb_control_msg(ptr noundef %167, i32 noundef %or29.i751, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %shl.i745, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %176 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %Data, align 2
  %call210 = call fastcc i32 @mos7840_get_uart_reg(ptr noundef %port, i16 noundef zeroext 3, ptr noundef nonnull %Data)
  %177 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %Data, align 2
  %179 = and i16 %178, -129
  store i16 %179, ptr %Data, align 2
  %180 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %port, align 8
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %184 = and i16 %178, 127
  %num_ports.i754 = getelementptr inbounds %struct.usb_serial, ptr %181, i32 0, i32 6
  %185 = ptrtoint ptr %num_ports.i754 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %num_ports.i754, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %186)
  %cmp.i755 = icmp eq i8 %186, 2
  br i1 %cmp.i755, label %land.lhs.true.i758, label %mos7840_set_uart_reg.exit753.if.else.i760_crit_edge

mos7840_set_uart_reg.exit753.if.else.i760_crit_edge: ; preds = %mos7840_set_uart_reg.exit753
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i760

land.lhs.true.i758:                               ; preds = %mos7840_set_uart_reg.exit753
  %port_number.i756 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %187 = ptrtoint ptr %port_number.i756 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %port_number.i756, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %cmp7.not.i757 = icmp eq i8 %188, 0
  br i1 %cmp7.not.i757, label %land.lhs.true.i758.if.else.i760_crit_edge, label %land.lhs.true.i758.do.body.i767_crit_edge

land.lhs.true.i758.do.body.i767_crit_edge:        ; preds = %land.lhs.true.i758
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i767

land.lhs.true.i758.if.else.i760_crit_edge:        ; preds = %land.lhs.true.i758
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i760

if.else.i760:                                     ; preds = %land.lhs.true.i758.if.else.i760_crit_edge, %mos7840_set_uart_reg.exit753.if.else.i760_crit_edge
  %port_number14.i759 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %189 = ptrtoint ptr %port_number14.i759 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %port_number14.i759, align 4
  br label %do.body.i767

do.body.i767:                                     ; preds = %if.else.i760, %land.lhs.true.i758.do.body.i767_crit_edge
  %.sink42.i761 = phi i8 [ %190, %if.else.i760 ], [ %188, %land.lhs.true.i758.do.body.i767_crit_edge ]
  %.sink.i762 = phi i16 [ 256, %if.else.i760 ], [ 512, %land.lhs.true.i758.do.body.i767_crit_edge ]
  %conv11.i763 = zext i8 %.sink42.i761 to i16
  %add.i764 = shl nuw i16 %conv11.i763, 8
  %shl.i765 = add i16 %add.i764, %.sink.i762
  %val.addr.0.i766 = or i16 %shl.i765, %184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then24.i770)) #8
          to label %mos7840_set_uart_reg.exit774 [label %if.then24.i770], !srcloc !329

if.then24.i770:                                   ; preds = %do.body.i767
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i768 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i769 = zext i16 %val.addr.0.i766 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i768, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i769) #8
  br label %mos7840_set_uart_reg.exit774

mos7840_set_uart_reg.exit774:                     ; preds = %if.then24.i770, %do.body.i767
  %191 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %183, align 8
  %shl.i.i771 = shl i32 %192, 8
  %or29.i772 = or i32 %shl.i.i771, -2147483648
  %call30.i773 = tail call i32 @usb_control_msg(ptr noundef %183, i32 noundef %or29.i772, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i766, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %193 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %Data, align 2
  %conv215 = trunc i16 %194 to i8
  %195 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv215, ptr %shadowLCR, align 4
  store i16 0, ptr %Data, align 2
  %196 = ptrtoint ptr %SpRegOffset to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %SpRegOffset, align 4
  %conv218 = zext i8 %197 to i16
  %call219 = call fastcc i32 @mos7840_get_reg_sync(ptr noundef %port, i16 noundef zeroext %conv218, ptr noundef nonnull %Data)
  %198 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %Data, align 2
  %200 = or i16 %199, 12
  store i16 %200, ptr %Data, align 2
  %201 = ptrtoint ptr %SpRegOffset to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %SpRegOffset, align 4
  %conv224 = zext i8 %202 to i16
  %203 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %port, align 8
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %204, align 4
  %207 = and i16 %200, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then.i778)) #8
          to label %mos7840_set_reg_sync.exit782 [label %if.then.i778], !srcloc !329

if.then.i778:                                     ; preds = %mos7840_set_uart_reg.exit774
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i775 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6.i776 = zext i8 %202 to i32
  %conv7.i777 = zext i16 %207 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i775, ptr noundef nonnull @.str.7, i32 noundef %conv6.i776, i32 noundef %conv7.i777) #8
  br label %mos7840_set_reg_sync.exit782

mos7840_set_reg_sync.exit782:                     ; preds = %if.then.i778, %mos7840_set_uart_reg.exit774
  %208 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %206, align 8
  %shl.i.i779 = shl i32 %209, 8
  %or.i780 = or i32 %shl.i.i779, -2147483648
  %call9.i781 = tail call i32 @usb_control_msg(ptr noundef %206, i32 noundef %or.i780, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %207, i16 noundef zeroext %conv224, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %210 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %Data, align 2
  %212 = and i16 %211, -13
  store i16 %212, ptr %Data, align 2
  %213 = ptrtoint ptr %SpRegOffset to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %SpRegOffset, align 4
  %conv230 = zext i8 %214 to i16
  %215 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %port, align 8
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %216, align 4
  %219 = and i16 %211, 243
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then.i786)) #8
          to label %mos7840_set_reg_sync.exit790 [label %if.then.i786], !srcloc !329

if.then.i786:                                     ; preds = %mos7840_set_reg_sync.exit782
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i783 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6.i784 = zext i8 %214 to i32
  %conv7.i785 = zext i16 %219 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i783, ptr noundef nonnull @.str.7, i32 noundef %conv6.i784, i32 noundef %conv7.i785) #8
  br label %mos7840_set_reg_sync.exit790

mos7840_set_reg_sync.exit790:                     ; preds = %if.then.i786, %mos7840_set_reg_sync.exit782
  %220 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %218, align 8
  %shl.i.i787 = shl i32 %221, 8
  %or.i788 = or i32 %shl.i.i787, -2147483648
  %call9.i789 = tail call i32 @usb_control_msg(ptr noundef %218, i32 noundef %or.i788, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %219, i16 noundef zeroext %conv230, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %222 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 12, ptr %Data, align 2
  %223 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %port, align 8
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %num_ports.i791 = getelementptr inbounds %struct.usb_serial, ptr %224, i32 0, i32 6
  %227 = ptrtoint ptr %num_ports.i791 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %num_ports.i791, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %228)
  %cmp.i792 = icmp eq i8 %228, 2
  br i1 %cmp.i792, label %land.lhs.true.i795, label %mos7840_set_reg_sync.exit790.if.else.i797_crit_edge

mos7840_set_reg_sync.exit790.if.else.i797_crit_edge: ; preds = %mos7840_set_reg_sync.exit790
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i797

land.lhs.true.i795:                               ; preds = %mos7840_set_reg_sync.exit790
  %port_number.i793 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %229 = ptrtoint ptr %port_number.i793 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %port_number.i793, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %cmp7.not.i794 = icmp eq i8 %230, 0
  br i1 %cmp7.not.i794, label %land.lhs.true.i795.if.else.i797_crit_edge, label %land.lhs.true.i795.do.body.i804_crit_edge

land.lhs.true.i795.do.body.i804_crit_edge:        ; preds = %land.lhs.true.i795
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i804

land.lhs.true.i795.if.else.i797_crit_edge:        ; preds = %land.lhs.true.i795
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i797

if.else.i797:                                     ; preds = %land.lhs.true.i795.if.else.i797_crit_edge, %mos7840_set_reg_sync.exit790.if.else.i797_crit_edge
  %port_number14.i796 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %231 = ptrtoint ptr %port_number14.i796 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %port_number14.i796, align 4
  br label %do.body.i804

do.body.i804:                                     ; preds = %if.else.i797, %land.lhs.true.i795.do.body.i804_crit_edge
  %.sink42.i798 = phi i8 [ %232, %if.else.i797 ], [ %230, %land.lhs.true.i795.do.body.i804_crit_edge ]
  %.sink.i799 = phi i16 [ 256, %if.else.i797 ], [ 512, %land.lhs.true.i795.do.body.i804_crit_edge ]
  %conv11.i800 = zext i8 %.sink42.i798 to i16
  %add.i801 = shl nuw i16 %conv11.i800, 8
  %shl.i802 = add i16 %add.i801, %.sink.i799
  %val.addr.0.i803 = or i16 %shl.i802, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then24.i807)) #8
          to label %mos7840_set_uart_reg.exit811 [label %if.then24.i807], !srcloc !329

if.then24.i807:                                   ; preds = %do.body.i804
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i805 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i806 = zext i16 %val.addr.0.i803 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i805, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i806) #8
  br label %mos7840_set_uart_reg.exit811

mos7840_set_uart_reg.exit811:                     ; preds = %if.then24.i807, %do.body.i804
  %233 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %226, align 8
  %shl.i.i808 = shl i32 %234, 8
  %or29.i809 = or i32 %shl.i.i808, -2147483648
  %call30.i810 = tail call i32 @usb_control_msg(ptr noundef %226, i32 noundef %or29.i809, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i803, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %235 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 0, ptr %Data, align 2
  %236 = ptrtoint ptr %ControlRegOffset to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %ControlRegOffset, align 1
  %conv234 = zext i8 %237 to i16
  %call235 = call fastcc i32 @mos7840_get_reg_sync(ptr noundef %port, i16 noundef zeroext %conv234, ptr noundef nonnull %Data)
  %238 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %Data, align 2
  %240 = and i16 %239, -33
  store i16 %240, ptr %Data, align 2
  %241 = ptrtoint ptr %ControlRegOffset to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %ControlRegOffset, align 1
  %conv240 = zext i8 %242 to i16
  %243 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %port, align 8
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 4
  %247 = and i16 %239, 223
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then.i815)) #8
          to label %mos7840_set_reg_sync.exit819 [label %if.then.i815], !srcloc !329

if.then.i815:                                     ; preds = %mos7840_set_uart_reg.exit811
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i812 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6.i813 = zext i8 %242 to i32
  %conv7.i814 = zext i16 %247 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i812, ptr noundef nonnull @.str.7, i32 noundef %conv6.i813, i32 noundef %conv7.i814) #8
  br label %mos7840_set_reg_sync.exit819

mos7840_set_reg_sync.exit819:                     ; preds = %if.then.i815, %mos7840_set_uart_reg.exit811
  %248 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %246, align 8
  %shl.i.i816 = shl i32 %249, 8
  %or.i817 = or i32 %shl.i.i816, -2147483648
  %call9.i818 = tail call i32 @usb_control_msg(ptr noundef %246, i32 noundef %or.i817, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %247, i16 noundef zeroext %conv240, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %250 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 0, ptr %Data, align 2
  %251 = ptrtoint ptr %ControlRegOffset to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %ControlRegOffset, align 1
  %conv243 = zext i8 %252 to i16
  %call244 = call fastcc i32 @mos7840_get_reg_sync(ptr noundef %port, i16 noundef zeroext %conv243, ptr noundef nonnull %Data)
  %253 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %Data, align 2
  %255 = or i16 %254, 16
  store i16 %255, ptr %Data, align 2
  %256 = ptrtoint ptr %ControlRegOffset to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %ControlRegOffset, align 1
  %conv249 = zext i8 %257 to i16
  %258 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %port, align 8
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %259, align 4
  %262 = and i16 %255, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then.i823)) #8
          to label %mos7840_set_reg_sync.exit827 [label %if.then.i823], !srcloc !329

if.then.i823:                                     ; preds = %mos7840_set_reg_sync.exit819
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i820 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6.i821 = zext i8 %257 to i32
  %conv7.i822 = zext i16 %262 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i820, ptr noundef nonnull @.str.7, i32 noundef %conv6.i821, i32 noundef %conv7.i822) #8
  br label %mos7840_set_reg_sync.exit827

mos7840_set_reg_sync.exit827:                     ; preds = %if.then.i823, %mos7840_set_reg_sync.exit819
  %263 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %261, align 8
  %shl.i.i824 = shl i32 %264, 8
  %or.i825 = or i32 %shl.i.i824, -2147483648
  %call9.i826 = tail call i32 @usb_control_msg(ptr noundef %261, i32 noundef %or.i825, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %262, i16 noundef zeroext %conv249, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then263)) #8
          to label %do.body269 [label %if.then263], !srcloc !329

if.then263:                                       ; preds = %mos7840_set_reg_sync.exit827
  call void @__sanitizer_cov_trace_pc() #10
  %dev264 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %265 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %port_number, align 4
  %conv265 = zext i8 %266 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug259, ptr noundef %dev264, ptr noundef nonnull @.str.58, i32 noundef %conv265) #8
  br label %do.body269

do.body269:                                       ; preds = %if.then263, %mos7840_set_reg_sync.exit827
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then281)) #8
          to label %do.body286 [label %if.then281], !srcloc !329

if.then281:                                       ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #10
  %dev282 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %minor = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 3
  %267 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %minor, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug260, ptr noundef %dev282, ptr noundef nonnull @.str.59, i32 noundef %268) #8
  br label %do.body286

do.body286:                                       ; preds = %if.then281, %do.body269
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then298)) #8
          to label %do.body304 [label %if.then298], !srcloc !329

if.then298:                                       ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #10
  %dev299 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %bulk_in_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 15
  %269 = ptrtoint ptr %bulk_in_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %bulk_in_endpointAddress, align 8
  %conv300 = zext i8 %270 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug261, ptr noundef %dev299, ptr noundef nonnull @.str.60, i32 noundef %conv300) #8
  br label %do.body304

do.body304:                                       ; preds = %if.then298, %do.body286
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then316)) #8
          to label %do.body322 [label %if.then316], !srcloc !329

if.then316:                                       ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #10
  %dev317 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %271 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv318 = zext i8 %272 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug262, ptr noundef %dev317, ptr noundef nonnull @.str.61, i32 noundef %conv318) #8
  br label %do.body322

do.body322:                                       ; preds = %if.then316, %do.body304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then334)) #8
          to label %do.body340 [label %if.then334], !srcloc !329

if.then334:                                       ; preds = %do.body322
  call void @__sanitizer_cov_trace_pc() #10
  %dev335 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %interrupt_in_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 7
  %273 = ptrtoint ptr %interrupt_in_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %interrupt_in_endpointAddress, align 8
  %conv336 = zext i8 %274 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug263, ptr noundef %dev335, ptr noundef nonnull @.str.62, i32 noundef %conv336) #8
  br label %do.body340

do.body340:                                       ; preds = %if.then334, %do.body322
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then352)) #8
          to label %do.end356 [label %if.then352], !srcloc !329

if.then352:                                       ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #10
  %dev353 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %275 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug264, ptr noundef %dev353, ptr noundef nonnull @.str.63, i32 noundef %276) #8
  br label %do.end356

do.end356:                                        ; preds = %if.then352, %do.body340
  %277 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %read_urb, align 4
  %read_urb358 = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 1
  %279 = ptrtoint ptr %read_urb358 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %278, ptr %read_urb358, align 4
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 6
  %280 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %281)
  %cmp360 = icmp eq i8 %281, 2
  br i1 %cmp360, label %land.lhs.true, label %do.end356.if.else_crit_edge

do.end356.if.else_crit_edge:                      ; preds = %do.end356
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %do.end356
  %port_number362 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %282 = ptrtoint ptr %port_number362 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %port_number362, align 4
  %284 = and i8 %283, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %cmp365.not = icmp eq i8 %284, 0
  br i1 %cmp365.not, label %land.lhs.true.if.else_crit_edge, label %if.then367

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then367:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %285 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %3, align 4
  %bulk_in_endpointAddress371 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 15
  %287 = ptrtoint ptr %bulk_in_endpointAddress371 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %bulk_in_endpointAddress371, align 8
  %conv372 = zext i8 %288 to i32
  %289 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %286, align 8
  %shl.i828 = shl i32 %290, 8
  %add = shl nuw nsw i32 %conv372, 15
  %shl1.i = add nuw nsw i32 %add, 65536
  %or.i829 = or i32 %shl.i828, %shl1.i
  br label %do.body389

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end356.if.else_crit_edge
  %291 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %3, align 4
  %bulk_in_endpointAddress380 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 15
  %293 = ptrtoint ptr %bulk_in_endpointAddress380 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %bulk_in_endpointAddress380, align 8
  %conv381 = zext i8 %294 to i32
  %295 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %292, align 8
  %shl.i830 = shl i32 %296, 8
  %shl1.i831 = shl nuw nsw i32 %conv381, 15
  %or.i832 = or i32 %shl1.i831, %shl.i830
  br label %do.body389

do.body389:                                       ; preds = %if.else, %if.then367
  %or.i829.sink = phi i32 [ %or.i829, %if.then367 ], [ %or.i832, %if.else ]
  %.sink857 = phi ptr [ %286, %if.then367 ], [ %292, %if.else ]
  %or375 = or i32 %or.i829.sink, -1073741696
  %bulk_in_buffer = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 12
  %297 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %bulk_in_buffer, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %278, i32 0, i32 8
  %299 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %.sink857, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %278, i32 0, i32 10
  %300 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %or375, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %278, i32 0, i32 14
  %301 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %298, ptr %transfer_buffer3.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %278, i32 0, i32 28
  %302 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr @mos7840_bulk_in_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %278, i32 0, i32 27
  %303 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %1, ptr %context4.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_open.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_open, %if.then401)) #8
          to label %do.end407 [label %if.then401], !srcloc !329

if.then401:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #10
  %dev402 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %bulk_in_endpointAddress403 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 15
  %304 = ptrtoint ptr %bulk_in_endpointAddress403 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %bulk_in_endpointAddress403, align 8
  %conv404 = zext i8 %305 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_open.__UNIQUE_ID_ddebug265, ptr noundef %dev402, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.51, i32 noundef %conv404) #8
  br label %do.end407

do.end407:                                        ; preds = %if.then401, %do.body389
  %read_urb_busy = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 11
  %306 = ptrtoint ptr %read_urb_busy to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 1, ptr %read_urb_busy, align 4
  %307 = ptrtoint ptr %read_urb358 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %read_urb358, align 4
  %call409 = tail call i32 @usb_submit_urb(ptr noundef %308, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call409)
  %tobool410.not = icmp eq i32 %call409, 0
  br i1 %tobool410.not, label %do.end407.if.end417_crit_edge, label %do.end414

do.end407.if.end417_crit_edge:                    ; preds = %do.end407
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end417

do.end414:                                        ; preds = %do.end407
  call void @__sanitizer_cov_trace_pc() #10
  %dev415 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev415, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.51, i32 noundef %call409) #12
  %309 = ptrtoint ptr %read_urb_busy to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %read_urb_busy, align 4
  br label %if.end417

if.end417:                                        ; preds = %do.end414, %do.end407.if.end417_crit_edge
  %310 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 8, ptr %shadowMCR, align 1
  br label %cleanup

err:                                              ; preds = %if.then191, %do.body179, %if.then169, %do.body157, %if.then147, %do.body135, %if.then125, %do.body113, %if.then95, %do.body83, %if.then72, %do.body60, %if.then46, %do.body34, %if.then22, %do.body
  %status.0 = phi i32 [ %call14, %if.then22 ], [ %call9.i, %if.then46 ], [ %call9.i599, %if.then72 ], [ %call79, %if.then95 ], [ %call9.i607, %if.then125 ], [ %call30.i, %if.then147 ], [ %call30.i628, %if.then169 ], [ %call30.i648, %if.then191 ], [ %call14, %do.body ], [ %call9.i, %do.body34 ], [ %call9.i599, %do.body60 ], [ %call79, %do.body83 ], [ %call9.i607, %do.body113 ], [ %call30.i, %do.body135 ], [ %call30.i628, %do.body157 ], [ %call30.i648, %do.body179 ]
  br label %for.body422

for.body422:                                      ; preds = %for.inc429.for.body422_crit_edge, %err
  %j.1855 = phi i32 [ 0, %err ], [ %inc430, %for.inc429.for.body422_crit_edge ]
  %arrayidx424 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 %j.1855
  %311 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx424, align 4
  %tobool425.not = icmp eq ptr %312, null
  br i1 %tobool425.not, label %for.body422.for.inc429_crit_edge, label %if.end427

for.body422.for.inc429_crit_edge:                 ; preds = %for.body422
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc429

if.end427:                                        ; preds = %for.body422
  call void @__sanitizer_cov_trace_pc() #10
  %transfer_buffer428 = getelementptr inbounds %struct.urb, ptr %312, i32 0, i32 14
  %313 = ptrtoint ptr %transfer_buffer428 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %transfer_buffer428, align 4
  tail call void @kfree(ptr noundef %314) #8
  tail call void @usb_free_urb(ptr noundef nonnull %312) #8
  br label %for.inc429

for.inc429:                                       ; preds = %if.end427, %for.body422.for.inc429_crit_edge
  %inc430 = add nuw nsw i32 %j.1855, 1
  %exitcond856.not = icmp eq i32 %inc430, 16
  br i1 %exitcond856.not, label %for.inc429.cleanup_crit_edge, label %for.inc429.for.body422_crit_edge

for.inc429.for.body422_crit_edge:                 ; preds = %for.inc429
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body422

for.inc429.cleanup_crit_edge:                     ; preds = %for.inc429
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc429.cleanup_crit_edge, %if.end417
  %retval.0 = phi i32 [ 0, %if.end417 ], [ %status.0, %for.inc429.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %Data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7840_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  %arrayidx.1 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #8
  %arrayidx.2 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #8
  %arrayidx.3 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #8
  %arrayidx.4 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #8
  %arrayidx.5 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.5, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #8
  %arrayidx.6 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.6, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #8
  %arrayidx.7 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.7, align 4
  tail call void @usb_kill_urb(ptr noundef %17) #8
  %arrayidx.8 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.8, align 4
  tail call void @usb_kill_urb(ptr noundef %19) #8
  %arrayidx.9 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 9
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.9, align 4
  tail call void @usb_kill_urb(ptr noundef %21) #8
  %arrayidx.10 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 10
  %22 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.10, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #8
  %arrayidx.11 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 11
  %24 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.11, align 4
  tail call void @usb_kill_urb(ptr noundef %25) #8
  %arrayidx.12 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 12
  %26 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.12, align 4
  tail call void @usb_kill_urb(ptr noundef %27) #8
  %arrayidx.13 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 13
  %28 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.13, align 4
  tail call void @usb_kill_urb(ptr noundef %29) #8
  %arrayidx.14 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 14
  %30 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.14, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #8
  %arrayidx.15 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 15
  %32 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.15, align 4
  tail call void @usb_kill_urb(ptr noundef %33) #8
  br label %for.body3

for.body3:                                        ; preds = %for.inc10.for.body3_crit_edge, %entry
  %j.151 = phi i32 [ %inc11, %for.inc10.for.body3_crit_edge ], [ 0, %entry ]
  %arrayidx5 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 %j.151
  %34 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx5, align 4
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %for.body3.for.inc10_crit_edge, label %if.then

for.body3.for.inc10_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc10

if.then:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %37) #8
  %38 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx5, align 4
  tail call void @usb_free_urb(ptr noundef %39) #8
  br label %for.inc10

for.inc10:                                        ; preds = %if.then, %for.body3.for.inc10_crit_edge
  %inc11 = add nuw nsw i32 %j.151, 1
  %exitcond.not = icmp eq i32 %inc11, 16
  br i1 %exitcond.not, label %for.end12, label %for.inc10.for.body3_crit_edge

for.inc10.for.body3_crit_edge:                    ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.end12:                                        ; preds = %for.inc10
  %read_urb = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %41) #8
  %read_urb_busy = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %read_urb_busy to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %read_urb_busy, align 4
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %num_ports.i = getelementptr inbounds %struct.usb_serial, ptr %44, i32 0, i32 6
  %47 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_ports.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp.i = icmp eq i8 %48, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %for.end12.if.else.i_crit_edge

for.end12.if.else.i_crit_edge:                    ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.end12
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %49 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %port_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp7.not.i = icmp eq i8 %50, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.end12.if.else.i_crit_edge
  %port_number14.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %51 = ptrtoint ptr %port_number14.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %port_number14.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %land.lhs.true.i.do.body.i_crit_edge
  %.sink42.i = phi i8 [ %52, %if.else.i ], [ %50, %land.lhs.true.i.do.body.i_crit_edge ]
  %.sink.i = phi i16 [ 256, %if.else.i ], [ 512, %land.lhs.true.i.do.body.i_crit_edge ]
  %conv11.i = zext i8 %.sink42.i to i16
  %add.i = shl nuw i16 %conv11.i, 8
  %shl.i = add i16 %add.i, %.sink.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_close, %if.then24.i)) #8
          to label %mos7840_set_uart_reg.exit [label %if.then24.i], !srcloc !329

if.then24.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i = zext i16 %shl.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i) #8
  br label %mos7840_set_uart_reg.exit

mos7840_set_uart_reg.exit:                        ; preds = %if.then24.i, %do.body.i
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %46, align 8
  %shl.i.i = shl i32 %54, 8
  %or29.i = or i32 %shl.i.i, -2147483648
  %call30.i = tail call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or29.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %shl.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %num_ports.i30 = getelementptr inbounds %struct.usb_serial, ptr %56, i32 0, i32 6
  %59 = ptrtoint ptr %num_ports.i30 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_ports.i30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %60)
  %cmp.i31 = icmp eq i8 %60, 2
  br i1 %cmp.i31, label %land.lhs.true.i34, label %mos7840_set_uart_reg.exit.if.else.i36_crit_edge

mos7840_set_uart_reg.exit.if.else.i36_crit_edge:  ; preds = %mos7840_set_uart_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i36

land.lhs.true.i34:                                ; preds = %mos7840_set_uart_reg.exit
  %port_number.i32 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %61 = ptrtoint ptr %port_number.i32 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %port_number.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp7.not.i33 = icmp eq i8 %62, 0
  br i1 %cmp7.not.i33, label %land.lhs.true.i34.if.else.i36_crit_edge, label %land.lhs.true.i34.do.body.i42_crit_edge

land.lhs.true.i34.do.body.i42_crit_edge:          ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i42

land.lhs.true.i34.if.else.i36_crit_edge:          ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i36

if.else.i36:                                      ; preds = %land.lhs.true.i34.if.else.i36_crit_edge, %mos7840_set_uart_reg.exit.if.else.i36_crit_edge
  %port_number14.i35 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %63 = ptrtoint ptr %port_number14.i35 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %port_number14.i35, align 4
  br label %do.body.i42

do.body.i42:                                      ; preds = %if.else.i36, %land.lhs.true.i34.do.body.i42_crit_edge
  %.sink42.i37 = phi i8 [ %64, %if.else.i36 ], [ %62, %land.lhs.true.i34.do.body.i42_crit_edge ]
  %.sink.i38 = phi i16 [ 256, %if.else.i36 ], [ 512, %land.lhs.true.i34.do.body.i42_crit_edge ]
  %conv11.i39 = zext i8 %.sink42.i37 to i16
  %add.i40 = shl nuw i16 %conv11.i39, 8
  %shl.i41 = add i16 %add.i40, %.sink.i38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_close, %if.then24.i45)) #8
          to label %mos7840_set_uart_reg.exit49 [label %if.then24.i45], !srcloc !329

if.then24.i45:                                    ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i43 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv26.i44 = zext i16 %shl.i41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i43, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i44) #8
  br label %mos7840_set_uart_reg.exit49

mos7840_set_uart_reg.exit49:                      ; preds = %if.then24.i45, %do.body.i42
  %65 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %58, align 8
  %shl.i.i46 = shl i32 %66, 8
  %or29.i47 = or i32 %shl.i.i46, -2147483648
  %call30.i48 = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or29.i47, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %shl.i41, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7840_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %pool_lock = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool_lock) #8
  %arrayidx = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.inc.14.if.then_crit_edge, %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.0214.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ], [ 13, %for.inc.12.if.then_crit_edge ], [ 14, %for.inc.13.if.then_crit_edge ], [ 15, %for.inc.14.if.then_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %entry.if.then_crit_edge ], [ %arrayidx.1, %for.inc.if.then_crit_edge ], [ %arrayidx.2, %for.inc.1.if.then_crit_edge ], [ %arrayidx.3, %for.inc.2.if.then_crit_edge ], [ %arrayidx.4, %for.inc.3.if.then_crit_edge ], [ %arrayidx.5, %for.inc.4.if.then_crit_edge ], [ %arrayidx.6, %for.inc.5.if.then_crit_edge ], [ %arrayidx.7, %for.inc.6.if.then_crit_edge ], [ %arrayidx.8, %for.inc.7.if.then_crit_edge ], [ %arrayidx.9, %for.inc.8.if.then_crit_edge ], [ %arrayidx.10, %for.inc.9.if.then_crit_edge ], [ %arrayidx.11, %for.inc.10.if.then_crit_edge ], [ %arrayidx.12, %for.inc.11.if.then_crit_edge ], [ %arrayidx.13, %for.inc.12.if.then_crit_edge ], [ %arrayidx.14, %for.inc.13.if.then_crit_edge ], [ %arrayidx.15, %for.inc.14.if.then_crit_edge ]
  %6 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx.lcssa, align 1
  %arrayidx11 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 %i.0214.lcssa
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_write.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_write, %if.then18)) #8
          to label %for.end [label %if.then18], !srcloc !329

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_write.__UNIQUE_ID_ddebug269, ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %i.0214.lcssa) #8
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.1 = icmp eq i8 %10, 0
  br i1 %tobool.not.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.2 = icmp eq i8 %12, 0
  br i1 %tobool.not.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.3 = icmp eq i8 %14, 0
  br i1 %tobool.not.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.4 = icmp eq i8 %16, 0
  br i1 %tobool.not.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.5 = icmp eq i8 %18, 0
  br i1 %tobool.not.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 6
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.6 = icmp eq i8 %20, 0
  br i1 %tobool.not.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.7 = icmp eq i8 %22, 0
  br i1 %tobool.not.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 8
  %23 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.8 = icmp eq i8 %24, 0
  br i1 %tobool.not.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 9
  %25 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.9 = icmp eq i8 %26, 0
  br i1 %tobool.not.9, label %for.inc.8.if.then_crit_edge, label %for.inc.9

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 10
  %27 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.10 = icmp eq i8 %28, 0
  br i1 %tobool.not.10, label %for.inc.9.if.then_crit_edge, label %for.inc.10

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 11
  %29 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.11 = icmp eq i8 %30, 0
  br i1 %tobool.not.11, label %for.inc.10.if.then_crit_edge, label %for.inc.11

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 12
  %31 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.12 = icmp eq i8 %32, 0
  br i1 %tobool.not.12, label %for.inc.11.if.then_crit_edge, label %for.inc.12

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 13
  %33 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.13 = icmp eq i8 %34, 0
  br i1 %tobool.not.13, label %for.inc.12.if.then_crit_edge, label %for.inc.13

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 14
  %35 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.14 = icmp eq i8 %36, 0
  br i1 %tobool.not.14, label %for.inc.13.if.then_crit_edge, label %for.inc.14

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx.15 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 15
  %37 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.15 = icmp eq i8 %38, 0
  br i1 %tobool.not.15, label %for.inc.14.if.then_crit_edge, label %for.inc.15

for.inc.14.if.then_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.15:                                       ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock, i32 noundef %call4) #8
  br label %do.body26

for.end:                                          ; preds = %if.then18, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock, i32 noundef %call4) #8
  %cmp23 = icmp eq ptr %8, null
  br i1 %cmp23, label %for.end.do.body26_crit_edge, label %if.end43

for.end.do.body26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

do.body26:                                        ; preds = %for.end.do.body26_crit_edge, %for.inc.15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_write.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_write, %if.then38)) #8
          to label %exit [label %if.then38], !srcloc !329

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %dev39 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_write.__UNIQUE_ID_ddebug270, ptr noundef %dev39, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67) #8
  br label %exit

if.end43:                                         ; preds = %for.end
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 14
  %39 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %transfer_buffer, align 4
  %cmp44 = icmp eq ptr %40, null
  br i1 %cmp44, label %if.then46, label %if.end43.if.end53_crit_edge

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then46:                                        ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 2592, i32 noundef 32) #11
  %42 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i, ptr %transfer_buffer, align 4
  %tobool50.not = icmp eq ptr %call7.i, null
  br i1 %tobool50.not, label %if.then46.exit_crit_edge, label %if.then46.if.end53_crit_edge

if.then46.if.end53_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then46.exit_crit_edge:                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end53:                                         ; preds = %if.then46.if.end53_crit_edge, %if.end43.if.end53_crit_edge
  %43 = tail call i32 @llvm.smin.i32(i32 %count, i32 32)
  %44 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %transfer_buffer, align 4
  %46 = call ptr @memcpy(ptr %45, ptr %data, i32 %43)
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 6
  %47 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp59 = icmp eq i8 %48, 2
  br i1 %cmp59, label %land.lhs.true, label %if.end53.if.else_crit_edge

if.end53.if.else_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end53
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %49 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %port_number, align 4
  %51 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp63.not = icmp eq i8 %51, 0
  br i1 %cmp63.not, label %land.lhs.true.if.else_crit_edge, label %if.then65

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then65:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %54 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv68 = zext i8 %55 to i32
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %53, align 8
  %shl.i = shl i32 %57, 8
  %add = shl nuw nsw i32 %conv68, 15
  %shl1.i = add nuw nsw i32 %add, 65536
  %or.i = or i32 %shl.i, %shl1.i
  br label %do.body79

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end53.if.else_crit_edge
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 4
  %bulk_out_endpointAddress73 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %60 = ptrtoint ptr %bulk_out_endpointAddress73 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bulk_out_endpointAddress73, align 4
  %conv74 = zext i8 %61 to i32
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %59, align 8
  %shl.i198 = shl i32 %63, 8
  %shl1.i199 = shl nuw nsw i32 %conv74, 15
  %or.i200 = or i32 %shl1.i199, %shl.i198
  br label %do.body79

do.body79:                                        ; preds = %if.else, %if.then65
  %or.i.sink = phi i32 [ %or.i, %if.then65 ], [ %or.i200, %if.else ]
  %.sink = phi ptr [ %53, %if.then65 ], [ %59, %if.else ]
  %or = or i32 %or.i.sink, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 8
  %64 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %.sink, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 10
  %65 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 19
  %66 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %43, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 28
  %67 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @mos7840_bulk_out_data_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 27
  %68 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %1, ptr %context4.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_write.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_write, %if.then91)) #8
          to label %do.end97 [label %if.then91], !srcloc !329

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %dev92 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %bulk_out_endpointAddress93 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %69 = ptrtoint ptr %bulk_out_endpointAddress93 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bulk_out_endpointAddress93, align 4
  %conv94 = zext i8 %70 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_write.__UNIQUE_ID_ddebug273, ptr noundef %dev92, ptr noundef nonnull @.str.70, i32 noundef %conv94) #8
  br label %do.end97

do.end97:                                         ; preds = %if.then91, %do.body79
  %has_led = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 12
  %71 = ptrtoint ptr %has_led to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %has_led, align 1, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool98.not = icmp eq i8 %72, 0
  br i1 %tobool98.not, label %do.end97.if.end100_crit_edge, label %if.then99

do.end97.if.end100_crit_edge:                     ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then99:                                        ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mos7840_led_activity(ptr noundef %port)
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %do.end97.if.end100_crit_edge
  %call101 = tail call i32 @usb_submit_urb(ptr noundef nonnull %8, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end118, label %if.then103

if.then103:                                       ; preds = %if.end100
  %arrayidx105 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 %i.0214.lcssa
  %73 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx105, align 1
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 12
  %74 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool108.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool108.not, label %if.then103.if.then110_crit_edge, label %lor.lhs.false

if.then103.if.then110_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then110

lor.lhs.false:                                    ; preds = %if.then103
  %.b188 = load i1, ptr @mos7840_write.__print_once, align 1
  br i1 %.b188, label %lor.lhs.false.exit_crit_edge, label %lor.lhs.false.if.then110_crit_edge

lor.lhs.false.if.then110_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then110

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then110:                                       ; preds = %lor.lhs.false.if.then110_crit_edge, %if.then103.if.then110_crit_edge
  store i1 true, ptr @mos7840_write.__print_once, align 1
  %dev114 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev114, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.67, i32 noundef %call101) #12
  br label %exit

if.end118:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %tx = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 4
  %75 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx, align 8
  %add119 = add i32 %76, %43
  store i32 %add119, ptr %tx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_write.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_write, %if.then132)) #8
          to label %exit [label %if.then132], !srcloc !329

if.then132:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %dev133 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %77 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_write.__UNIQUE_ID_ddebug274, ptr noundef %dev133, ptr noundef nonnull @.str.72, i32 noundef %78) #8
  br label %exit

exit:                                             ; preds = %if.then132, %if.end118, %if.then110, %lor.lhs.false.exit_crit_edge, %if.then46.exit_crit_edge, %if.then38, %do.body26
  %bytes_sent.0 = phi i32 [ 0, %if.then38 ], [ %43, %if.then132 ], [ -12, %if.then46.exit_crit_edge ], [ %call101, %if.then110 ], [ %call101, %lor.lhs.false.exit_crit_edge ], [ 0, %do.body26 ], [ %43, %if.end118 ]
  ret i32 %bytes_sent.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7840_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pool_lock = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool_lock) #8
  %arrayidx = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, i32 32, i32 0
  %arrayidx.1 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1 = icmp eq i8 %7, 0
  %add.1 = add nuw nsw i32 %spec.select, 32
  %spec.select.1 = select i1 %tobool.not.1, i32 %add.1, i32 %spec.select
  %arrayidx.2 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.2 = icmp eq i8 %9, 0
  %add.2 = add nuw nsw i32 %spec.select.1, 32
  %spec.select.2 = select i1 %tobool.not.2, i32 %add.2, i32 %spec.select.1
  %arrayidx.3 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.3 = icmp eq i8 %11, 0
  %add.3 = add nuw nsw i32 %spec.select.2, 32
  %spec.select.3 = select i1 %tobool.not.3, i32 %add.3, i32 %spec.select.2
  %arrayidx.4 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.4 = icmp eq i8 %13, 0
  %add.4 = add nuw nsw i32 %spec.select.3, 32
  %spec.select.4 = select i1 %tobool.not.4, i32 %add.4, i32 %spec.select.3
  %arrayidx.5 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.5 = icmp eq i8 %15, 0
  %add.5 = add nuw nsw i32 %spec.select.4, 32
  %spec.select.5 = select i1 %tobool.not.5, i32 %add.5, i32 %spec.select.4
  %arrayidx.6 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.6 = icmp eq i8 %17, 0
  %add.6 = add nuw nsw i32 %spec.select.5, 32
  %spec.select.6 = select i1 %tobool.not.6, i32 %add.6, i32 %spec.select.5
  %arrayidx.7 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.7 = icmp eq i8 %19, 0
  %add.7 = add nuw nsw i32 %spec.select.6, 32
  %spec.select.7 = select i1 %tobool.not.7, i32 %add.7, i32 %spec.select.6
  %arrayidx.8 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 8
  %20 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.8 = icmp eq i8 %21, 0
  %add.8 = add nuw nsw i32 %spec.select.7, 32
  %spec.select.8 = select i1 %tobool.not.8, i32 %add.8, i32 %spec.select.7
  %arrayidx.9 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 9
  %22 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.9 = icmp eq i8 %23, 0
  %add.9 = add nuw nsw i32 %spec.select.8, 32
  %spec.select.9 = select i1 %tobool.not.9, i32 %add.9, i32 %spec.select.8
  %arrayidx.10 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 10
  %24 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.10 = icmp eq i8 %25, 0
  %add.10 = add nuw nsw i32 %spec.select.9, 32
  %spec.select.10 = select i1 %tobool.not.10, i32 %add.10, i32 %spec.select.9
  %arrayidx.11 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 11
  %26 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.11 = icmp eq i8 %27, 0
  %add.11 = add nuw nsw i32 %spec.select.10, 32
  %spec.select.11 = select i1 %tobool.not.11, i32 %add.11, i32 %spec.select.10
  %arrayidx.12 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 12
  %28 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.12 = icmp eq i8 %29, 0
  %add.12 = add nuw nsw i32 %spec.select.11, 32
  %spec.select.12 = select i1 %tobool.not.12, i32 %add.12, i32 %spec.select.11
  %arrayidx.13 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 13
  %30 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.13 = icmp eq i8 %31, 0
  %add.13 = add nuw nsw i32 %spec.select.12, 32
  %spec.select.13 = select i1 %tobool.not.13, i32 %add.13, i32 %spec.select.12
  %arrayidx.14 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 14
  %32 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.14 = icmp eq i8 %33, 0
  %add.14 = add nuw nsw i32 %spec.select.13, 32
  %spec.select.14 = select i1 %tobool.not.14, i32 %add.14, i32 %spec.select.13
  %arrayidx.15 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 15
  %34 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.15 = icmp eq i8 %35, 0
  %add.15 = add nuw nsw i32 %spec.select.14, 32
  %spec.select.15 = select i1 %tobool.not.15, i32 %add.15, i32 %spec.select.14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock, i32 noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.15)
  %cmp9 = icmp eq i32 %spec.select.15, 0
  %add11 = add nsw i32 %spec.select.15, -31
  %spec.select32 = select i1 %cmp9, i32 0, i32 %add11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_write_room.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_write_room, %if.then18)) #8
          to label %do.end22 [label %if.then18], !srcloc !329

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %port19 = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 4
  %36 = ptrtoint ptr %port19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port19, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %37, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_write_room.__UNIQUE_ID_ddebug268, ptr noundef %dev, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, i32 noundef %spec.select32) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %entry
  ret i32 %spec.select32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7840_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = inttoptr i32 %arg to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 21593, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21593
  br i1 %cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_ioctl.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_ioctl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !329

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_ioctl.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call3 = tail call fastcc i32 @mos7840_get_lsr_info(ptr noundef %tty, ptr noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7840_set_termios(ptr noundef %tty, ptr noundef %port, ptr nocapture noundef readnone %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @mos7840_change_port_settings(ptr noundef %tty, ptr noundef %1)
  %read_urb_busy = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read_urb_busy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_urb_busy, align 4, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %read_urb_busy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %read_urb_busy, align 4
  %read_urb = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_urb, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %6, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end12_crit_edge, label %do.body

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_termios.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_set_termios, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !329

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_termios.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %call2) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %7 = ptrtoint ptr %read_urb_busy to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %read_urb_busy, align 4
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7840_break(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %shadowLCR = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadowLCR, align 4
  %6 = and i8 %5, -65
  %masksel = select i1 %cmp, i8 64, i8 0
  %data.0 = or i8 %6, %masksel
  %shadowLCR5 = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %shadowLCR5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %data.0, ptr %shadowLCR5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_break.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_break, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !329

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %shadowLCR5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shadowLCR5, align 4
  %conv11 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_break.__UNIQUE_ID_ddebug267, ptr noundef %dev, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.104, i32 noundef %conv11) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %entry
  %10 = ptrtoint ptr %shadowLCR5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shadowLCR5, align 4
  %conv14 = zext i8 %11 to i16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %num_ports.i = getelementptr inbounds %struct.usb_serial, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_ports.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp.i = icmp eq i8 %17, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.if.else.i_crit_edge

do.end.if.else.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp7.not.i = icmp eq i8 %19, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end.if.else.i_crit_edge
  %port_number14.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %port_number14.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_number14.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %land.lhs.true.i.do.body.i_crit_edge
  %.sink42.i = phi i8 [ %21, %if.else.i ], [ %19, %land.lhs.true.i.do.body.i_crit_edge ]
  %.sink.i = phi i16 [ 256, %if.else.i ], [ 512, %land.lhs.true.i.do.body.i_crit_edge ]
  %conv11.i = zext i8 %.sink42.i to i16
  %add.i = shl nuw i16 %conv11.i, 8
  %shl.i = add i16 %add.i, %.sink.i
  %val.addr.0.i = or i16 %shl.i, %conv14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_break, %if.then24.i)) #8
          to label %mos7840_set_uart_reg.exit [label %if.then24.i], !srcloc !329

if.then24.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i = zext i16 %val.addr.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i) #8
  br label %mos7840_set_uart_reg.exit

mos7840_set_uart_reg.exit:                        ; preds = %if.then24.i, %do.body.i
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %15, align 8
  %shl.i.i = shl i32 %23, 8
  %or29.i = or i32 %shl.i.i, -2147483648
  %call30.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or29.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7840_chars_in_buffer(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pool_lock = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool_lock) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %chars.030 = phi i32 [ 0, %entry ], [ %chars.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 10, i32 %i.031
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8 = getelementptr %struct.moschip_port, ptr %3, i32 0, i32 9, i32 %i.031
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %transfer_buffer_length, align 4
  %add = add i32 %9, %chars.030
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %chars.1 = phi i32 [ %add, %if.then ], [ %chars.030, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock, i32 noundef %call3) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_chars_in_buffer.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_chars_in_buffer, %if.then16)) #8
          to label %do.end19 [label %if.then16], !srcloc !329

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_chars_in_buffer.__UNIQUE_ID_ddebug266, ptr noundef %dev, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.106, i32 noundef %chars.1) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %for.end
  ret i32 %chars.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7840_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %stop_char = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stop_char) #8
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %stop_char to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %stop_char, align 1
  %call2 = call i32 @mos7840_write(ptr noundef %tty, ptr noundef %1, ptr noundef nonnull %stop_char, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stop_char) #8
  br i1 %cmp, label %if.then.cleanup19_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.cleanup19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %9 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool7.not = icmp sgt i32 %10, -1
  br i1 %tobool7.not, label %if.end4.cleanup19_crit_edge, label %if.then8

if.end4.cleanup19_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.then8:                                         ; preds = %if.end4
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shadowMCR, align 1
  %13 = and i8 %12, -3
  store i8 %13, ptr %shadowMCR, align 1
  %conv12 = zext i8 %13 to i16
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %num_ports.i = getelementptr inbounds %struct.usb_serial, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_ports.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp.i = icmp eq i8 %19, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then8.if.else.i_crit_edge

if.then8.if.else.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then8
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp7.not.i = icmp eq i8 %21, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then8.if.else.i_crit_edge
  %port_number14.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %port_number14.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_number14.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %land.lhs.true.i.do.body.i_crit_edge
  %.sink42.i = phi i8 [ %23, %if.else.i ], [ %21, %land.lhs.true.i.do.body.i_crit_edge ]
  %.sink.i = phi i16 [ 256, %if.else.i ], [ 512, %land.lhs.true.i.do.body.i_crit_edge ]
  %conv11.i = zext i8 %.sink42.i to i16
  %add.i = shl nuw i16 %conv11.i, 8
  %shl.i = add i16 %add.i, %.sink.i
  %val.addr.0.i = or i16 %shl.i, %conv12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_throttle, %if.then24.i)) #8
          to label %mos7840_set_uart_reg.exit [label %if.then24.i], !srcloc !329

if.then24.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i = zext i16 %val.addr.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i) #8
  br label %mos7840_set_uart_reg.exit

mos7840_set_uart_reg.exit:                        ; preds = %if.then24.i, %do.body.i
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %17, align 8
  %shl.i.i = shl i32 %25, 8
  %or29.i = or i32 %shl.i.i, -2147483648
  %call30.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or29.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  br label %cleanup19

cleanup19:                                        ; preds = %mos7840_set_uart_reg.exit, %if.end4.cleanup19_crit_edge, %if.then.cleanup19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7840_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %start_char = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start_char) #8
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %start_char to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %start_char, align 1
  %call2 = call i32 @mos7840_write(ptr noundef %tty, ptr noundef %1, ptr noundef nonnull %start_char, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start_char) #8
  br i1 %cmp, label %if.then.cleanup18_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.cleanup18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %9 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool7.not = icmp sgt i32 %10, -1
  br i1 %tobool7.not, label %if.end4.cleanup18_crit_edge, label %if.then8

if.end4.cleanup18_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.then8:                                         ; preds = %if.end4
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shadowMCR, align 1
  %13 = or i8 %12, 2
  store i8 %13, ptr %shadowMCR, align 1
  %conv11 = zext i8 %13 to i16
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %num_ports.i = getelementptr inbounds %struct.usb_serial, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_ports.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp.i = icmp eq i8 %19, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then8.if.else.i_crit_edge

if.then8.if.else.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then8
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp7.not.i = icmp eq i8 %21, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then8.if.else.i_crit_edge
  %port_number14.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %port_number14.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_number14.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %land.lhs.true.i.do.body.i_crit_edge
  %.sink42.i = phi i8 [ %23, %if.else.i ], [ %21, %land.lhs.true.i.do.body.i_crit_edge ]
  %.sink.i = phi i16 [ 256, %if.else.i ], [ 512, %land.lhs.true.i.do.body.i_crit_edge ]
  %conv11.i = zext i8 %.sink42.i to i16
  %add.i = shl nuw i16 %conv11.i, 8
  %shl.i = add i16 %add.i, %.sink.i
  %val.addr.0.i = or i16 %shl.i, %conv11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_unthrottle, %if.then24.i)) #8
          to label %mos7840_set_uart_reg.exit [label %if.then24.i], !srcloc !329

if.then24.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i = zext i16 %val.addr.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i) #8
  br label %mos7840_set_uart_reg.exit

mos7840_set_uart_reg.exit:                        ; preds = %if.then24.i, %do.body.i
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %17, align 8
  %shl.i.i = shl i32 %25, 8
  %or29.i = or i32 %shl.i.i, -2147483648
  %call30.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or29.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  br label %cleanup18

cleanup18:                                        ; preds = %mos7840_set_uart_reg.exit, %if.end4.cleanup18_crit_edge, %if.then.cleanup18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7840_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %msr = alloca i16, align 2
  %mcr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msr) #8
  %2 = ptrtoint ptr %msr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %msr, align 2, !annotation !330
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mcr) #8
  %3 = ptrtoint ptr %mcr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %mcr, align 2, !annotation !330
  %call = call fastcc i32 @mos7840_get_uart_reg(ptr noundef %1, i16 noundef zeroext 6, ptr noundef nonnull %msr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @mos7840_get_uart_reg(ptr noundef %1, i16 noundef zeroext 4, ptr noundef nonnull %mcr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %mcr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mcr, align 2
  %conv = zext i16 %5 to i32
  %and = shl nuw nsw i32 %conv, 1
  %or = and i32 %and, 6
  %and10 = shl nuw nsw i32 %conv, 11
  %6 = and i32 %and10, 32768
  %or13 = or i32 %or, %6
  %7 = ptrtoint ptr %msr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %msr, align 2
  %conv14 = zext i16 %8 to i32
  %and15 = shl nuw nsw i32 %conv14, 1
  %9 = and i32 %and15, 32
  %or18 = or i32 %or13, %9
  %and20 = lshr i32 %conv14, 1
  %10 = and i32 %and20, 64
  %or23 = or i32 %or18, %10
  %11 = and i32 %and15, 128
  %or28 = or i32 %or23, %11
  %and30 = shl nuw nsw i32 %conv14, 3
  %12 = and i32 %and30, 256
  %or33 = or i32 %or28, %12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_tiocmget.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_tiocmget, %if.then38)) #8
          to label %cleanup [label %if.then38], !srcloc !329

if.then38:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_tiocmget.__UNIQUE_ID_ddebug275, ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i32 noundef %or33) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %or33, %if.then38 ], [ %or33, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mcr) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mos7840_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadowMCR, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %conv, 253
  %spec.select = select i1 %tobool.not, i32 %conv, i32 %and1
  %and2 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and5 = and i32 %spec.select, 254
  %mcr.1 = select i1 %tobool3.not, i32 %spec.select, i32 %and5
  %and7 = and i32 %clear, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and10 = and i32 %mcr.1, 239
  %mcr.2 = select i1 %tobool8.not, i32 %mcr.1, i32 %and10
  %and12 = lshr i32 %set, 1
  %and21 = lshr i32 %set, 11
  %6 = and i32 %and21, 16
  %7 = and i32 %and12, 3
  %8 = or i32 %7, %6
  %9 = or i32 %8, %mcr.2
  %conv26 = trunc i32 %9 to i8
  %10 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv26, ptr %shadowMCR, align 1
  %conv28 = trunc i32 %9 to i16
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = and i16 %conv28, 255
  %num_ports.i = getelementptr inbounds %struct.usb_serial, ptr %12, i32 0, i32 6
  %16 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_ports.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp.i = icmp eq i8 %17, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp7.not.i = icmp eq i8 %19, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %port_number14.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %port_number14.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_number14.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %land.lhs.true.i.do.body.i_crit_edge
  %.sink42.i = phi i8 [ %21, %if.else.i ], [ %19, %land.lhs.true.i.do.body.i_crit_edge ]
  %.sink.i = phi i16 [ 256, %if.else.i ], [ 512, %land.lhs.true.i.do.body.i_crit_edge ]
  %conv11.i = zext i8 %.sink42.i to i16
  %add.i = shl nuw i16 %conv11.i, 8
  %shl.i = add i16 %add.i, %.sink.i
  %val.addr.0.i = or i16 %shl.i, %15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_tiocmset, %if.then24.i)) #8
          to label %mos7840_set_uart_reg.exit [label %if.then24.i], !srcloc !329

if.then24.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i = zext i16 %val.addr.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i) #8
  br label %mos7840_set_uart_reg.exit

mos7840_set_uart_reg.exit:                        ; preds = %if.then24.i, %do.body.i
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %23, 8
  %or29.i = or i32 %shl.i.i, -2147483648
  %call30.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or29.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp = icmp slt i32 %call30.i, 0
  br i1 %cmp, label %do.body, label %mos7840_set_uart_reg.exit.cleanup_crit_edge

mos7840_set_uart_reg.exit.cleanup_crit_edge:      ; preds = %mos7840_set_uart_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %mos7840_set_uart_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_tiocmset.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_tiocmset, %if.then36)) #8
          to label %cleanup [label %if.then36], !srcloc !329

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_tiocmset.__UNIQUE_ID_ddebug276, ptr noundef %dev, ptr noundef nonnull @.str.110) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.body, %mos7840_set_uart_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30.i, %if.then36 ], [ 0, %mos7840_set_uart_reg.exit.cleanup_crit_edge ], [ %call30.i, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_get_icount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7840_bulk_in_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %port1 = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_bulk_in_callback.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_bulk_in_callback, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !329

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_bulk_in_callback.__UNIQUE_ID_ddebug247, ptr noundef %dev7, ptr noundef nonnull @.str.112, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %read_urb_busy = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 11
  br label %cleanup.sink.split

if.end8:                                          ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %dev9 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_bulk_in_callback, %if.then.i)) #8
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !329

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev9, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.111, i32 noundef %11, i32 noundef %11, ptr noundef %9) #8
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end8
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %usb_serial_debug_data.exit.if.end37_crit_edge, label %if.then12

usb_serial_debug_data.exit.if.end37_crit_edge:    ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then12:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port1, align 4
  %port14 = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port14, ptr noundef %9, i8 noundef zeroext 0, i32 noundef %13) #8
  tail call void @tty_flip_buffer_push(ptr noundef %port14) #8
  %16 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %actual_length, align 4
  %rx = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 27, i32 5
  %18 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx, align 4
  %add = add i32 %19, %17
  store i32 %add, ptr %rx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_bulk_in_callback.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_bulk_in_callback, %if.then30)) #8
          to label %if.end37 [label %if.then30], !srcloc !329

if.then30:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_bulk_in_callback.__UNIQUE_ID_ddebug248, ptr noundef %dev9, ptr noundef nonnull @.str.113, i32 noundef %21) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.then12, %usb_serial_debug_data.exit.if.end37_crit_edge
  %has_led = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %has_led to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_led, align 1, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool38.not = icmp eq i8 %23, 0
  br i1 %tobool38.not, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mos7840_led_activity(ptr noundef %3)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  %read_urb_busy41 = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %read_urb_busy41 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %read_urb_busy41, align 4
  %read_urb = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_urb, align 4
  %call42 = tail call i32 @usb_submit_urb(ptr noundef %26, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %do.body45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_bulk_in_callback.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_bulk_in_callback, %if.then57)) #8
          to label %cleanup.sink.split [label %if.then57], !srcloc !329

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_bulk_in_callback.__UNIQUE_ID_ddebug249, ptr noundef %dev9, ptr noundef nonnull @.str.114, i32 noundef %call42) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then57, %do.body45, %do.end
  %read_urb_busy41.sink = phi ptr [ %read_urb_busy, %do.end ], [ %read_urb_busy41, %do.body45 ], [ %read_urb_busy41, %if.then57 ]
  %27 = ptrtoint ptr %read_urb_busy41.sink to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %read_urb_busy41.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end40.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mos7840_set_reg_sync(ptr noundef %port, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = and i16 %val, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_set_reg_sync, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !329

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv6 = zext i16 %reg to i32
  %conv7 = zext i16 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5, ptr noundef nonnull @.str.7, i32 noundef %conv6, i32 noundef %conv7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -2147483648
  %call9 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %4, i16 noundef zeroext %reg, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mos7840_get_reg_sync(ptr noundef %port, i16 noundef zeroext %reg, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i = shl i32 %6, 8
  %or3 = or i32 %shl.i, -2147483520
  %call4 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or3, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %reg, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp slt i32 %call4, 1
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp6 = icmp eq i32 %call4, 0
  %spec.store.select = select i1 %cmp6, i32 -5, i32 %call4
  br label %out

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %8 to i16
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %val, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_get_reg_sync.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_get_reg_sync, %if.then14)) #8
          to label %out [label %if.then14], !srcloc !329

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv16 = zext i16 %reg to i32
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %val, align 2
  %conv17 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_get_reg_sync.__UNIQUE_ID_ddebug239, ptr noundef %dev15, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef %conv16, i32 noundef %conv17) #8
  br label %out

out:                                              ; preds = %if.then14, %if.end9, %if.then5
  %ret.0 = phi i32 [ %spec.store.select, %if.then5 ], [ %call4, %if.then14 ], [ %call4, %if.end9 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7840_led_off(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port.i = getelementptr i8, ptr %t, i32 -136
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %led_dr.i = getelementptr i8, ptr %t, i32 100
  %6 = ptrtoint ptr %led_dr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %led_dr.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %7, align 1
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 14, ptr %bRequest.i, align 1
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %wValue.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 3, ptr %wValue.i, align 1
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 1024, ptr %wIndex.i, align 1
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %wLength.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %wLength.i, align 1
  %led_urb.i = getelementptr i8, ptr %t, i32 96
  %13 = ptrtoint ptr %led_urb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %led_urb.i, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %5, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 21
  %19 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %7, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 19
  %21 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 28
  %22 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mos7840_set_led_callback, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 27
  %23 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %context5.i.i, align 4
  %24 = load ptr, ptr %led_urb.i, align 4
  %call3.i = tail call i32 @usb_submit_urb(ptr noundef %24, i32 noundef 2592) #8
  %led_timer2 = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %25, 50
  %call1 = tail call i32 @mod_timer(ptr noundef %led_timer2, i32 noundef %add) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7840_led_flag_off(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %t, i32 56
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 1, ptr elementtype(i32) %flags) #8, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mos7840_set_led_sync(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %call2 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 768, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7840_set_led_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body5 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge32
    i32 -108, label %entry.do.body_crit_edge33
  ]

entry.do.body_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge32, %entry.do.body_crit_edge33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_led_callback.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_set_led_callback, %if.then)) #8
          to label %sw.epilog [label %if.then], !srcloc !329

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_led_callback.__UNIQUE_ID_ddebug245, ptr noundef %dev3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %6) #8
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_led_callback.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_set_led_callback, %if.then17)) #8
          to label %sw.epilog [label %if.then17], !srcloc !329

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %7 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev18, align 4
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_led_callback.__UNIQUE_ID_ddebug246, ptr noundef %dev19, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef %10) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then17, %do.body5, %if.then, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mos7840_get_uart_reg(ptr noundef %port, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 8
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp = icmp eq i8 %8, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %9 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp5.not = icmp eq i8 %10, 0
  br i1 %cmp5.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %port_number12 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %11 = ptrtoint ptr %port_number12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port_number12, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %land.lhs.true.do.body_crit_edge
  %.sink55 = phi i8 [ %12, %if.else ], [ %10, %land.lhs.true.do.body_crit_edge ]
  %.sink = phi i16 [ 256, %if.else ], [ 512, %land.lhs.true.do.body_crit_edge ]
  %conv10 = zext i8 %.sink55 to i16
  %add = shl nuw i16 %conv10, 8
  %shl = add i16 %add, %.sink
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_get_uart_reg.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_get_uart_reg, %if.then23)) #8
          to label %do.end [label %if.then23], !srcloc !329

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv25 = zext i16 %shl to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_get_uart_reg.__UNIQUE_ID_ddebug241, ptr noundef %dev24, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.66, i32 noundef %conv25) #8
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  %shl.i = shl i32 %14, 8
  %or28 = or i32 %shl.i, -2147483520
  %call29 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or28, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext %shl, i16 noundef zeroext %reg, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %if.then32, label %if.end37

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp33 = icmp eq i32 %call29, 0
  %spec.store.select = select i1 %cmp33, i32 -5, i32 %call29
  br label %out

if.end37:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call7.i, align 8
  %conv38 = zext i8 %16 to i16
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv38, ptr %val, align 2
  br label %out

out:                                              ; preds = %if.end37, %if.then32
  %ret.0 = phi i32 [ %spec.store.select, %if.then32 ], [ %call29, %if.end37 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mos7840_bulk_out_data_callback(ptr noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %port1 = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status2, align 4
  %pool_lock = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool_lock) #8
  %arrayidx = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp9 = icmp eq ptr %7, %urb
  br i1 %cmp9, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.inc.14.if.then_crit_edge, %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.043.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ], [ 13, %for.inc.12.if.then_crit_edge ], [ 14, %for.inc.13.if.then_crit_edge ], [ 15, %for.inc.14.if.then_crit_edge ]
  %arrayidx11 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 10, i32 %i.043.lcssa
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx11, align 1
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %cmp9.1 = icmp eq ptr %10, %urb
  br i1 %cmp9.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2, align 4
  %cmp9.2 = icmp eq ptr %12, %urb
  br i1 %cmp9.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.3, align 4
  %cmp9.3 = icmp eq ptr %14, %urb
  br i1 %cmp9.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.4, align 4
  %cmp9.4 = icmp eq ptr %16, %urb
  br i1 %cmp9.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.5, align 4
  %cmp9.5 = icmp eq ptr %18, %urb
  br i1 %cmp9.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 6
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.6, align 4
  %cmp9.6 = icmp eq ptr %20, %urb
  br i1 %cmp9.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.7, align 4
  %cmp9.7 = icmp eq ptr %22, %urb
  br i1 %cmp9.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 8
  %23 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.8, align 4
  %cmp9.8 = icmp eq ptr %24, %urb
  br i1 %cmp9.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 9
  %25 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.9, align 4
  %cmp9.9 = icmp eq ptr %26, %urb
  br i1 %cmp9.9, label %for.inc.8.if.then_crit_edge, label %for.inc.9

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 10
  %27 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.10, align 4
  %cmp9.10 = icmp eq ptr %28, %urb
  br i1 %cmp9.10, label %for.inc.9.if.then_crit_edge, label %for.inc.10

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 11
  %29 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.11, align 4
  %cmp9.11 = icmp eq ptr %30, %urb
  br i1 %cmp9.11, label %for.inc.10.if.then_crit_edge, label %for.inc.11

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 12
  %31 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.12, align 4
  %cmp9.12 = icmp eq ptr %32, %urb
  br i1 %cmp9.12, label %for.inc.11.if.then_crit_edge, label %for.inc.12

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 13
  %33 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.13, align 4
  %cmp9.13 = icmp eq ptr %34, %urb
  br i1 %cmp9.13, label %for.inc.12.if.then_crit_edge, label %for.inc.13

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 14
  %35 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.14, align 4
  %cmp9.14 = icmp eq ptr %36, %urb
  br i1 %cmp9.14, label %for.inc.13.if.then_crit_edge, label %for.inc.14

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx.15 = getelementptr %struct.moschip_port, ptr %1, i32 0, i32 9, i32 15
  %37 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.15, align 4
  %cmp9.15 = icmp eq ptr %38, %urb
  br i1 %cmp9.15, label %for.inc.14.if.then_crit_edge, label %for.inc.14.for.end_crit_edge

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.14.if.then_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.end:                                          ; preds = %for.inc.14.for.end_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock, i32 noundef %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end24, label %do.body14

do.body14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_bulk_out_data_callback.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_bulk_out_data_callback, %if.then20)) #8
          to label %cleanup [label %if.then20], !srcloc !329

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_bulk_out_data_callback.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %5) #8
  br label %cleanup

if.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %port25 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 1
  tail call void @tty_port_tty_wakeup(ptr noundef %port25) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then20, %do.body14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mos7840_led_activity(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

test_and_set_bit_lock.exit:                       ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 1, ptr elementtype(i32) %flags) #8, !srcloc !334
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !335
  %and1.i.i = and i32 %asmresult.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %phi.cmp.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %phi.cmp.i.not, label %if.end, label %test_and_set_bit_lock.exit.cleanup_crit_edge

test_and_set_bit_lock.exit.cleanup_crit_edge:     ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %port.i = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %led_dr.i = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %led_dr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %led_dr.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 64, ptr %12, align 1
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 14, ptr %bRequest.i, align 1
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %wValue.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 259, ptr %wValue.i, align 1
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 3
  %16 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 1024, ptr %wIndex.i, align 1
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %wLength.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 0, ptr %wLength.i, align 1
  %led_urb.i = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %led_urb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %led_urb.i, align 4
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 8
  %22 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %10, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 10
  %23 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 21
  %24 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %12, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 19
  %26 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 28
  %27 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mos7840_set_led_callback, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 27
  %28 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %context5.i.i, align 4
  %29 = load ptr, ptr %led_urb.i, align 4
  %call3.i = tail call i32 @usb_submit_urb(ptr noundef %29, i32 noundef 2592) #8
  %led_timer1 = getelementptr inbounds %struct.moschip_port, ptr %1, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %30, 50
  %call3 = tail call i32 @mod_timer(ptr noundef %led_timer1, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %test_and_set_bit_lock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mos7840_get_lsr_info(ptr nocapture noundef readonly %tty, ptr noundef %value) unnamed_addr #2 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #8
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %result, align 4
  %driver_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %pool_lock.i = getelementptr inbounds %struct.moschip_port, ptr %4, i32 0, i32 8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool_lock.i) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.031.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %chars.030.i = phi i32 [ 0, %entry ], [ %chars.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.moschip_port, ptr %4, i32 0, i32 10, i32 %i.031.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i5

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i5:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.i = getelementptr %struct.moschip_port, ptr %4, i32 0, i32 9, i32 %i.031.i
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx8.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transfer_buffer_length.i, align 4
  %add.i = add i32 %10, %chars.030.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i5, %for.body.i.for.inc.i_crit_edge
  %chars.1.i = phi i32 [ %add.i, %if.then.i5 ], [ %chars.030.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock.i, i32 noundef %call3.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_chars_in_buffer.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_get_lsr_info, %if.then16.i)) #8
          to label %mos7840_chars_in_buffer.exit [label %if.then16.i], !srcloc !329

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_chars_in_buffer.__UNIQUE_ID_ddebug266, ptr noundef %dev.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.106, i32 noundef %chars.1.i) #8
  br label %mos7840_chars_in_buffer.exit

mos7840_chars_in_buffer.exit:                     ; preds = %if.then16.i, %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chars.1.i)
  %cmp = icmp eq i32 %chars.1.i, 0
  br i1 %cmp, label %if.then, label %mos7840_chars_in_buffer.exit.if.then.i_crit_edge

mos7840_chars_in_buffer.exit.if.then.i_crit_edge: ; preds = %mos7840_chars_in_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then:                                          ; preds = %mos7840_chars_in_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %result, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then, %mos7840_chars_in_buffer.exit.if.then.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.then.i.copy_to_user.exit.thread_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.then.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %value, i32 4, i32 -1226833920) #13, !srcloc !336
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %result, i32 noundef 4) #8
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %value, ptr noundef nonnull %result, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.then.i.copy_to_user.exit.thread_crit_edge
  %13 = phi i32 [ -14, %if.then.i.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #8
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mos7840_change_port_settings(ptr noundef %tty, ptr nocapture noundef %mos7840_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.moschip_port, ptr %mos7840_port, i32 0, i32 4
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %and = lshr i32 %3, 4
  %4 = and i32 %and, 3
  %and5 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %do.body32, label %if.then

if.then:                                          ; preds = %entry
  %and6 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then12)) #8
          to label %if.end49 [label %if.then12], !srcloc !329

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_change_port_settings.__UNIQUE_ID_ddebug283, ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84) #8
  br label %if.end49

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then25)) #8
          to label %if.end49 [label %if.then25], !srcloc !329

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_change_port_settings.__UNIQUE_ID_ddebug284, ptr noundef %dev26, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84) #8
  br label %if.end49

do.body32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then44)) #8
          to label %if.end49 [label %if.then44], !srcloc !329

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_change_port_settings.__UNIQUE_ID_ddebug285, ptr noundef %dev45, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.84) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %do.body32, %if.then25, %if.else, %if.then12, %if.then8
  %lParity.0 = phi i32 [ 8, %if.then12 ], [ 24, %if.then25 ], [ 0, %if.then44 ], [ 8, %if.then8 ], [ 24, %if.else ], [ 0, %do.body32 ]
  %and50 = lshr i32 %3, 25
  %5 = and i32 %and50, 32
  %and55 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else75, label %if.then57

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then70)) #8
          to label %if.end93 [label %if.then70], !srcloc !329

if.then70:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %dev71 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_change_port_settings.__UNIQUE_ID_ddebug286, ptr noundef %dev71, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.84) #8
  br label %if.end93

if.else75:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then88)) #8
          to label %if.end93 [label %if.then88], !srcloc !329

if.then88:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  %dev89 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_change_port_settings.__UNIQUE_ID_ddebug287, ptr noundef %dev89, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.84) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %if.else75, %if.then70, %if.then57
  %lStop.0 = phi i32 [ 4, %if.then70 ], [ 0, %if.then88 ], [ 4, %if.then57 ], [ 0, %if.else75 ]
  %shadowLCR = getelementptr inbounds %struct.moschip_port, ptr %mos7840_port, i32 0, i32 2
  %6 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shadowLCR, align 4
  %8 = and i8 %7, -64
  %9 = or i32 %4, %5
  %or99 = or i32 %9, %lParity.0
  %or101 = or i32 %or99, %lStop.0
  %10 = trunc i32 %or101 to i8
  %conv105 = or i8 %8, %10
  store i8 %conv105, ptr %shadowLCR, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then118)) #8
          to label %do.end124 [label %if.then118], !srcloc !329

if.then118:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %dev119 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %11 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shadowLCR, align 4
  %conv121 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_change_port_settings.__UNIQUE_ID_ddebug288, ptr noundef %dev119, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.84, i32 noundef %conv121) #8
  br label %do.end124

do.end124:                                        ; preds = %if.then118, %if.end93
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %num_ports.i = getelementptr inbounds %struct.usb_serial, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_ports.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.i = icmp eq i8 %18, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end124.if.else.i_crit_edge

do.end124.if.else.i_crit_edge:                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end124
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp7.not.i = icmp eq i8 %20, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end124.if.else.i_crit_edge
  %port_number14.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %port_number14.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port_number14.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %land.lhs.true.i.do.body.i_crit_edge
  %.sink42.i = phi i8 [ %22, %if.else.i ], [ %20, %land.lhs.true.i.do.body.i_crit_edge ]
  %.sink.i = phi i16 [ 256, %if.else.i ], [ 512, %land.lhs.true.i.do.body.i_crit_edge ]
  %conv11.i = zext i8 %.sink42.i to i16
  %add.i = shl nuw i16 %conv11.i, 8
  %shl.i = add i16 %add.i, %.sink.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then24.i)) #8
          to label %mos7840_set_uart_reg.exit [label %if.then24.i], !srcloc !329

if.then24.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i = zext i16 %shl.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i) #8
  br label %mos7840_set_uart_reg.exit

mos7840_set_uart_reg.exit:                        ; preds = %if.then24.i, %do.body.i
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %16, align 8
  %shl.i.i = shl i32 %24, 8
  %or29.i = or i32 %shl.i.i, -2147483648
  %call30.i = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or29.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %shl.i, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %num_ports.i30 = getelementptr inbounds %struct.usb_serial, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %num_ports.i30 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_ports.i30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp.i31 = icmp eq i8 %30, 2
  br i1 %cmp.i31, label %land.lhs.true.i34, label %mos7840_set_uart_reg.exit.if.else.i36_crit_edge

mos7840_set_uart_reg.exit.if.else.i36_crit_edge:  ; preds = %mos7840_set_uart_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i36

land.lhs.true.i34:                                ; preds = %mos7840_set_uart_reg.exit
  %port_number.i32 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %port_number.i32 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %port_number.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp7.not.i33 = icmp eq i8 %32, 0
  br i1 %cmp7.not.i33, label %land.lhs.true.i34.if.else.i36_crit_edge, label %land.lhs.true.i34.do.body.i42_crit_edge

land.lhs.true.i34.do.body.i42_crit_edge:          ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i42

land.lhs.true.i34.if.else.i36_crit_edge:          ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i36

if.else.i36:                                      ; preds = %land.lhs.true.i34.if.else.i36_crit_edge, %mos7840_set_uart_reg.exit.if.else.i36_crit_edge
  %port_number14.i35 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %port_number14.i35 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port_number14.i35, align 4
  br label %do.body.i42

do.body.i42:                                      ; preds = %if.else.i36, %land.lhs.true.i34.do.body.i42_crit_edge
  %.sink42.i37 = phi i8 [ %34, %if.else.i36 ], [ %32, %land.lhs.true.i34.do.body.i42_crit_edge ]
  %.sink.i38 = phi i16 [ 256, %if.else.i36 ], [ 512, %land.lhs.true.i34.do.body.i42_crit_edge ]
  %conv11.i39 = zext i8 %.sink42.i37 to i16
  %add.i40 = shl nuw i16 %conv11.i39, 8
  %shl.i41 = add i16 %add.i40, %.sink.i38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then24.i45)) #8
          to label %mos7840_set_uart_reg.exit49 [label %if.then24.i45], !srcloc !329

if.then24.i45:                                    ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i43 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i44 = zext i16 %shl.i41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i43, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i44) #8
  br label %mos7840_set_uart_reg.exit49

mos7840_set_uart_reg.exit49:                      ; preds = %if.then24.i45, %do.body.i42
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %28, align 8
  %shl.i.i46 = shl i32 %36, 8
  %or29.i47 = or i32 %shl.i.i46, -2147483648
  %call30.i48 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or29.i47, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %shl.i41, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %num_ports.i50 = getelementptr inbounds %struct.usb_serial, ptr %38, i32 0, i32 6
  %41 = ptrtoint ptr %num_ports.i50 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_ports.i50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp.i51 = icmp eq i8 %42, 2
  br i1 %cmp.i51, label %land.lhs.true.i54, label %mos7840_set_uart_reg.exit49.if.else.i56_crit_edge

mos7840_set_uart_reg.exit49.if.else.i56_crit_edge: ; preds = %mos7840_set_uart_reg.exit49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i56

land.lhs.true.i54:                                ; preds = %mos7840_set_uart_reg.exit49
  %port_number.i52 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %port_number.i52 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %port_number.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp7.not.i53 = icmp eq i8 %44, 0
  br i1 %cmp7.not.i53, label %land.lhs.true.i54.if.else.i56_crit_edge, label %land.lhs.true.i54.do.body.i62_crit_edge

land.lhs.true.i54.do.body.i62_crit_edge:          ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i62

land.lhs.true.i54.if.else.i56_crit_edge:          ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i56

if.else.i56:                                      ; preds = %land.lhs.true.i54.if.else.i56_crit_edge, %mos7840_set_uart_reg.exit49.if.else.i56_crit_edge
  %port_number14.i55 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %port_number14.i55 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %port_number14.i55, align 4
  br label %do.body.i62

do.body.i62:                                      ; preds = %if.else.i56, %land.lhs.true.i54.do.body.i62_crit_edge
  %.sink42.i57 = phi i8 [ %46, %if.else.i56 ], [ %44, %land.lhs.true.i54.do.body.i62_crit_edge ]
  %.sink.i58 = phi i16 [ 256, %if.else.i56 ], [ 512, %land.lhs.true.i54.do.body.i62_crit_edge ]
  %conv11.i59 = zext i8 %.sink42.i57 to i16
  %add.i60 = shl nuw i16 %conv11.i59, 8
  %shl.i61 = add i16 %add.i60, %.sink.i58
  %val.addr.0.i = or i16 %shl.i61, 207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then24.i65)) #8
          to label %mos7840_set_uart_reg.exit69 [label %if.then24.i65], !srcloc !329

if.then24.i65:                                    ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i63 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i64 = zext i16 %val.addr.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i63, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i64) #8
  br label %mos7840_set_uart_reg.exit69

mos7840_set_uart_reg.exit69:                      ; preds = %if.then24.i65, %do.body.i62
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %40, align 8
  %shl.i.i66 = shl i32 %48, 8
  %or29.i67 = or i32 %shl.i.i66, -2147483648
  %call30.i68 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or29.i67, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %49 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %shadowLCR, align 4
  %conv129 = zext i8 %50 to i16
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %num_ports.i70 = getelementptr inbounds %struct.usb_serial, ptr %52, i32 0, i32 6
  %55 = ptrtoint ptr %num_ports.i70 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num_ports.i70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp.i71 = icmp eq i8 %56, 2
  br i1 %cmp.i71, label %land.lhs.true.i74, label %mos7840_set_uart_reg.exit69.if.else.i76_crit_edge

mos7840_set_uart_reg.exit69.if.else.i76_crit_edge: ; preds = %mos7840_set_uart_reg.exit69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i76

land.lhs.true.i74:                                ; preds = %mos7840_set_uart_reg.exit69
  %port_number.i72 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %port_number.i72 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %port_number.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp7.not.i73 = icmp eq i8 %58, 0
  br i1 %cmp7.not.i73, label %land.lhs.true.i74.if.else.i76_crit_edge, label %land.lhs.true.i74.do.body.i83_crit_edge

land.lhs.true.i74.do.body.i83_crit_edge:          ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i83

land.lhs.true.i74.if.else.i76_crit_edge:          ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i76

if.else.i76:                                      ; preds = %land.lhs.true.i74.if.else.i76_crit_edge, %mos7840_set_uart_reg.exit69.if.else.i76_crit_edge
  %port_number14.i75 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %port_number14.i75 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %port_number14.i75, align 4
  br label %do.body.i83

do.body.i83:                                      ; preds = %if.else.i76, %land.lhs.true.i74.do.body.i83_crit_edge
  %.sink42.i77 = phi i8 [ %60, %if.else.i76 ], [ %58, %land.lhs.true.i74.do.body.i83_crit_edge ]
  %.sink.i78 = phi i16 [ 256, %if.else.i76 ], [ 512, %land.lhs.true.i74.do.body.i83_crit_edge ]
  %conv11.i79 = zext i8 %.sink42.i77 to i16
  %add.i80 = shl nuw i16 %conv11.i79, 8
  %shl.i81 = add i16 %add.i80, %.sink.i78
  %val.addr.0.i82 = or i16 %shl.i81, %conv129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then24.i86)) #8
          to label %mos7840_set_uart_reg.exit90 [label %if.then24.i86], !srcloc !329

if.then24.i86:                                    ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i84 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i85 = zext i16 %val.addr.0.i82 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i84, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i85) #8
  br label %mos7840_set_uart_reg.exit90

mos7840_set_uart_reg.exit90:                      ; preds = %if.then24.i86, %do.body.i83
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %54, align 8
  %shl.i.i87 = shl i32 %62, 8
  %or29.i88 = or i32 %shl.i.i87, -2147483648
  %call30.i89 = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or29.i88, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i82, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %shadowMCR = getelementptr inbounds %struct.moschip_port, ptr %mos7840_port, i32 0, i32 3
  %63 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 11, ptr %shadowMCR, align 1
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %num_ports.i91 = getelementptr inbounds %struct.usb_serial, ptr %65, i32 0, i32 6
  %68 = ptrtoint ptr %num_ports.i91 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_ports.i91, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp.i92 = icmp eq i8 %69, 2
  br i1 %cmp.i92, label %land.lhs.true.i95, label %mos7840_set_uart_reg.exit90.if.else.i97_crit_edge

mos7840_set_uart_reg.exit90.if.else.i97_crit_edge: ; preds = %mos7840_set_uart_reg.exit90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i97

land.lhs.true.i95:                                ; preds = %mos7840_set_uart_reg.exit90
  %port_number.i93 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %70 = ptrtoint ptr %port_number.i93 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %port_number.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp7.not.i94 = icmp eq i8 %71, 0
  br i1 %cmp7.not.i94, label %land.lhs.true.i95.if.else.i97_crit_edge, label %land.lhs.true.i95.do.body.i104_crit_edge

land.lhs.true.i95.do.body.i104_crit_edge:         ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i104

land.lhs.true.i95.if.else.i97_crit_edge:          ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i97

if.else.i97:                                      ; preds = %land.lhs.true.i95.if.else.i97_crit_edge, %mos7840_set_uart_reg.exit90.if.else.i97_crit_edge
  %port_number14.i96 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %72 = ptrtoint ptr %port_number14.i96 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %port_number14.i96, align 4
  br label %do.body.i104

do.body.i104:                                     ; preds = %if.else.i97, %land.lhs.true.i95.do.body.i104_crit_edge
  %.sink42.i98 = phi i8 [ %73, %if.else.i97 ], [ %71, %land.lhs.true.i95.do.body.i104_crit_edge ]
  %.sink.i99 = phi i16 [ 256, %if.else.i97 ], [ 512, %land.lhs.true.i95.do.body.i104_crit_edge ]
  %conv11.i100 = zext i8 %.sink42.i98 to i16
  %add.i101 = shl nuw i16 %conv11.i100, 8
  %shl.i102 = add i16 %add.i101, %.sink.i99
  %val.addr.0.i103 = or i16 %shl.i102, 11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then24.i107)) #8
          to label %mos7840_set_uart_reg.exit111 [label %if.then24.i107], !srcloc !329

if.then24.i107:                                   ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i105 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i106 = zext i16 %val.addr.0.i103 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i105, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i106) #8
  br label %mos7840_set_uart_reg.exit111

mos7840_set_uart_reg.exit111:                     ; preds = %if.then24.i107, %do.body.i104
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %67, align 8
  %shl.i.i108 = shl i32 %75, 8
  %or29.i109 = or i32 %shl.i.i108, -2147483648
  %call30.i110 = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or29.i109, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i103, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %num_ports.i112 = getelementptr inbounds %struct.usb_serial, ptr %77, i32 0, i32 6
  %80 = ptrtoint ptr %num_ports.i112 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %num_ports.i112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp.i113 = icmp eq i8 %81, 2
  br i1 %cmp.i113, label %land.lhs.true.i116, label %mos7840_set_uart_reg.exit111.if.else.i118_crit_edge

mos7840_set_uart_reg.exit111.if.else.i118_crit_edge: ; preds = %mos7840_set_uart_reg.exit111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i118

land.lhs.true.i116:                               ; preds = %mos7840_set_uart_reg.exit111
  %port_number.i114 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %port_number.i114 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %port_number.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp7.not.i115 = icmp eq i8 %83, 0
  br i1 %cmp7.not.i115, label %land.lhs.true.i116.if.else.i118_crit_edge, label %land.lhs.true.i116.do.body.i125_crit_edge

land.lhs.true.i116.do.body.i125_crit_edge:        ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i125

land.lhs.true.i116.if.else.i118_crit_edge:        ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i118

if.else.i118:                                     ; preds = %land.lhs.true.i116.if.else.i118_crit_edge, %mos7840_set_uart_reg.exit111.if.else.i118_crit_edge
  %port_number14.i117 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %port_number14.i117 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %port_number14.i117, align 4
  br label %do.body.i125

do.body.i125:                                     ; preds = %if.else.i118, %land.lhs.true.i116.do.body.i125_crit_edge
  %.sink42.i119 = phi i8 [ %85, %if.else.i118 ], [ %83, %land.lhs.true.i116.do.body.i125_crit_edge ]
  %.sink.i120 = phi i16 [ 256, %if.else.i118 ], [ 512, %land.lhs.true.i116.do.body.i125_crit_edge ]
  %conv11.i121 = zext i8 %.sink42.i119 to i16
  %add.i122 = shl nuw i16 %conv11.i121, 8
  %shl.i123 = add i16 %add.i122, %.sink.i120
  %val.addr.0.i124 = or i16 %shl.i123, 11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then24.i128)) #8
          to label %mos7840_set_uart_reg.exit132 [label %if.then24.i128], !srcloc !329

if.then24.i128:                                   ; preds = %do.body.i125
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i126 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i127 = zext i16 %val.addr.0.i124 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i126, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i127) #8
  br label %mos7840_set_uart_reg.exit132

mos7840_set_uart_reg.exit132:                     ; preds = %if.then24.i128, %do.body.i125
  %86 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %79, align 8
  %shl.i.i129 = shl i32 %87, 8
  %or29.i130 = or i32 %shl.i.i129, -2147483648
  %call30.i131 = tail call i32 @usb_control_msg(ptr noundef %79, i32 noundef %or29.i130, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i124, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %and135 = and i32 %3, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %spec.select2 = select i1 %tobool136.not, i8 8, i8 11
  %88 = or i8 %spec.select2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool144.not186 = icmp slt i32 %3, 0
  %spec.select185 = select i1 %tobool144.not186, i8 %88, i8 %spec.select2
  %89 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %spec.select185, ptr %shadowMCR, align 1
  %conv157 = zext i8 %spec.select185 to i16
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %num_ports.i133 = getelementptr inbounds %struct.usb_serial, ptr %91, i32 0, i32 6
  %94 = ptrtoint ptr %num_ports.i133 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %num_ports.i133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %cmp.i134 = icmp eq i8 %95, 2
  br i1 %cmp.i134, label %land.lhs.true.i137, label %mos7840_set_uart_reg.exit132.if.else.i139_crit_edge

mos7840_set_uart_reg.exit132.if.else.i139_crit_edge: ; preds = %mos7840_set_uart_reg.exit132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i139

land.lhs.true.i137:                               ; preds = %mos7840_set_uart_reg.exit132
  %port_number.i135 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %96 = ptrtoint ptr %port_number.i135 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %port_number.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp7.not.i136 = icmp eq i8 %97, 0
  br i1 %cmp7.not.i136, label %land.lhs.true.i137.if.else.i139_crit_edge, label %land.lhs.true.i137.do.body.i146_crit_edge

land.lhs.true.i137.do.body.i146_crit_edge:        ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i146

land.lhs.true.i137.if.else.i139_crit_edge:        ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i139

if.else.i139:                                     ; preds = %land.lhs.true.i137.if.else.i139_crit_edge, %mos7840_set_uart_reg.exit132.if.else.i139_crit_edge
  %port_number14.i138 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %98 = ptrtoint ptr %port_number14.i138 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %port_number14.i138, align 4
  br label %do.body.i146

do.body.i146:                                     ; preds = %if.else.i139, %land.lhs.true.i137.do.body.i146_crit_edge
  %.sink42.i140 = phi i8 [ %99, %if.else.i139 ], [ %97, %land.lhs.true.i137.do.body.i146_crit_edge ]
  %.sink.i141 = phi i16 [ 256, %if.else.i139 ], [ 512, %land.lhs.true.i137.do.body.i146_crit_edge ]
  %conv11.i142 = zext i8 %.sink42.i140 to i16
  %add.i143 = shl nuw i16 %conv11.i142, 8
  %shl.i144 = add i16 %add.i143, %.sink.i141
  %val.addr.0.i145 = or i16 %shl.i144, %conv157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then24.i149)) #8
          to label %mos7840_set_uart_reg.exit153 [label %if.then24.i149], !srcloc !329

if.then24.i149:                                   ; preds = %do.body.i146
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i147 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i148 = zext i16 %val.addr.0.i145 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i147, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i148) #8
  br label %mos7840_set_uart_reg.exit153

mos7840_set_uart_reg.exit153:                     ; preds = %if.then24.i149, %do.body.i146
  %100 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %93, align 8
  %shl.i.i150 = shl i32 %101, 8
  %or29.i151 = or i32 %shl.i.i150, -2147483648
  %call30.i152 = tail call i32 @usb_control_msg(ptr noundef %93, i32 noundef %or29.i151, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i145, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool160.not = icmp eq i32 %call.i, 0
  br i1 %tobool160.not, label %do.body162, label %mos7840_set_uart_reg.exit153.do.body180_crit_edge

mos7840_set_uart_reg.exit153.do.body180_crit_edge: ; preds = %mos7840_set_uart_reg.exit153
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body180

do.body162:                                       ; preds = %mos7840_set_uart_reg.exit153
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then174)) #8
          to label %do.body180 [label %if.then174], !srcloc !329

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #10
  %dev175 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_change_port_settings.__UNIQUE_ID_ddebug289, ptr noundef %dev175, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92) #8
  br label %do.body180

do.body180:                                       ; preds = %if.then174, %do.body162, %mos7840_set_uart_reg.exit153.do.body180_crit_edge
  %baud.0 = phi i32 [ %call.i, %mos7840_set_uart_reg.exit153.do.body180_crit_edge ], [ 9600, %if.then174 ], [ 9600, %do.body162 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then192)) #8
          to label %do.end196 [label %if.then192], !srcloc !329

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #10
  %dev193 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_change_port_settings.__UNIQUE_ID_ddebug290, ptr noundef %dev193, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.84, i32 noundef %baud.0) #8
  br label %do.end196

do.end196:                                        ; preds = %if.then192, %do.body180
  tail call fastcc void @mos7840_send_cmd_write_baud_rate(ptr noundef %mos7840_port, i32 noundef %baud.0)
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %num_ports.i154 = getelementptr inbounds %struct.usb_serial, ptr %103, i32 0, i32 6
  %106 = ptrtoint ptr %num_ports.i154 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %num_ports.i154, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %107)
  %cmp.i155 = icmp eq i8 %107, 2
  br i1 %cmp.i155, label %land.lhs.true.i158, label %do.end196.if.else.i160_crit_edge

do.end196.if.else.i160_crit_edge:                 ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i160

land.lhs.true.i158:                               ; preds = %do.end196
  %port_number.i156 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %108 = ptrtoint ptr %port_number.i156 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %port_number.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp7.not.i157 = icmp eq i8 %109, 0
  br i1 %cmp7.not.i157, label %land.lhs.true.i158.if.else.i160_crit_edge, label %land.lhs.true.i158.do.body.i167_crit_edge

land.lhs.true.i158.do.body.i167_crit_edge:        ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i167

land.lhs.true.i158.if.else.i160_crit_edge:        ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i160

if.else.i160:                                     ; preds = %land.lhs.true.i158.if.else.i160_crit_edge, %do.end196.if.else.i160_crit_edge
  %port_number14.i159 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %110 = ptrtoint ptr %port_number14.i159 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %port_number14.i159, align 4
  br label %do.body.i167

do.body.i167:                                     ; preds = %if.else.i160, %land.lhs.true.i158.do.body.i167_crit_edge
  %.sink42.i161 = phi i8 [ %111, %if.else.i160 ], [ %109, %land.lhs.true.i158.do.body.i167_crit_edge ]
  %.sink.i162 = phi i16 [ 256, %if.else.i160 ], [ 512, %land.lhs.true.i158.do.body.i167_crit_edge ]
  %conv11.i163 = zext i8 %.sink42.i161 to i16
  %add.i164 = shl nuw i16 %conv11.i163, 8
  %shl.i165 = add i16 %add.i164, %.sink.i162
  %val.addr.0.i166 = or i16 %shl.i165, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then24.i170)) #8
          to label %mos7840_set_uart_reg.exit174 [label %if.then24.i170], !srcloc !329

if.then24.i170:                                   ; preds = %do.body.i167
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i168 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i169 = zext i16 %val.addr.0.i166 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i168, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i169) #8
  br label %mos7840_set_uart_reg.exit174

mos7840_set_uart_reg.exit174:                     ; preds = %if.then24.i170, %do.body.i167
  %112 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %105, align 8
  %shl.i.i171 = shl i32 %113, 8
  %or29.i172 = or i32 %shl.i.i171, -2147483648
  %call30.i173 = tail call i32 @usb_control_msg(ptr noundef %105, i32 noundef %or29.i172, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i166, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %read_urb_busy = getelementptr inbounds %struct.moschip_port, ptr %mos7840_port, i32 0, i32 11
  %114 = ptrtoint ptr %read_urb_busy to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %read_urb_busy, align 4, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool199.not = icmp eq i8 %115, 0
  br i1 %tobool199.not, label %if.then200, label %mos7840_set_uart_reg.exit174.do.body225_crit_edge

mos7840_set_uart_reg.exit174.do.body225_crit_edge: ; preds = %mos7840_set_uart_reg.exit174
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body225

if.then200:                                       ; preds = %mos7840_set_uart_reg.exit174
  %116 = ptrtoint ptr %read_urb_busy to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %read_urb_busy, align 4
  %read_urb = getelementptr inbounds %struct.moschip_port, ptr %mos7840_port, i32 0, i32 1
  %117 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read_urb, align 4
  %call202 = tail call i32 @usb_submit_urb(ptr noundef %118, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.then200.do.body225_crit_edge, label %do.body205

if.then200.do.body225_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body225

do.body205:                                       ; preds = %if.then200
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then217)) #8
          to label %do.end221 [label %if.then217], !srcloc !329

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #10
  %dev218 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_change_port_settings.__UNIQUE_ID_ddebug291, ptr noundef %dev218, ptr noundef nonnull @.str.83, i32 noundef %call202) #8
  br label %do.end221

do.end221:                                        ; preds = %if.then217, %do.body205
  %119 = ptrtoint ptr %read_urb_busy to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %read_urb_busy, align 4
  br label %do.body225

do.body225:                                       ; preds = %do.end221, %if.then200.do.body225_crit_edge, %mos7840_set_uart_reg.exit174.do.body225_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_change_port_settings, %if.then237)) #8
          to label %do.end243 [label %if.then237], !srcloc !329

if.then237:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #10
  %dev238 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %120 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %shadowLCR, align 4
  %conv240 = zext i8 %121 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_change_port_settings.__UNIQUE_ID_ddebug292, ptr noundef %dev238, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.84, i32 noundef %conv240) #8
  br label %do.end243

do.end243:                                        ; preds = %if.then237, %do.body225
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mos7840_send_cmd_write_baud_rate(ptr nocapture noundef %mos7840_port, i32 noundef %baudRate) unnamed_addr #2 align 64 {
entry:
  %Data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.moschip_port, ptr %mos7840_port, i32 0, i32 4
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %Data) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_send_cmd_write_baud_rate, %if.then)) #8
          to label %if.end5 [label %if.then], !srcloc !329

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug278, ptr noundef %dev, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef %baudRate) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %2 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %Data, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_calc_baud_rate_divisor.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_send_cmd_write_baud_rate, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !329

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_calc_baud_rate_divisor.__UNIQUE_ID_ddebug277, ptr noundef %dev.i, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i32 noundef %baudRate) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 115201, i32 %baudRate)
  %cmp.i = icmp slt i32 %baudRate, 115201
  br i1 %cmp.i, label %if.else38.thread.i, label %if.end4.i

if.else38.thread.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = sdiv i32 115200, %baudRate
  br label %if.end50.sink.split.i

if.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 230401, i32 %baudRate)
  %cmp6.i = icmp ult i32 %baudRate, 230401
  br i1 %cmp6.i, label %if.end4.i.if.end50.sink.split.i_crit_edge, label %if.else.i

if.end4.i.if.end50.sink.split.i_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.sink.split.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 403201, i32 %baudRate)
  %cmp11.i = icmp ult i32 %baudRate, 403201
  br i1 %cmp11.i, label %if.else.i.if.end50.sink.split.i_crit_edge, label %if.else14.i

if.else.i.if.end50.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.sink.split.i

if.else14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 460801, i32 %baudRate)
  %cmp17.i = icmp ult i32 %baudRate, 460801
  br i1 %cmp17.i, label %if.else14.i.if.end50.sink.split.i_crit_edge, label %if.else20.i

if.else14.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.sink.split.i

if.else20.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 806401, i32 %baudRate)
  %cmp23.i = icmp ult i32 %baudRate, 806401
  br i1 %cmp23.i, label %if.else20.i.if.end50.sink.split.i_crit_edge, label %if.else26.i

if.else20.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.sink.split.i

if.else26.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 921601, i32 %baudRate)
  %cmp29.i = icmp ult i32 %baudRate, 921601
  br i1 %cmp29.i, label %if.else26.i.if.end50.sink.split.i_crit_edge, label %if.else32.i

if.else26.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.sink.split.i

if.else32.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572865, i32 %baudRate)
  %cmp35.i = icmp ult i32 %baudRate, 1572865
  br i1 %cmp35.i, label %if.else32.i.if.end50.sink.split.i_crit_edge, label %if.else38.i

if.else32.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.sink.split.i

if.else38.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145729, i32 %baudRate)
  %cmp41.i = icmp ult i32 %baudRate, 3145729
  br i1 %cmp41.i, label %if.else38.i.if.end50.sink.split.i_crit_edge, label %if.else38.i.mos7840_calc_baud_rate_divisor.exit_crit_edge

if.else38.i.mos7840_calc_baud_rate_divisor.exit_crit_edge: ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mos7840_calc_baud_rate_divisor.exit

if.else38.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.sink.split.i

if.end50.sink.split.i:                            ; preds = %if.else38.i.if.end50.sink.split.i_crit_edge, %if.else32.i.if.end50.sink.split.i_crit_edge, %if.else26.i.if.end50.sink.split.i_crit_edge, %if.else20.i.if.end50.sink.split.i_crit_edge, %if.else14.i.if.end50.sink.split.i_crit_edge, %if.else.i.if.end50.sink.split.i_crit_edge, %if.end4.i.if.end50.sink.split.i_crit_edge, %if.else38.thread.i
  %div.sink.i = phi i32 [ %div.i, %if.else38.thread.i ], [ 1, %if.end4.i.if.end50.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end50.sink.split.i_crit_edge ], [ 1, %if.else14.i.if.end50.sink.split.i_crit_edge ], [ 1, %if.else20.i.if.end50.sink.split.i_crit_edge ], [ 1, %if.else26.i.if.end50.sink.split.i_crit_edge ], [ 1, %if.else32.i.if.end50.sink.split.i_crit_edge ], [ 1, %if.else38.i.if.end50.sink.split.i_crit_edge ]
  %.sink.i = phi i16 [ 0, %if.else38.thread.i ], [ 16, %if.end4.i.if.end50.sink.split.i_crit_edge ], [ 32, %if.else.i.if.end50.sink.split.i_crit_edge ], [ 48, %if.else14.i.if.end50.sink.split.i_crit_edge ], [ 64, %if.else20.i.if.end50.sink.split.i_crit_edge ], [ 80, %if.else26.i.if.end50.sink.split.i_crit_edge ], [ 96, %if.else32.i.if.end50.sink.split.i_crit_edge ], [ 112, %if.else38.i.if.end50.sink.split.i_crit_edge ]
  br label %mos7840_calc_baud_rate_divisor.exit

mos7840_calc_baud_rate_divisor.exit:              ; preds = %if.end50.sink.split.i, %if.else38.i.mos7840_calc_baud_rate_divisor.exit_crit_edge
  %divisor.0 = phi i32 [ %div.sink.i, %if.end50.sink.split.i ], [ 0, %if.else38.i.mos7840_calc_baud_rate_divisor.exit_crit_edge ]
  %clk_sel_val.0 = phi i16 [ %.sink.i, %if.end50.sink.split.i ], [ 0, %if.else38.i.mos7840_calc_baud_rate_divisor.exit_crit_edge ]
  %SpRegOffset = getelementptr inbounds %struct.moschip_port, ptr %mos7840_port, i32 0, i32 5
  %3 = ptrtoint ptr %SpRegOffset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %SpRegOffset, align 4
  %conv = zext i8 %4 to i16
  %call7 = call fastcc i32 @mos7840_get_reg_sync(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef nonnull %Data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.body11, label %if.end28

do.body11:                                        ; preds = %mos7840_calc_baud_rate_divisor.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_send_cmd_write_baud_rate, %if.then23)) #8
          to label %cleanup [label %if.then23], !srcloc !329

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug279, ptr noundef %dev24, ptr noundef nonnull @.str.97) #8
  br label %cleanup

if.end28:                                         ; preds = %mos7840_calc_baud_rate_divisor.exit
  %5 = ptrtoint ptr %Data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %Data, align 2
  %7 = and i16 %6, 143
  %8 = ptrtoint ptr %SpRegOffset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %SpRegOffset, align 4
  %conv33 = zext i8 %9 to i16
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %clk_sel_val.0.masked = and i16 %clk_sel_val.0, 255
  %14 = or i16 %7, %clk_sel_val.0.masked
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_send_cmd_write_baud_rate, %if.then.i14)) #8
          to label %mos7840_set_reg_sync.exit [label %if.then.i14], !srcloc !329

if.then.i14:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %dev5.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv6.i = zext i8 %9 to i32
  %conv7.i = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, ptr noundef %dev5.i, ptr noundef nonnull @.str.7, i32 noundef %conv6.i, i32 noundef %conv7.i) #8
  br label %mos7840_set_reg_sync.exit

mos7840_set_reg_sync.exit:                        ; preds = %if.then.i14, %if.end28
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call9.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %14, i16 noundef zeroext %conv33, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp35 = icmp slt i32 %call9.i, 0
  br i1 %cmp35, label %do.body38, label %if.end55

do.body38:                                        ; preds = %mos7840_set_reg_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_send_cmd_write_baud_rate, %if.then50)) #8
          to label %cleanup [label %if.then50], !srcloc !329

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %dev51 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug280, ptr noundef %dev51, ptr noundef nonnull @.str.98) #8
  br label %cleanup

if.end55:                                         ; preds = %mos7840_set_reg_sync.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool56.not = icmp eq i32 %call9.i, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %dev61 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.95) #12
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %shadowLCR = getelementptr inbounds %struct.moschip_port, ptr %mos7840_port, i32 0, i32 2
  %17 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shadowLCR, align 4
  %19 = or i8 %18, -128
  %conv65 = zext i8 %19 to i16
  store i8 %19, ptr %shadowLCR, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %num_ports.i = getelementptr inbounds %struct.usb_serial, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_ports.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp.i16 = icmp eq i8 %25, 2
  br i1 %cmp.i16, label %land.lhs.true.i, label %if.end62.if.else.i17_crit_edge

if.end62.if.else.i17_crit_edge:                   ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i17

land.lhs.true.i:                                  ; preds = %if.end62
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp7.not.i = icmp eq i8 %27, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else.i17_crit_edge, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.if.else.i17_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i17

if.else.i17:                                      ; preds = %land.lhs.true.i.if.else.i17_crit_edge, %if.end62.if.else.i17_crit_edge
  %port_number14.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %port_number14.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port_number14.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i17, %land.lhs.true.i.do.body.i_crit_edge
  %.sink42.i = phi i8 [ %29, %if.else.i17 ], [ %27, %land.lhs.true.i.do.body.i_crit_edge ]
  %.sink.i18 = phi i16 [ 256, %if.else.i17 ], [ 512, %land.lhs.true.i.do.body.i_crit_edge ]
  %conv11.i = zext i8 %.sink42.i to i16
  %add.i = shl nuw i16 %conv11.i, 8
  %shl.i = add i16 %add.i, %.sink.i18
  %val.addr.0.i = or i16 %shl.i, %conv65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_send_cmd_write_baud_rate, %if.then24.i)) #8
          to label %mos7840_set_uart_reg.exit [label %if.then24.i], !srcloc !329

if.then24.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i = zext i16 %val.addr.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i) #8
  br label %mos7840_set_uart_reg.exit

mos7840_set_uart_reg.exit:                        ; preds = %if.then24.i, %do.body.i
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %23, align 8
  %shl.i.i19 = shl i32 %31, 8
  %or29.i = or i32 %shl.i.i19, -2147483648
  %call30.i = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or29.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %32 = trunc i32 %divisor.0 to i16
  %conv71 = and i16 %32, 255
  %33 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv71, ptr %Data, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_send_cmd_write_baud_rate, %if.then84)) #8
          to label %do.end89 [label %if.then84], !srcloc !329

if.then84:                                        ; preds = %mos7840_set_uart_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev85 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv86 = zext i16 %conv71 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug281, ptr noundef %dev85, ptr noundef nonnull @.str.100, i32 noundef %conv86) #8
  br label %do.end89

do.end89:                                         ; preds = %if.then84, %mos7840_set_uart_reg.exit
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %num_ports.i21 = getelementptr inbounds %struct.usb_serial, ptr %35, i32 0, i32 6
  %38 = ptrtoint ptr %num_ports.i21 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_ports.i21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp.i22 = icmp eq i8 %39, 2
  br i1 %cmp.i22, label %land.lhs.true.i25, label %do.end89.if.else.i27_crit_edge

do.end89.if.else.i27_crit_edge:                   ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i27

land.lhs.true.i25:                                ; preds = %do.end89
  %port_number.i23 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %port_number.i23 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %port_number.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp7.not.i24 = icmp eq i8 %41, 0
  br i1 %cmp7.not.i24, label %land.lhs.true.i25.if.else.i27_crit_edge, label %land.lhs.true.i25.do.body.i34_crit_edge

land.lhs.true.i25.do.body.i34_crit_edge:          ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i34

land.lhs.true.i25.if.else.i27_crit_edge:          ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i27

if.else.i27:                                      ; preds = %land.lhs.true.i25.if.else.i27_crit_edge, %do.end89.if.else.i27_crit_edge
  %port_number14.i26 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %port_number14.i26 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %port_number14.i26, align 4
  br label %do.body.i34

do.body.i34:                                      ; preds = %if.else.i27, %land.lhs.true.i25.do.body.i34_crit_edge
  %.sink42.i28 = phi i8 [ %43, %if.else.i27 ], [ %41, %land.lhs.true.i25.do.body.i34_crit_edge ]
  %.sink.i29 = phi i16 [ 256, %if.else.i27 ], [ 512, %land.lhs.true.i25.do.body.i34_crit_edge ]
  %conv11.i30 = zext i8 %.sink42.i28 to i16
  %add.i31 = shl nuw i16 %conv11.i30, 8
  %shl.i32 = add i16 %add.i31, %.sink.i29
  %val.addr.0.i33 = or i16 %shl.i32, %conv71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_send_cmd_write_baud_rate, %if.then24.i37)) #8
          to label %mos7840_set_uart_reg.exit42 [label %if.then24.i37], !srcloc !329

if.then24.i37:                                    ; preds = %do.body.i34
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i35 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i36 = zext i16 %val.addr.0.i33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i35, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i36) #8
  br label %mos7840_set_uart_reg.exit42

mos7840_set_uart_reg.exit42:                      ; preds = %if.then24.i37, %do.body.i34
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %37, align 8
  %shl.i.i38 = shl i32 %45, 8
  %or29.i39 = or i32 %shl.i.i38, -2147483648
  %call30.i40 = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or29.i39, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i33, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %46 = lshr i16 %32, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_send_cmd_write_baud_rate, %if.then106)) #8
          to label %do.end111 [label %if.then106], !srcloc !329

if.then106:                                       ; preds = %mos7840_set_uart_reg.exit42
  call void @__sanitizer_cov_trace_pc() #10
  %dev107 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv108 = zext i16 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug282, ptr noundef %dev107, ptr noundef nonnull @.str.101, i32 noundef %conv108) #8
  br label %do.end111

do.end111:                                        ; preds = %if.then106, %mos7840_set_uart_reg.exit42
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %num_ports.i43 = getelementptr inbounds %struct.usb_serial, ptr %48, i32 0, i32 6
  %51 = ptrtoint ptr %num_ports.i43 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_ports.i43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %cmp.i44 = icmp eq i8 %52, 2
  br i1 %cmp.i44, label %land.lhs.true.i47, label %do.end111.if.else.i49_crit_edge

do.end111.if.else.i49_crit_edge:                  ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i49

land.lhs.true.i47:                                ; preds = %do.end111
  %port_number.i45 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %port_number.i45 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %port_number.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp7.not.i46 = icmp eq i8 %54, 0
  br i1 %cmp7.not.i46, label %land.lhs.true.i47.if.else.i49_crit_edge, label %land.lhs.true.i47.do.body.i56_crit_edge

land.lhs.true.i47.do.body.i56_crit_edge:          ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i56

land.lhs.true.i47.if.else.i49_crit_edge:          ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i49

if.else.i49:                                      ; preds = %land.lhs.true.i47.if.else.i49_crit_edge, %do.end111.if.else.i49_crit_edge
  %port_number14.i48 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %port_number14.i48 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %port_number14.i48, align 4
  br label %do.body.i56

do.body.i56:                                      ; preds = %if.else.i49, %land.lhs.true.i47.do.body.i56_crit_edge
  %.sink42.i50 = phi i8 [ %56, %if.else.i49 ], [ %54, %land.lhs.true.i47.do.body.i56_crit_edge ]
  %.sink.i51 = phi i16 [ 256, %if.else.i49 ], [ 512, %land.lhs.true.i47.do.body.i56_crit_edge ]
  %conv11.i52 = zext i8 %.sink42.i50 to i16
  %add.i53 = shl nuw i16 %conv11.i52, 8
  %shl.i54 = add i16 %add.i53, %.sink.i51
  %val.addr.0.i55 = or i16 %shl.i54, %46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_send_cmd_write_baud_rate, %if.then24.i59)) #8
          to label %mos7840_set_uart_reg.exit64 [label %if.then24.i59], !srcloc !329

if.then24.i59:                                    ; preds = %do.body.i56
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i57 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i58 = zext i16 %val.addr.0.i55 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i57, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i58) #8
  br label %mos7840_set_uart_reg.exit64

mos7840_set_uart_reg.exit64:                      ; preds = %if.then24.i59, %do.body.i56
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %50, align 8
  %shl.i.i60 = shl i32 %58, 8
  %or29.i61 = or i32 %shl.i.i60, -2147483648
  %call30.i62 = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or29.i61, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i55, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %59 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %shadowLCR, align 4
  %61 = and i8 %60, 127
  %conv116 = zext i8 %61 to i16
  %62 = ptrtoint ptr %Data to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv116, ptr %Data, align 2
  store i8 %61, ptr %shadowLCR, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %num_ports.i65 = getelementptr inbounds %struct.usb_serial, ptr %64, i32 0, i32 6
  %67 = ptrtoint ptr %num_ports.i65 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num_ports.i65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %cmp.i66 = icmp eq i8 %68, 2
  br i1 %cmp.i66, label %land.lhs.true.i69, label %mos7840_set_uart_reg.exit64.if.else.i71_crit_edge

mos7840_set_uart_reg.exit64.if.else.i71_crit_edge: ; preds = %mos7840_set_uart_reg.exit64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i71

land.lhs.true.i69:                                ; preds = %mos7840_set_uart_reg.exit64
  %port_number.i67 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %port_number.i67 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %port_number.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp7.not.i68 = icmp eq i8 %70, 0
  br i1 %cmp7.not.i68, label %land.lhs.true.i69.if.else.i71_crit_edge, label %land.lhs.true.i69.do.body.i78_crit_edge

land.lhs.true.i69.do.body.i78_crit_edge:          ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i78

land.lhs.true.i69.if.else.i71_crit_edge:          ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i71

if.else.i71:                                      ; preds = %land.lhs.true.i69.if.else.i71_crit_edge, %mos7840_set_uart_reg.exit64.if.else.i71_crit_edge
  %port_number14.i70 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %71 = ptrtoint ptr %port_number14.i70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %port_number14.i70, align 4
  br label %do.body.i78

do.body.i78:                                      ; preds = %if.else.i71, %land.lhs.true.i69.do.body.i78_crit_edge
  %.sink42.i72 = phi i8 [ %72, %if.else.i71 ], [ %70, %land.lhs.true.i69.do.body.i78_crit_edge ]
  %.sink.i73 = phi i16 [ 256, %if.else.i71 ], [ 512, %land.lhs.true.i69.do.body.i78_crit_edge ]
  %conv11.i74 = zext i8 %.sink42.i72 to i16
  %add.i75 = shl nuw i16 %conv11.i74, 8
  %shl.i76 = add i16 %add.i75, %.sink.i73
  %val.addr.0.i77 = or i16 %shl.i76, %conv116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mos7840_send_cmd_write_baud_rate, %if.then24.i81)) #8
          to label %mos7840_set_uart_reg.exit86 [label %if.then24.i81], !srcloc !329

if.then24.i81:                                    ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i79 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv26.i80 = zext i16 %val.addr.0.i77 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, ptr noundef %dev25.i79, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv26.i80) #8
  br label %mos7840_set_uart_reg.exit86

mos7840_set_uart_reg.exit86:                      ; preds = %if.then24.i81, %do.body.i78
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %66, align 8
  %shl.i.i82 = shl i32 %74, 8
  %or29.i83 = or i32 %shl.i.i82, -2147483648
  %call30.i84 = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or29.i83, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i77, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  br label %cleanup

cleanup:                                          ; preds = %mos7840_set_uart_reg.exit86, %do.end60, %if.then50, %do.body38, %if.then23, %do.body11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %Data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !110, !112, !114, !115, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !145, !146, !147, !149, !150, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !191, !193, !194, !196, !197, !198, !200, !201, !203, !204, !206, !207, !208, !209, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !229, !231, !233, !234, !235, !237, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !258, !260, !261, !263, !265, !266, !268, !269, !270, !272, !273, !275, !276, !278, !279, !280, !282, !283, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !314, !315, !317, !318, !319}
!llvm.module.flags = !{!320, !321, !322, !323, !324, !325, !326, !327}
!llvm.ident = !{!328}

!0 = !{ptr @__initcall__kmod_mos7840__322_1771_usb_serial_module_init6, !1, !"__initcall__kmod_mos7840__322_1771_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/mos7840.c", i32 1771, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description323, !4, !"__UNIQUE_ID_description323", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/mos7840.c", i32 1773, i32 1}
!5 = !{ptr @__UNIQUE_ID_file324, !6, !"__UNIQUE_ID_file324", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/mos7840.c", i32 1774, i32 1}
!7 = !{ptr @__UNIQUE_ID_license325, !6, !"__UNIQUE_ID_license325", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @id_table, !10, !"id_table", i1 false, i1 false}
!10 = !{!"../drivers/usb/serial/mos7840.c", i32 168, i32 35}
!11 = !{ptr @serial_drivers, !12, !"serial_drivers", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/mos7840.c", i32 1767, i32 41}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/mos7840.c", i32 1743, i32 17}
!15 = !{ptr @moschip7840_4port_device, !16, !"moschip7840_4port_device", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/mos7840.c", i32 1738, i32 33}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/mos7840.c", i32 1524, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mos7840_attach.__UNIQUE_ID_ddebug295, !18, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/serial/mos7840.c", i32 1526, i32 3}
!24 = !{ptr @mos7840_attach.__UNIQUE_ID_ddebug296, !23, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/serial/mos7840.c", i32 232, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mos7840_set_reg_sync.__UNIQUE_ID_ddebug238, !26, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/mos7840.c", i32 1507, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mos7840_calc_num_ports._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @mos7840_calc_num_ports._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/serial/mos7840.c", i32 1545, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug297, !37, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!40 = !{ptr @mos7840_port_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/usb/serial/mos7840.c", i32 1555, i32 2}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/mos7840.c", i32 1561, i32 2}
!45 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug298, !44, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/serial/mos7840.c", i32 1562, i32 2}
!48 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug299, !47, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/serial/mos7840.c", i32 1586, i32 3}
!51 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug300, !50, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/serial/mos7840.c", i32 1589, i32 3}
!54 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug301, !53, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/mos7840.c", i32 1598, i32 3}
!57 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug302, !56, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/serial/mos7840.c", i32 1601, i32 3}
!60 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug303, !59, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/mos7840.c", i32 1609, i32 3}
!63 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug304, !62, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/serial/mos7840.c", i32 1612, i32 3}
!66 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug305, !65, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/serial/mos7840.c", i32 1618, i32 3}
!69 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug306, !68, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/serial/mos7840.c", i32 1621, i32 3}
!72 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug307, !71, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/mos7840.c", i32 1627, i32 3}
!75 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug308, !74, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/mos7840.c", i32 1630, i32 3}
!78 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug309, !77, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/serial/mos7840.c", i32 1636, i32 3}
!81 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug310, !80, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/serial/mos7840.c", i32 1639, i32 3}
!84 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug311, !83, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/serial/mos7840.c", i32 1644, i32 3}
!87 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug312, !86, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/serial/mos7840.c", i32 1647, i32 3}
!90 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug313, !89, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/serial/mos7840.c", i32 1653, i32 3}
!93 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug314, !92, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/serial/mos7840.c", i32 1656, i32 3}
!96 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug315, !95, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/serial/mos7840.c", i32 1664, i32 3}
!99 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug316, !98, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/serial/mos7840.c", i32 1667, i32 4}
!102 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug317, !101, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/serial/mos7840.c", i32 1670, i32 4}
!105 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug318, !104, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!106 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug319, !107, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!107 = !{!"../drivers/usb/serial/mos7840.c", i32 1676, i32 3}
!108 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug320, !109, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!109 = !{!"../drivers/usb/serial/mos7840.c", i32 1679, i32 4}
!110 = !{ptr @mos7840_port_probe.__UNIQUE_ID_ddebug321, !111, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!111 = !{!"../drivers/usb/serial/mos7840.c", i32 1682, i32 4}
!112 = !{ptr @mos7840_port_probe.__key.36, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/usb/serial/mos7840.c", i32 1698, i32 3}
!114 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mos7840_port_probe.__key.38, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/usb/serial/mos7840.c", i32 1701, i32 3}
!117 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/serial/mos7840.c", i32 338, i32 2}
!120 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @mos7840_dump_serial_port.__UNIQUE_ID_ddebug242, !119, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/serial/mos7840.c", i32 339, i32 2}
!124 = !{ptr @mos7840_dump_serial_port.__UNIQUE_ID_ddebug243, !123, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!125 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/serial/mos7840.c", i32 340, i32 2}
!127 = !{ptr @mos7840_dump_serial_port.__UNIQUE_ID_ddebug244, !126, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/serial/mos7840.c", i32 266, i32 2}
!130 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @mos7840_get_reg_sync.__UNIQUE_ID_ddebug239, !129, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/serial/mos7840.c", i32 290, i32 2}
!134 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @mos7840_set_uart_reg.__UNIQUE_ID_ddebug240, !133, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!136 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/serial/mos7840.c", i32 361, i32 3}
!138 = !{ptr @.str.49, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @mos7840_set_led_callback.__UNIQUE_ID_ddebug245, !137, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/serial/mos7840.c", i32 365, i32 3}
!142 = !{ptr @mos7840_set_led_callback.__UNIQUE_ID_ddebug246, !141, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/serial/mos7840.c", i32 558, i32 3}
!145 = !{ptr @.str.52, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug251, !144, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/serial/mos7840.c", i32 564, i32 3}
!149 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug252, !148, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!150 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug253, !151, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!151 = !{!"../drivers/usb/serial/mos7840.c", i32 571, i32 3}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/serial/mos7840.c", i32 580, i32 3}
!154 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug254, !153, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!155 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/serial/mos7840.c", i32 588, i32 3}
!157 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug255, !156, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!158 = !{ptr @.str.56, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/serial/mos7840.c", i32 599, i32 3}
!160 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug256, !159, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!161 = !{ptr @.str.57, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/serial/mos7840.c", i32 606, i32 3}
!163 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug257, !162, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!164 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug258, !165, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!165 = !{!"../drivers/usb/serial/mos7840.c", i32 613, i32 3}
!166 = !{ptr @.str.58, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/serial/mos7840.c", i32 674, i32 2}
!168 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug259, !167, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!169 = !{ptr @.str.59, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/serial/mos7840.c", i32 675, i32 2}
!171 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug260, !170, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!172 = !{ptr @.str.60, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/serial/mos7840.c", i32 676, i32 2}
!174 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug261, !173, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!175 = !{ptr @.str.61, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/serial/mos7840.c", i32 677, i32 2}
!177 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug262, !176, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!178 = !{ptr @.str.62, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/serial/mos7840.c", i32 678, i32 2}
!180 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug263, !179, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!181 = !{ptr @.str.63, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/serial/mos7840.c", i32 679, i32 2}
!183 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug264, !182, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!184 = !{ptr @.str.64, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/serial/mos7840.c", i32 701, i32 2}
!186 = !{ptr @mos7840_open.__UNIQUE_ID_ddebug265, !185, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!187 = !{ptr @.str.65, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/serial/mos7840.c", i32 705, i32 3}
!189 = !{ptr @mos7840_open._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @mos7840_open._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.66, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/serial/mos7840.c", i32 319, i32 2}
!193 = !{ptr @mos7840_get_uart_reg.__UNIQUE_ID_ddebug241, !192, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!194 = !{ptr @.str.67, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/serial/mos7840.c", i32 865, i32 4}
!196 = !{ptr @.str.68, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @mos7840_write.__UNIQUE_ID_ddebug269, !195, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!198 = !{ptr @.str.69, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/serial/mos7840.c", i32 872, i32 3}
!200 = !{ptr @mos7840_write.__UNIQUE_ID_ddebug270, !199, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!201 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/serial/mos7840.c", i32 907, i32 2}
!203 = !{ptr @mos7840_write.__UNIQUE_ID_ddebug273, !202, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!204 = distinct !{null, !205, !"__print_once", i1 false, i1 false}
!205 = !{!"../drivers/usb/serial/mos7840.c", i32 917, i32 3}
!206 = !{ptr @.str.71, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @mos7840_write._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @mos7840_write._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.72, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/serial/mos7840.c", i32 924, i32 2}
!211 = !{ptr @mos7840_write.__UNIQUE_ID_ddebug274, !210, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!212 = !{ptr @.str.73, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/serial/mos7840.c", i32 493, i32 3}
!214 = !{ptr @.str.74, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @mos7840_bulk_out_data_callback.__UNIQUE_ID_ddebug250, !213, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!216 = !{ptr @.str.75, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/serial/mos7840.c", i32 830, i32 2}
!218 = !{ptr @.str.76, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @mos7840_write_room.__UNIQUE_ID_ddebug268, !217, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!220 = !{ptr @.str.77, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/serial/mos7840.c", i32 1394, i32 3}
!222 = !{ptr @.str.78, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @mos7840_ioctl.__UNIQUE_ID_ddebug294, !221, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!224 = distinct !{null, !225, !"__already_done", i1 false, i1 false}
!225 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!226 = distinct !{null, !225, !"<string literal>", i1 false, i1 false}
!227 = distinct !{null, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!229 = !{ptr @.str.81, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!231 = !{ptr @.str.82, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/serial/mos7840.c", i32 1346, i32 4}
!233 = !{ptr @.str.83, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @mos7840_set_termios.__UNIQUE_ID_ddebug293, !232, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!235 = !{ptr @.str.84, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/serial/mos7840.c", i32 1232, i32 4}
!237 = !{ptr @.str.85, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug283, !236, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!239 = !{ptr @.str.86, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/serial/mos7840.c", i32 1235, i32 4}
!241 = !{ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug284, !240, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!242 = !{ptr @.str.87, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/serial/mos7840.c", i32 1239, i32 3}
!244 = !{ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug285, !243, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!245 = !{ptr @.str.88, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/serial/mos7840.c", i32 1248, i32 3}
!247 = !{ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug286, !246, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!248 = !{ptr @.str.89, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/serial/mos7840.c", i32 1251, i32 3}
!250 = !{ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug287, !249, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!251 = !{ptr @.str.90, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/usb/serial/mos7840.c", i32 1259, i32 2}
!253 = !{ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug288, !252, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!254 = !{ptr @.str.91, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/usb/serial/mos7840.c", i32 1301, i32 3}
!256 = !{ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug289, !255, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!257 = !{ptr @.str.92, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.93, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/serial/mos7840.c", i32 1305, i32 2}
!260 = !{ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug290, !259, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!261 = !{ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug291, !262, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!262 = !{!"../drivers/usb/serial/mos7840.c", i32 1316, i32 4}
!263 = !{ptr @.str.94, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/serial/mos7840.c", i32 1321, i32 2}
!265 = !{ptr @mos7840_change_port_settings.__UNIQUE_ID_ddebug292, !264, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!266 = !{ptr @.str.95, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/serial/mos7840.c", i32 1106, i32 2}
!268 = !{ptr @.str.96, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug278, !267, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!270 = !{ptr @.str.97, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/serial/mos7840.c", i32 1145, i32 4}
!272 = !{ptr @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug279, !271, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!273 = !{ptr @.str.98, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/serial/mos7840.c", i32 1152, i32 4}
!275 = !{ptr @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug280, !274, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!276 = !{ptr @.str.99, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/serial/mos7840.c", i32 1158, i32 4}
!278 = !{ptr @mos7840_send_cmd_write_baud_rate._entry, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @mos7840_send_cmd_write_baud_rate._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.100, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/serial/mos7840.c", i32 1168, i32 3}
!282 = !{ptr @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug281, !281, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!283 = !{ptr @.str.101, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/serial/mos7840.c", i32 1172, i32 3}
!285 = !{ptr @mos7840_send_cmd_write_baud_rate.__UNIQUE_ID_ddebug282, !284, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!286 = !{ptr @.str.102, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/usb/serial/mos7840.c", i32 1060, i32 2}
!288 = !{ptr @.str.103, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @mos7840_calc_baud_rate_divisor.__UNIQUE_ID_ddebug277, !287, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!290 = !{ptr @.str.104, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/usb/serial/mos7840.c", i32 803, i32 2}
!292 = !{ptr @.str.105, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @mos7840_break.__UNIQUE_ID_ddebug267, !291, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!294 = !{ptr @.str.106, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/usb/serial/mos7840.c", i32 749, i32 2}
!296 = !{ptr @mos7840_chars_in_buffer.__UNIQUE_ID_ddebug266, !295, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!297 = !{ptr @.str.107, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/serial/mos7840.c", i32 1011, i32 2}
!299 = !{ptr @.str.108, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @mos7840_tiocmget.__UNIQUE_ID_ddebug275, !298, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!301 = !{ptr @.str.109, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/usb/serial/mos7840.c", i32 1044, i32 3}
!303 = !{ptr @.str.110, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @mos7840_tiocmset.__UNIQUE_ID_ddebug276, !302, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!305 = !{ptr @.str.111, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/serial/mos7840.c", i32 441, i32 3}
!307 = !{ptr @.str.112, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @mos7840_bulk_in_callback.__UNIQUE_ID_ddebug247, !306, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!309 = !{ptr @.str.113, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/serial/mos7840.c", i32 454, i32 3}
!311 = !{ptr @mos7840_bulk_in_callback.__UNIQUE_ID_ddebug248, !310, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!312 = !{ptr @.str.114, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/usb/serial/mos7840.c", i32 464, i32 3}
!314 = !{ptr @mos7840_bulk_in_callback.__UNIQUE_ID_ddebug249, !313, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!315 = !{ptr @.str.115, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!317 = !{ptr @.str.116, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.117, !316, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !316, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"min_enum_size", i32 4}
!322 = !{i32 8, !"branch-target-enforcement", i32 0}
!323 = !{i32 8, !"sign-return-address", i32 0}
!324 = !{i32 8, !"sign-return-address-all", i32 0}
!325 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"uwtable", i32 1}
!327 = !{i32 7, !"frame-pointer", i32 2}
!328 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!329 = !{i64 2148743458, i64 2148743463, i64 2148743476, i64 2148743520, i64 2148743554, i64 2148743575}
!330 = !{!"auto-init"}
!331 = !{i8 0, i8 2}
!332 = !{i64 2148358469}
!333 = !{i64 2148268888, i64 2148268920, i64 2148268949, i64 2148268983, i64 2148269014, i64 2148269037}
!334 = !{i64 2148270501, i64 2148270533, i64 2148270562, i64 2148270596, i64 2148270627, i64 2148270650}
!335 = !{i64 2148359582}
!336 = !{i64 2152636390, i64 2152636415}
