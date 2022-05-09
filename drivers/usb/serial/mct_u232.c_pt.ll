; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/mct_u232.c_pt.bc'
source_filename = "../drivers/usb/serial/mct_u232.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kfifo = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.mct_u232_private = type { ptr, %struct.spinlock, i32, i8, i8, i8, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_mct_u232__248_772_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mct_u232_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [54 x i8] c"mct_u232.author=Wolfgang Grandegger <wolfgang@ces.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [73 x i8] c"mct_u232.description=Magic Control Technology USB-RS232 converter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [42 x i8] c"mct_u232.file=drivers/usb/serial/mct_u232\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [21 x i8] c"mct_u232.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mct_u232\00", [23 x i8] zeroinitializer }, align 32
@id_table = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1809, i16 528, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1809, i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1809, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@mct_u232_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mct_u232_port_probe, ptr @mct_u232_port_remove, ptr null, ptr null, ptr null, ptr @mct_u232_open, ptr @mct_u232_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mct_u232_set_termios, ptr @mct_u232_break_ctl, ptr null, ptr null, ptr null, ptr @mct_u232_throttle, ptr @mct_u232_unthrottle, ptr @mct_u232_tiocmget, ptr @mct_u232_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr @mct_u232_dtr_rts, ptr null, ptr null, ptr @mct_u232_read_int_callback, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MCT U232\00", [23 x i8] zeroinitializer }, align 32
@mct_u232_port_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 384, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"expected endpoint missing\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mct_u232_port_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/serial/mct_u232.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mct_u232_port_probe._entry_ptr = internal global ptr @mct_u232_port_probe._entry, section ".printk_index", align 4
@mct_u232_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mct_u232_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 461, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"usb_submit_urb(read) failed pipe 0x%x err %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mct_u232_open\00", [18 x i8] zeroinitializer }, align 32
@mct_u232_open._entry_ptr = internal global ptr @mct_u232_open._entry, section ".printk_index", align 4
@mct_u232_open._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 470, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"usb_submit_urb(read int) failed pipe 0x%x err %d\00", [47 x i8] zeroinitializer }, align 32
@mct_u232_open._entry_ptr.12 = internal global ptr @mct_u232_open._entry.10, section ".printk_index", align 4
@mct_u232_set_modem_ctrl.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mct_u232_set_modem_ctrl\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"set_modem_ctrl: state=0x%x ==> mcr=0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@mct_u232_set_modem_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 299, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Set MODEM CTRL 0x%x failed (error = %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@mct_u232_set_modem_ctrl._entry_ptr = internal global ptr @mct_u232_set_modem_ctrl._entry, section ".printk_index", align 4
@mct_u232_set_line_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Set LINE CTRL 0x%x failed (error = %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mct_u232_set_line_ctrl\00", [41 x i8] zeroinitializer }, align 32
@mct_u232_set_line_ctrl._entry_ptr = internal global ptr @mct_u232_set_line_ctrl._entry, section ".printk_index", align 4
@mct_u232_set_line_ctrl.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_line_ctrl: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@mct_u232_get_modem_stat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 322, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Get MODEM STATus failed (error = %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mct_u232_get_modem_stat\00", [40 x i8] zeroinitializer }, align 32
@mct_u232_get_modem_stat._entry_ptr = internal global ptr @mct_u232_get_modem_stat._entry, section ".printk_index", align 4
@mct_u232_get_modem_stat.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get_modem_stat: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@mct_u232_msr_to_state.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mct_u232_msr_to_state\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"msr_to_state: msr=0x%x ==> state=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@mct_u232_set_termios.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mct_u232_set_termios\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: baud was B0\0A\00", [47 x i8] zeroinitializer }, align 32
@mct_u232_set_termios.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.26, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: baud is B0\0A\00", [16 x i8] zeroinitializer }, align 32
@mct_u232_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.4, i32 659, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CSIZE was not CS5-CS8, using default of 8\0A\00", [53 x i8] zeroinitializer }, align 32
@mct_u232_set_termios._entry_ptr = internal global ptr @mct_u232_set_termios._entry, section ".printk_index", align 4
@mct_u232_set_baud_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Set BAUD RATE %d failed (error = %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mct_u232_set_baud_rate\00", [41 x i8] zeroinitializer }, align 32
@mct_u232_set_baud_rate._entry_ptr = internal global ptr @mct_u232_set_baud_rate._entry, section ".printk_index", align 4
@mct_u232_set_baud_rate.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"set_baud_rate: value: 0x%x, divisor: 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@mct_u232_set_baud_rate._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.4, i32 227, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Sending USB device request code %d failed (error = %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@mct_u232_set_baud_rate._entry_ptr.33 = internal global ptr @mct_u232_set_baud_rate._entry.31, section ".printk_index", align 4
@mct_u232_set_baud_rate.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.4, ptr @.str.34, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"set_baud_rate: send second control message, data = %02X\0A\00", [39 x i8] zeroinitializer }, align 32
@mct_u232_set_baud_rate._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.4, i32 242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mct_u232_set_baud_rate._entry_ptr.36 = internal global ptr @mct_u232_set_baud_rate._entry.35, section ".printk_index", align 4
@mct_u232_read_int_callback.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.4, ptr @.str.38, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mct_u232_read_int_callback\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mct_u232_read_int_callback.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.4, ptr @.str.39, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mct_u232_read_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.4, i32 591, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mct_u232_read_int_callback._entry_ptr = internal global ptr @mct_u232_read_int_callback._entry, section ".printk_index", align 4
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.42, ptr @.str.43, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 2305, i64 12290]
@__sancov_gen_cov_switch_values.46 = internal global [12 x i64] [i64 10, i64 32, i64 300, i64 600, i64 1200, i64 2400, i64 4800, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200]
@__sancov_gen_cov_switch_values.47 = internal global [12 x i64] [i64 10, i64 32, i64 300, i64 600, i64 1200, i64 2400, i64 4800, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200]
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 93, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 772, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 60, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"mct_u232_device\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 69, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 74, i32 22 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 384, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 396, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 459, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 468, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 296, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 299, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 265, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 266, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 322, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 331, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 370, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 622, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 630, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 658, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 195, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 199, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 225, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 232, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 241, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 523, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 527, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private constant [33 x i8] c"../drivers/usb/serial/mct_u232.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 589, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 393, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_mct_u232__248_772_usb_serial_module_init6, ptr @mct_u232_get_modem_stat._entry, ptr @mct_u232_get_modem_stat._entry_ptr, ptr @mct_u232_open._entry, ptr @mct_u232_open._entry.10, ptr @mct_u232_open._entry_ptr, ptr @mct_u232_open._entry_ptr.12, ptr @mct_u232_port_probe._entry, ptr @mct_u232_port_probe._entry_ptr, ptr @mct_u232_read_int_callback._entry, ptr @mct_u232_read_int_callback._entry_ptr, ptr @mct_u232_set_baud_rate._entry, ptr @mct_u232_set_baud_rate._entry.31, ptr @mct_u232_set_baud_rate._entry.35, ptr @mct_u232_set_baud_rate._entry_ptr, ptr @mct_u232_set_baud_rate._entry_ptr.33, ptr @mct_u232_set_baud_rate._entry_ptr.36, ptr @mct_u232_set_line_ctrl._entry, ptr @mct_u232_set_line_ctrl._entry_ptr, ptr @mct_u232_set_modem_ctrl._entry, ptr @mct_u232_set_modem_ctrl._entry_ptr, ptr @mct_u232_set_termios._entry, ptr @mct_u232_set_termios._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @mct_u232_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mct_u232_port_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_port_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_open._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_set_modem_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_set_line_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_get_modem_stat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_set_baud_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_set_baud_rate._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_set_baud_rate._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_u232_read_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }]
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
define internal i32 @mct_u232_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %arrayidx = getelementptr %struct.usb_serial, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_in_urb, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 60) #11
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %interrupt_in_urb11 = getelementptr inbounds %struct.usb_serial_port, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %interrupt_in_urb11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interrupt_in_urb11, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call7.i.i, align 8
  %context = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 27
  %12 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %port, ptr %context, align 4
  %lock = getelementptr inbounds %struct.mct_u232_private, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mct_u232_port_probe.__key, i16 noundef signext 3) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mct_u232_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
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
define internal i32 @mct_u232_open(ptr noundef readonly %tty, ptr noundef %port) #2 align 64 {
entry:
  %last_msr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %last_msr) #7
  %4 = ptrtoint ptr %last_msr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %last_msr, align 1, !annotation !121
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 16, i32 8
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12290, i16 %8)
  %cmp = icmp eq i16 %8, 12290
  br i1 %cmp, label %if.then, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 20
  %9 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %bulk_out_size, align 4
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  %lock = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 1
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %tobool.not = icmp eq ptr %tty, null
  br i1 %tobool.not, label %do.body4.if.else_crit_edge, label %land.lhs.true

do.body4.if.else_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %do.body4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %10 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_cflag, align 4
  %and = and i32 %11, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.body4.if.else_crit_edge
  br label %if.end15

if.end15:                                         ; preds = %if.else, %land.lhs.true.if.end15_crit_edge
  %.sink = phi i32 [ 0, %if.else ], [ 6, %land.lhs.true.if.end15_crit_edge ]
  %control_state14 = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %control_state14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %control_state14, align 4
  %last_lcr16 = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %last_lcr16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %last_lcr16, align 4
  %control_state17 = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #7
  %call20 = tail call fastcc i32 @mct_u232_set_modem_ctrl(ptr noundef %port, i32 noundef %.sink)
  tail call fastcc void @mct_u232_set_line_ctrl(ptr noundef %port, i8 noundef zeroext 3)
  call fastcc void @mct_u232_get_modem_stat(ptr noundef %port, ptr noundef nonnull %last_msr)
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %14 = ptrtoint ptr %last_msr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %last_msr, align 1
  %last_msr37 = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %last_msr37 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %last_msr37, align 2
  %conv.i = zext i8 %15 to i32
  %17 = ptrtoint ptr %control_state17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %control_state17, align 4
  %and1.i = and i32 %18, -481
  %and.i = shl nuw nsw i32 %conv.i, 3
  %19 = and i32 %and.i, 256
  %and3.i = shl nuw nsw i32 %conv.i, 1
  %and19.i = lshr i32 %conv.i, 1
  %20 = and i32 %and19.i, 64
  %storemerge44.i = and i32 %and3.i, 160
  %storemerge.i = or i32 %storemerge44.i, %20
  %storemerge45.i = or i32 %storemerge.i, %19
  %storemerge46.i = or i32 %storemerge45.i, %and1.i
  store i32 %storemerge46.i, ptr %control_state17, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mct_u232_msr_to_state.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_open, %if.then29.i)) #7
          to label %mct_u232_msr_to_state.exit [label %if.then29.i], !srcloc !122

if.then29.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %21 = ptrtoint ptr %control_state17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %control_state17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mct_u232_msr_to_state.__UNIQUE_ID_ddebug243, ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %conv.i, i32 noundef %22) #7
  br label %mct_u232_msr_to_state.exit

mct_u232_msr_to_state.exit:                       ; preds = %if.then29.i, %if.end15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call32) #7
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %call41 = tail call i32 @usb_submit_urb(ptr noundef %24, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %mct_u232_msr_to_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev47 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %read_urb48 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %25 = ptrtoint ptr %read_urb48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_urb48, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pipe, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.8, i32 noundef %28, i32 noundef %call41) #10
  br label %cleanup

if.end49:                                         ; preds = %mct_u232_msr_to_state.exit
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %29 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interrupt_in_urb, align 4
  %call50 = tail call i32 @usb_submit_urb(ptr noundef %30, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %if.then52

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  tail call void @usb_kill_urb(ptr noundef %32) #7
  %dev57 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %33 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %interrupt_in_urb, align 4
  %pipe59 = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %pipe59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pipe59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.11, i32 noundef %36, i32 noundef %call50) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end49.cleanup_crit_edge, %do.end46
  %retval.0 = phi i32 [ 0, %if.end49.cleanup_crit_edge ], [ %call41, %do.end46 ], [ %call50, %if.then52 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %last_msr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mct_u232_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #7
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %4 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #7
  tail call void @usb_serial_generic_close(ptr noundef %port) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mct_u232_set_termios(ptr noundef %tty, ptr noundef %port, ptr nocapture noundef readonly %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %c_cflag3 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %6 = ptrtoint ptr %c_cflag3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag3, align 4
  %lock = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %control_state9 = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %control_state9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control_state9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  %and = and i32 %7, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %do.body13, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.body13:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mct_u232_set_termios.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_set_termios, %if.then18)) #7
          to label %do.end20 [label %if.then18], !srcloc !122

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mct_u232_set_termios.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #7
  br label %do.end20

do.end20:                                         ; preds = %if.then18, %do.body13
  %or = or i32 %9, 6
  %call21 = tail call fastcc i32 @mct_u232_set_modem_ctrl(ptr noundef %port, i32 noundef %or)
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %entry.if.end22_crit_edge
  %control_state.0 = phi i32 [ %or, %do.end20 ], [ %9, %entry.if.end22_crit_edge ]
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #7
  tail call fastcc void @mct_u232_set_baud_rate(ptr noundef %tty, ptr noundef %1, ptr noundef %port, i32 noundef %call.i)
  %and25 = and i32 %5, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26 = icmp eq i32 %and25, 0
  br i1 %cmp26, label %do.body29, label %if.end22.if.end48_crit_edge

if.end22.if.end48_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.body29:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mct_u232_set_termios.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_set_termios, %if.then41)) #7
          to label %do.end45 [label %if.then41], !srcloc !122

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mct_u232_set_termios.__UNIQUE_ID_ddebug247, ptr noundef %dev42, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24) #7
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %and46 = and i32 %control_state.0, -7
  %call47 = tail call fastcc i32 @mct_u232_set_modem_ctrl(ptr noundef %port, i32 noundef %and46)
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.end22.if.end48_crit_edge
  %control_state.1 = phi i32 [ %and46, %do.end45 ], [ %control_state.0, %if.end22.if.end48_crit_edge ]
  %and49 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %and52 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %conv56 = select i1 %tobool53.not, i8 24, i8 8
  %last_lcr.0 = select i1 %tobool50.not, i8 0, i8 %conv56
  %and61 = lshr i32 %5, 4
  %10 = and i32 %and61, 3
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end60.unreachabledefault [
    i32 0, label %if.end48.sw.epilog_crit_edge
    i32 1, label %sw.bb65
    i32 2, label %sw.bb69
    i32 3, label %sw.bb73
  ]

if.end48.sw.epilog_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %12 = or i8 %last_lcr.0, 1
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i8 %last_lcr.0, 2
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i8 %last_lcr.0, 3
  br label %sw.epilog

if.end60.unreachabledefault:                      ; preds = %if.end48
  unreachable

sw.epilog:                                        ; preds = %sw.bb73, %sw.bb69, %sw.bb65, %if.end48.sw.epilog_crit_edge
  %last_lcr.1 = phi i8 [ %14, %sw.bb73 ], [ %13, %sw.bb69 ], [ %12, %sw.bb65 ], [ %last_lcr.0, %if.end48.sw.epilog_crit_edge ]
  %15 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c_cflag, align 4
  %and85 = and i32 %16, -1073741825
  store i32 %and85, ptr %c_cflag, align 4
  %17 = trunc i32 %5 to i8
  %18 = lshr i8 %17, 4
  %19 = and i8 %18, 4
  %conv91 = or i8 %last_lcr.1, %19
  tail call fastcc void @mct_u232_set_line_ctrl(ptr noundef %port, i8 noundef zeroext %conv91)
  %call102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %20 = ptrtoint ptr %control_state9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %control_state.1, ptr %control_state9, align 4
  %last_lcr108 = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %last_lcr108 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv91, ptr %last_lcr108, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call102) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mct_u232_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %last_lcr = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %last_lcr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %last_lcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %6 = or i8 %5, 64
  %spec.select = select i1 %tobool.not, i8 %5, i8 %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  tail call fastcc void @mct_u232_set_line_ctrl(ptr noundef %1, i8 noundef zeroext %spec.select)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mct_u232_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %rx_flags = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %rx_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %rx_flags, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %control_state1 = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %control_state1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control_state1, align 4
  %and2 = and i32 %9, -5
  store i32 %and2, ptr %control_state1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %call5 = tail call fastcc i32 @mct_u232_set_modem_ctrl(ptr noundef %1, i32 noundef %and2)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mct_u232_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %rx_flags = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %rx_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool2.not = icmp sgt i32 %7, -1
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %and4 = and i32 %5, -2
  %8 = ptrtoint ptr %rx_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and4, ptr %rx_flags, align 4
  %control_state5 = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %control_state5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %control_state5, align 4
  %or = or i32 %10, 4
  store i32 %or, ptr %control_state5, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %call8 = tail call fastcc i32 @mct_u232_set_modem_ctrl(ptr noundef %1, i32 noundef %or)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mct_u232_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %control_state6 = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %control_state6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %control_state6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mct_u232_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %control_state6 = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %control_state6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %control_state6, align 4
  %6 = and i32 %set, 6
  %7 = or i32 %6, %5
  %and12 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and15 = and i32 %7, -5
  %control_state.2 = select i1 %tobool13.not, i32 %7, i32 %and15
  %and17 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %and20 = and i32 %control_state.2, -3
  %control_state.3 = select i1 %tobool18.not, i32 %control_state.2, i32 %and20
  %8 = ptrtoint ptr %control_state6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %control_state.3, ptr %control_state6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %call24 = tail call fastcc i32 @mct_u232_set_modem_ctrl(ptr noundef %1, i32 noundef %control_state.3)
  ret i32 %call24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_get_icount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mct_u232_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mct_u232_private, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %control_state2 = getelementptr inbounds %struct.mct_u232_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %control_state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %control_state2, align 4
  %and = and i32 %3, -7
  %masksel = select i1 %tobool.not, i32 0, i32 6
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %control_state2, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %call5 = tail call fastcc i32 @mct_u232_set_modem_ctrl(ptr noundef %port, i32 noundef %and.sink)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mct_u232_read_int_callback(ptr noundef %urb) #2 align 64 {
entry:
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
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status1, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %7, label %do.body5 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge94
    i32 -108, label %entry.do.body_crit_edge95
  ]

entry.do.body_crit_edge95:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge94:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge94, %entry.do.body_crit_edge95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mct_u232_read_int_callback.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_read_int_callback, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !122

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mct_u232_read_int_callback.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %7) #7
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mct_u232_read_int_callback.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_read_int_callback, %if.then17)) #7
          to label %exit [label %if.then17], !srcloc !122

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mct_u232_read_int_callback.__UNIQUE_ID_ddebug245, ptr noundef %dev18, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %7) #7
  br label %exit

sw.epilog:                                        ; preds = %entry
  %dev22 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_read_int_callback, %if.then.i)) #7
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !122

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev22, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.37, i32 noundef %10, i32 noundef %10, ptr noundef %5) #7
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %sw.epilog
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %11 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp ugt i32 %12, 2
  br i1 %cmp, label %if.then23, label %do.body34

if.then23:                                        ; preds = %usb_serial_debug_data.exit
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  br i1 %tobool25.not, label %if.then23.exit_crit_edge, label %if.then26

if.then23.exit_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %port27 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port27, ptr noundef %5, i8 noundef zeroext 0, i32 noundef %14) #7
  tail call void @tty_flip_buffer_push(ptr noundef %port27) #7
  br label %exit

do.body34:                                        ; preds = %usb_serial_debug_data.exit
  %lock = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 1
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %5, align 1
  %last_msr = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %last_msr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %last_msr, align 2
  %control_state = getelementptr inbounds %struct.mct_u232_private, ptr %3, i32 0, i32 2
  %conv.i = zext i8 %16 to i32
  %18 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %control_state, align 4
  %and1.i = and i32 %19, -481
  %and.i = shl nuw nsw i32 %conv.i, 3
  %20 = and i32 %and.i, 256
  %and3.i = shl nuw nsw i32 %conv.i, 1
  %and19.i = lshr i32 %conv.i, 1
  %21 = and i32 %and19.i, 64
  %storemerge44.i = and i32 %and3.i, 160
  %storemerge.i = or i32 %storemerge44.i, %21
  %storemerge45.i = or i32 %storemerge.i, %20
  %storemerge46.i = or i32 %storemerge45.i, %and1.i
  store i32 %storemerge46.i, ptr %control_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mct_u232_msr_to_state.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_read_int_callback, %if.then29.i)) #7
          to label %mct_u232_msr_to_state.exit [label %if.then29.i], !srcloc !122

if.then29.i:                                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %control_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %control_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mct_u232_msr_to_state.__UNIQUE_ID_ddebug243, ptr noundef %dev22, ptr noundef nonnull @.str.23, i32 noundef %conv.i, i32 noundef %23) #7
  br label %mct_u232_msr_to_state.exit

mct_u232_msr_to_state.exit:                       ; preds = %if.then29.i, %do.body34
  %icount = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27
  %24 = ptrtoint ptr %last_msr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %last_msr, align 2
  %conv.i89 = zext i8 %25 to i32
  %and.i90 = and i32 %conv.i89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i, label %mct_u232_msr_to_state.exit.if.end.i_crit_edge, label %if.then.i91

mct_u232_msr_to_state.exit.if.end.i_crit_edge:    ; preds = %mct_u232_msr_to_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i91:                                      ; preds = %mct_u232_msr_to_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dsr.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 1
  %26 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dsr.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %dsr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i91, %mct_u232_msr_to_state.exit.if.end.i_crit_edge
  %and2.i = and i32 %conv.i89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %icount, align 4
  %inc5.i = add i32 %29, 1
  store i32 %inc5.i, ptr %icount, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %and8.i = and i32 %conv.i89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end12.i_crit_edge, label %if.then10.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %rng.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 2
  %30 = ptrtoint ptr %rng.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rng.i, align 4
  %inc11.i = add i32 %31, 1
  store i32 %inc11.i, ptr %rng.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end6.i.if.end12.i_crit_edge
  %and14.i = and i32 %conv.i89, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.mct_u232_msr_to_icount.exit_crit_edge, label %if.then16.i

if.end12.i.mct_u232_msr_to_icount.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_msr_to_icount.exit

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %dcd.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 3
  %32 = ptrtoint ptr %dcd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dcd.i, align 4
  %inc17.i = add i32 %33, 1
  store i32 %inc17.i, ptr %dcd.i, align 4
  br label %mct_u232_msr_to_icount.exit

mct_u232_msr_to_icount.exit:                      ; preds = %if.then16.i, %if.end12.i.mct_u232_msr_to_icount.exit_crit_edge
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call38) #7
  br label %exit

exit:                                             ; preds = %mct_u232_msr_to_icount.exit, %if.then26, %if.then23.exit_crit_edge, %if.then17, %do.body5
  %call47 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %exit.cleanup_crit_edge, label %do.end52

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end52:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev53 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.37, i32 noundef %call47) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mct_u232_set_modem_ctrl(ptr noundef %port, i32 noundef %control_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #11
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %control_state, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i8 8, i8 9
  %and4 = and i32 %control_state, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %1 = or i8 %spec.select, 10
  %mcr.1 = select i1 %tobool5.not, i8 %spec.select, i8 %1
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %mcr.1, ptr %call7.i, align 8
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 8
  %or14 = or i32 %shl.i, -2147483648
  %call15 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or14, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mct_u232_set_modem_ctrl.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_set_modem_ctrl, %if.then20)) #7
          to label %do.end [label %if.then20], !srcloc !122

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv22 = zext i8 %mcr.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mct_u232_set_modem_ctrl.__UNIQUE_ID_ddebug241, ptr noundef %dev21, ptr noundef nonnull @.str.14, i32 noundef %control_state, i32 noundef %conv22) #7
  br label %do.end

do.end:                                           ; preds = %if.then20, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp24 = icmp slt i32 %call15, 0
  br i1 %cmp24, label %do.end29, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev30 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv31 = zext i8 %mcr.1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.15, i32 noundef %conv31, i32 noundef %call15) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end29 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mct_u232_set_line_ctrl(ptr noundef %port, i8 noundef zeroext %lcr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #11
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %lcr, ptr %call7.i, align 8
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
  %call4 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end.do.body9_crit_edge

if.end.do.body9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv = zext i8 %lcr to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %call4) #10
  br label %do.body9

do.body9:                                         ; preds = %do.end, %if.end.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mct_u232_set_line_ctrl.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_set_line_ctrl, %if.then13)) #7
          to label %do.end18 [label %if.then13], !srcloc !122

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv15 = zext i8 %lcr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mct_u232_set_line_ctrl.__UNIQUE_ID_ddebug240, ptr noundef %dev14, ptr noundef nonnull @.str.18, i32 noundef %conv15) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %do.body9
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mct_u232_get_modem_stat(ptr noundef %port, ptr nocapture noundef %msr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #11
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %msr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %msr, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %or4 = or i32 %shl.i, -2147483520
  %call5 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or4, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.19, i32 noundef %call5) #10
  br label %do.body13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call7.i, align 8
  br label %do.body13

do.body13:                                        ; preds = %if.else, %do.end
  %storemerge = phi i8 [ %9, %if.else ], [ 0, %do.end ]
  %10 = ptrtoint ptr %msr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %storemerge, ptr %msr, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mct_u232_get_modem_stat.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_get_modem_stat, %if.then17)) #7
          to label %do.end21 [label %if.then17], !srcloc !122

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %11 = ptrtoint ptr %msr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %msr, align 1
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mct_u232_get_modem_stat.__UNIQUE_ID_ddebug242, ptr noundef %dev18, ptr noundef nonnull @.str.21, i32 noundef %conv) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body13
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mct_u232_set_baud_rate(ptr noundef %tty, ptr nocapture noundef readonly %serial, ptr noundef %port, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #11
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %serial, align 4
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 16, i32 8
  %3 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idProduct.i, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %4, label %if.else.i [
    i16 12290, label %if.end.if.then.i_crit_edge
    i16 2305, label %if.end.if.then.i_crit_edge9
  ]

if.end.if.then.i_crit_edge9:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge9
  %6 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %value, label %sw.default.i [
    i32 300, label %if.then.i.mct_u232_calculate_baud_rate.exit_crit_edge
    i32 600, label %sw.bb8.i
    i32 1200, label %sw.bb9.i
    i32 2400, label %sw.bb10.i
    i32 4800, label %sw.bb11.i
    i32 9600, label %sw.bb12.i
    i32 19200, label %sw.bb13.i
    i32 38400, label %sw.bb14.i
    i32 57600, label %sw.bb15.i
    i32 115200, label %sw.bb16.i
  ]

if.then.i.mct_u232_calculate_baud_rate.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_calculate_baud_rate.exit

sw.bb8.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_calculate_baud_rate.exit

sw.bb9.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_calculate_baud_rate.exit

sw.bb10.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_calculate_baud_rate.exit

sw.bb11.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_calculate_baud_rate.exit

sw.bb12.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_calculate_baud_rate.exit

sw.bb13.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_calculate_baud_rate.exit

sw.bb14.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_calculate_baud_rate.exit

sw.bb15.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_calculate_baud_rate.exit

sw.bb16.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_calculate_baud_rate.exit

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mct_u232_calculate_baud_rate.exit

if.else.i:                                        ; preds = %if.end
  %7 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %value, label %sw.default17.i [
    i32 300, label %if.else.i.sw.epilog.i_crit_edge
    i32 600, label %if.else.i.sw.epilog.i_crit_edge10
    i32 1200, label %if.else.i.sw.epilog.i_crit_edge11
    i32 2400, label %if.else.i.sw.epilog.i_crit_edge12
    i32 4800, label %if.else.i.sw.epilog.i_crit_edge13
    i32 9600, label %if.else.i.sw.epilog.i_crit_edge14
    i32 19200, label %if.else.i.sw.epilog.i_crit_edge15
    i32 38400, label %if.else.i.sw.epilog.i_crit_edge16
    i32 57600, label %if.else.i.sw.epilog.i_crit_edge17
    i32 115200, label %if.else.i.sw.epilog.i_crit_edge18
  ]

if.else.i.sw.epilog.i_crit_edge18:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.else.i.sw.epilog.i_crit_edge17:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.else.i.sw.epilog.i_crit_edge16:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.else.i.sw.epilog.i_crit_edge15:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.else.i.sw.epilog.i_crit_edge14:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.else.i.sw.epilog.i_crit_edge13:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.else.i.sw.epilog.i_crit_edge12:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.else.i.sw.epilog.i_crit_edge11:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.else.i.sw.epilog.i_crit_edge10:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.default17.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default17.i, %if.else.i.sw.epilog.i_crit_edge, %if.else.i.sw.epilog.i_crit_edge10, %if.else.i.sw.epilog.i_crit_edge11, %if.else.i.sw.epilog.i_crit_edge12, %if.else.i.sw.epilog.i_crit_edge13, %if.else.i.sw.epilog.i_crit_edge14, %if.else.i.sw.epilog.i_crit_edge15, %if.else.i.sw.epilog.i_crit_edge16, %if.else.i.sw.epilog.i_crit_edge17, %if.else.i.sw.epilog.i_crit_edge18
  %speed.0 = phi i32 [ 9600, %sw.default17.i ], [ %value, %if.else.i.sw.epilog.i_crit_edge ], [ %value, %if.else.i.sw.epilog.i_crit_edge10 ], [ %value, %if.else.i.sw.epilog.i_crit_edge11 ], [ %value, %if.else.i.sw.epilog.i_crit_edge12 ], [ %value, %if.else.i.sw.epilog.i_crit_edge13 ], [ %value, %if.else.i.sw.epilog.i_crit_edge14 ], [ %value, %if.else.i.sw.epilog.i_crit_edge15 ], [ %value, %if.else.i.sw.epilog.i_crit_edge16 ], [ %value, %if.else.i.sw.epilog.i_crit_edge17 ], [ %value, %if.else.i.sw.epilog.i_crit_edge18 ]
  %div.i = udiv i32 115200, %speed.0
  br label %mct_u232_calculate_baud_rate.exit

mct_u232_calculate_baud_rate.exit:                ; preds = %sw.epilog.i, %sw.default.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %if.then.i.mct_u232_calculate_baud_rate.exit_crit_edge
  %speed.1 = phi i32 [ %speed.0, %sw.epilog.i ], [ 9600, %sw.default.i ], [ %value, %sw.bb16.i ], [ %value, %sw.bb15.i ], [ %value, %sw.bb14.i ], [ %value, %sw.bb13.i ], [ %value, %sw.bb12.i ], [ %value, %sw.bb11.i ], [ %value, %sw.bb10.i ], [ %value, %sw.bb9.i ], [ %value, %sw.bb8.i ], [ %value, %if.then.i.mct_u232_calculate_baud_rate.exit_crit_edge ]
  %retval.0.i4 = phi i32 [ %div.i, %sw.epilog.i ], [ 8, %sw.default.i ], [ 12, %sw.bb16.i ], [ 11, %sw.bb15.i ], [ 10, %sw.bb14.i ], [ 9, %sw.bb13.i ], [ 8, %sw.bb12.i ], [ 6, %sw.bb11.i ], [ 4, %sw.bb10.i ], [ 3, %sw.bb9.i ], [ 2, %sw.bb8.i ], [ 1, %if.then.i.mct_u232_calculate_baud_rate.exit_crit_edge ]
  %8 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i4) #7
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call7.i, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, -2147483648
  %call4 = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 4, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.else

do.end:                                           ; preds = %mct_u232_calculate_baud_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.28, i32 noundef %value, i32 noundef %call4) #10
  br label %do.body9

if.else:                                          ; preds = %mct_u232_calculate_baud_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %speed.1, i32 noundef %speed.1) #7
  br label %do.body9

do.body9:                                         ; preds = %if.else, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mct_u232_set_baud_rate.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_set_baud_rate, %if.then13)) #7
          to label %do.end17 [label %if.then13], !srcloc !122

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mct_u232_set_baud_rate.__UNIQUE_ID_ddebug238, ptr noundef %dev14, ptr noundef nonnull @.str.30, i32 noundef %value, i32 noundef %retval.0.i4) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body9
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %call7.i, align 8
  %13 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i5 = shl i32 %16, 8
  %or21 = or i32 %shl.i5, -2147483648
  %call22 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or21, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %do.end17.if.end29_crit_edge

do.end17.if.end29_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end27:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev28 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.32, i32 noundef 11, i32 noundef %call22) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %do.end17.if.end29_crit_edge
  %tobool30.not = icmp eq ptr %port, null
  br i1 %tobool30.not, label %if.end29.do.body34_crit_edge, label %land.lhs.true

if.end29.do.body34_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

land.lhs.true:                                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %17 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_cflag, align 4
  %.lobit = lshr i32 %18, 31
  %19 = trunc i32 %.lobit to i8
  br label %do.body34

do.body34:                                        ; preds = %land.lhs.true, %if.end29.do.body34_crit_edge
  %cts_enable_byte.0 = phi i8 [ 0, %if.end29.do.body34_crit_edge ], [ %19, %land.lhs.true ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mct_u232_set_baud_rate.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mct_u232_set_baud_rate, %if.then46)) #7
          to label %do.end50 [label %if.then46], !srcloc !122

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %dev47 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv = zext i8 %cts_enable_byte.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mct_u232_set_baud_rate.__UNIQUE_ID_ddebug239, ptr noundef %dev47, ptr noundef nonnull @.str.34, i32 noundef %conv) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %do.body34
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cts_enable_byte.0, ptr %call7.i, align 8
  %21 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i6 = shl i32 %24, 8
  %or55 = or i32 %shl.i6, -2147483648
  %call56 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or55, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end62, label %do.end50.if.end64_crit_edge

do.end50.if.end64_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

do.end62:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  %dev63 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.32, i32 noundef 12, i32 noundef %call56) #10
  br label %if.end64

if.end64:                                         ; preds = %do.end62, %do.end50.if.end64_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
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
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !99, !100, !102, !103, !105, !106, !107, !109, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_mct_u232__248_772_usb_serial_module_init6, !1, !"__initcall__kmod_mct_u232__248_772_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/mct_u232.c", i32 772, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author249, !4, !"__UNIQUE_ID_author249", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/mct_u232.c", i32 774, i32 1}
!5 = !{ptr @__UNIQUE_ID_description250, !6, !"__UNIQUE_ID_description250", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/mct_u232.c", i32 775, i32 1}
!7 = !{ptr @__UNIQUE_ID_file251, !8, !"__UNIQUE_ID_file251", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/mct_u232.c", i32 776, i32 1}
!9 = !{ptr @__UNIQUE_ID_license252, !8, !"__UNIQUE_ID_license252", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/mct_u232.c", i32 60, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/mct_u232.c", i32 93, i32 41}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/mct_u232.c", i32 74, i32 22}
!17 = !{ptr @mct_u232_device, !18, !"mct_u232_device", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/mct_u232.c", i32 69, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/mct_u232.c", i32 384, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mct_u232_port_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mct_u232_port_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mct_u232_port_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/mct_u232.c", i32 396, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/serial/mct_u232.c", i32 459, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mct_u232_open._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mct_u232_open._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/mct_u232.c", i32 468, i32 3}
!37 = !{ptr @mct_u232_open._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mct_u232_open._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/serial/mct_u232.c", i32 296, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mct_u232_set_modem_ctrl.__UNIQUE_ID_ddebug241, !40, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/mct_u232.c", i32 299, i32 3}
!45 = !{ptr @mct_u232_set_modem_ctrl._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mct_u232_set_modem_ctrl._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/mct_u232.c", i32 265, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mct_u232_set_line_ctrl._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mct_u232_set_line_ctrl._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/serial/mct_u232.c", i32 266, i32 2}
!54 = !{ptr @mct_u232_set_line_ctrl.__UNIQUE_ID_ddebug240, !53, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/mct_u232.c", i32 322, i32 3}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mct_u232_get_modem_stat._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mct_u232_get_modem_stat._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/serial/mct_u232.c", i32 331, i32 2}
!62 = !{ptr @mct_u232_get_modem_stat.__UNIQUE_ID_ddebug242, !61, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/serial/mct_u232.c", i32 370, i32 2}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mct_u232_msr_to_state.__UNIQUE_ID_ddebug243, !64, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/serial/mct_u232.c", i32 622, i32 3}
!69 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mct_u232_set_termios.__UNIQUE_ID_ddebug246, !68, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/serial/mct_u232.c", i32 630, i32 3}
!73 = !{ptr @mct_u232_set_termios.__UNIQUE_ID_ddebug247, !72, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/serial/mct_u232.c", i32 658, i32 3}
!76 = !{ptr @mct_u232_set_termios._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mct_u232_set_termios._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/serial/mct_u232.c", i32 195, i32 3}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mct_u232_set_baud_rate._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mct_u232_set_baud_rate._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/mct_u232.c", i32 199, i32 2}
!85 = !{ptr @mct_u232_set_baud_rate.__UNIQUE_ID_ddebug238, !84, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/serial/mct_u232.c", i32 225, i32 3}
!88 = !{ptr @mct_u232_set_baud_rate._entry.31, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mct_u232_set_baud_rate._entry_ptr.33, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/serial/mct_u232.c", i32 232, i32 2}
!92 = !{ptr @mct_u232_set_baud_rate.__UNIQUE_ID_ddebug239, !91, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!93 = !{ptr @mct_u232_set_baud_rate._entry.35, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/usb/serial/mct_u232.c", i32 241, i32 3}
!95 = !{ptr @mct_u232_set_baud_rate._entry_ptr.36, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/serial/mct_u232.c", i32 523, i32 3}
!98 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mct_u232_read_int_callback.__UNIQUE_ID_ddebug244, !97, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/serial/mct_u232.c", i32 527, i32 3}
!102 = !{ptr @mct_u232_read_int_callback.__UNIQUE_ID_ddebug245, !101, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/serial/mct_u232.c", i32 589, i32 3}
!105 = !{ptr @mct_u232_read_int_callback._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @mct_u232_read_int_callback._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!109 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !108, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{i64 2148711730, i64 2148711735, i64 2148711748, i64 2148711792, i64 2148711826, i64 2148711847}
