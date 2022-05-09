; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/mxuport.c_pt.bc'
source_filename = "../drivers/usb/serial/mxuport.c"
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
%struct.firmware = type { i32, ptr, ptr }
%struct.usb_serial_endpoints = type { i8, i8, i8, i8, [16 x ptr], [16 x ptr], [16 x ptr], [16 x ptr] }
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
%struct.mxuport_port = type { i8, i8, %struct.mutex, %struct.spinlock }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_mxuport__276_1314_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mxuport_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author277 = internal constant [44 x i8] c"mxuport.author=Andrew Lunn <andrew@lunn.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [34 x i8] c"mxuport.author=<support@moxa.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file279 = internal constant [40 x i8] c"mxuport.file=drivers/usb/serial/mxuport\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [20 x i8] c"mxuport.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxuport\00", [24 x i8] zeroinitializer }, align 32
@mxuport_idtable = internal constant { [10 x %struct.usb_device_id], [48 x i8] } { [10 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4362, i16 4688, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4362, i16 4689, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4362, i16 5136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4362, i16 5200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4362, i16 5201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4362, i16 5656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 4362, i16 5720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 4362, i16 5651, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 4362, i16 5715, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mxuport_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @mxuport_idtable, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 0, i8 2, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @mxuport_probe, ptr @mxuport_attach, ptr @mxuport_calc_num_ports, ptr null, ptr @mxuport_release, ptr @mxuport_port_probe, ptr null, ptr null, ptr @mxuport_resume, ptr null, ptr @mxuport_open, ptr @mxuport_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxuport_set_termios, ptr @mxuport_break_ctl, ptr null, ptr null, ptr @mxuport_tx_empty, ptr @mxuport_throttle, ptr @mxuport_unthrottle, ptr @mxuport_tiocmget, ptr @mxuport_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr @mxuport_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxuport_process_read_urb, ptr @mxuport_prepare_write_buffer }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MOXA UPort\00", [21 x i8] zeroinitializer }, align 32
@mxuport_probe.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxuport_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/serial/mxuport.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Device firmware version v%x.%x.%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"moxa/moxa-%04x.fw\00", [46 x i8] zeroinitializer }, align 32
@mxuport_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 1078, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Firmware %s not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxuport_probe._entry_ptr = internal global ptr @mxuport_probe._entry, section ".printk_index", align 4
@mxuport_probe.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 1, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Available firmware version v%x.%x.%x\0A\00", [58 x i8] zeroinitializer }, align 32
@mxuport_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1104, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Using device firmware version v%x.%x.%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mxuport_probe._entry_ptr.13 = internal global ptr @mxuport_probe._entry.10, section ".printk_index", align 4
@mxuport_send_ctrl_data_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 260, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - usb_control_msg failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxuport_send_ctrl_data_urb\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mxuport_send_ctrl_data_urb._entry_ptr = internal global ptr @mxuport_send_ctrl_data_urb._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mxuport_recv_ctrl_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.17, ptr @.str.3, i32 228, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxuport_recv_ctrl_urb\00", [42 x i8] zeroinitializer }, align 32
@mxuport_recv_ctrl_urb._entry_ptr = internal global ptr @mxuport_recv_ctrl_urb._entry, section ".printk_index", align 4
@mxuport_recv_ctrl_urb._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 235, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - short read (%d / %zd)\0A\00", [36 x i8] zeroinitializer }, align 32
@mxuport_recv_ctrl_urb._entry_ptr.20 = internal global ptr @mxuport_recv_ctrl_urb._entry.18, section ".printk_index", align 4
@mxuport_download_fw.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxuport_download_fw\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Starting firmware download...\0A\00", [33 x i8] zeroinitializer }, align 32
@mxuport_calc_num_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 955, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unknown device, assuming two ports\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxuport_calc_num_ports\00", [41 x i8] zeroinitializer }, align 32
@mxuport_calc_num_ports._entry_ptr = internal global ptr @mxuport_calc_num_ports._entry, section ".printk_index", align 4
@mxuport_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mxport->mutex\00", [17 x i8] zeroinitializer }, align 32
@mxuport_port_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mxport->spinlock\00", [46 x i8] zeroinitializer }, align 32
@mxuport_set_termios.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxuport_set_termios\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - nothing to change\0A\00", [40 x i8] zeroinitializer }, align 32
@mxuport_set_termios.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"baud_rate\09: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mxuport_set_termios.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.31, i8 0, i8 -25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data_bits\09: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mxuport_set_termios.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.32, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"parity\09: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@mxuport_set_termios.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.33, i8 0, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stop_bits\09: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mxuport_set_termios_flow.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxuport_set_termios_flow\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - XON = 0x%02x, XOFF = 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@mxuport_break_ctl.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 1, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxuport_break_ctl\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - sending break\0A\00", [44 x i8] zeroinitializer }, align 32
@mxuport_break_ctl.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.38, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - clearing break\0A\00", [43 x i8] zeroinitializer }, align 32
@mxuport_tx_empty.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxuport_tx_empty\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - tx len = %u\0A\00", [46 x i8] zeroinitializer }, align 32
@mxuport_throttle.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxuport_throttle\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mxuport_unthrottle.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.42, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxuport_unthrottle\00", [45 x i8] zeroinitializer }, align 32
@mxuport_tiocmget.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxuport_tiocmget\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s - 0x%04x\0A\00", [19 x i8] zeroinitializer }, align 32
@mxuport_set_mcr.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxuport_set_mcr\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s - %02x\0A\00", [21 x i8] zeroinitializer }, align 32
@mxuport_set_mcr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 608, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - failed to change MCR\0A\00", [37 x i8] zeroinitializer }, align 32
@mxuport_set_mcr._entry_ptr = internal global ptr @mxuport_set_mcr._entry, section ".printk_index", align 4
@mxuport_process_read_urb_demux_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 477, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - message with short header\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mxuport_process_read_urb_demux_data\00", [60 x i8] zeroinitializer }, align 32
@mxuport_process_read_urb_demux_data._entry_ptr = internal global ptr @mxuport_process_read_urb_demux_data._entry, section ".printk_index", align 4
@mxuport_process_read_urb_demux_data._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 484, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - message for invalid port\0A\00", [33 x i8] zeroinitializer }, align 32
@mxuport_process_read_urb_demux_data._entry_ptr.53 = internal global ptr @mxuport_process_read_urb_demux_data._entry.51, section ".printk_index", align 4
@mxuport_process_read_urb_demux_data._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.3, i32 491, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - short data\0A\00", [47 x i8] zeroinitializer }, align 32
@mxuport_process_read_urb_demux_data._entry_ptr.56 = internal global ptr @mxuport_process_read_urb_demux_data._entry.54, section ".printk_index", align 4
@mxuport_process_read_urb_demux_data.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.57, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - data for closed port\0A\00", [37 x i8] zeroinitializer }, align 32
@mxuport_process_read_urb_demux_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 524, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - message with short event\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mxuport_process_read_urb_demux_event\00", [59 x i8] zeroinitializer }, align 32
@mxuport_process_read_urb_demux_event._entry_ptr = internal global ptr @mxuport_process_read_urb_demux_event._entry, section ".printk_index", align 4
@mxuport_process_read_urb_demux_event._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.59, ptr @.str.3, i32 531, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@mxuport_process_read_urb_demux_event._entry_ptr.61 = internal global ptr @mxuport_process_read_urb_demux_event._entry.60, section ".printk_index", align 4
@mxuport_process_read_urb_demux_event.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.62, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - event for closed port\0A\00", [36 x i8] zeroinitializer }, align 32
@mxuport_process_read_urb_event.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mxuport_process_read_urb_event\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - receive event : %04x\0A\00", [37 x i8] zeroinitializer }, align 32
@mxuport_process_read_urb_event.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.65, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unexpected event\0A\00", [46 x i8] zeroinitializer }, align 32
@mxuport_msr_event.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxuport_msr_event\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - current MSR status = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@mxuport_msr_event.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.68, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - CTS high\0A\00", [17 x i8] zeroinitializer }, align 32
@mxuport_msr_event.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.69, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s - CTS low\0A\00", [18 x i8] zeroinitializer }, align 32
@mxuport_msr_event.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.70, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - DSR high\0A\00", [17 x i8] zeroinitializer }, align 32
@mxuport_msr_event.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.71, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s - DSR low\0A\00", [18 x i8] zeroinitializer }, align 32
@mxuport_msr_event.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.72, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - DCD high\0A\00", [17 x i8] zeroinitializer }, align 32
@mxuport_msr_event.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.73, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s - DCD low\0A\00", [18 x i8] zeroinitializer }, align 32
@mxuport_msr_event.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.74, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - CTS change\0A\00", [47 x i8] zeroinitializer }, align 32
@mxuport_msr_event.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.75, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - DSR change\0A\00", [47 x i8] zeroinitializer }, align 32
@mxuport_msr_event.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.76, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - DCD change\0A\00", [47 x i8] zeroinitializer }, align 32
@mxuport_lsr_event.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxuport_lsr_event\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - break error\0A\00", [46 x i8] zeroinitializer }, align 32
@mxuport_lsr_event.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.79, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - frame error\0A\00", [46 x i8] zeroinitializer }, align 32
@mxuport_lsr_event.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.80, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - parity error\0A\00", [45 x i8] zeroinitializer }, align 32
@mxuport_lsr_event.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.81, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - overrun error\0A\00", [44 x i8] zeroinitializer }, align 32
@mxuport_prepare_write_buffer.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mxuport_prepare_write_buffer\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - size %zd count %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1310, i32 40 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1314, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"mxuport_idtable\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 163, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"mxuport_device\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1279, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1284, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1068, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1073, i32 33 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1077, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1086, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1100, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 258, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 226, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 233, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1011, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 954, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1129, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1130, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 850, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 925, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 926, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 927, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 928, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 790, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1241, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1244, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 588, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 289, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 308, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 757, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 603, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 608, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 476, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 483, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 491, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 499, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 523, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 530, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 542, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 429, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 454, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 348, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 353, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 356, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 361, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 364, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 369, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 372, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 381, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 386, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 391, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 403, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 408, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 413, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 418, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.353 = private constant [32 x i8] c"../drivers/usb/serial/mxuport.c\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 205, i32 2 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_file279, ptr @__UNIQUE_ID_license280, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_mxuport__276_1314_usb_serial_module_init6, ptr @mxuport_calc_num_ports._entry, ptr @mxuport_calc_num_ports._entry_ptr, ptr @mxuport_probe._entry, ptr @mxuport_probe._entry.10, ptr @mxuport_probe._entry_ptr, ptr @mxuport_probe._entry_ptr.13, ptr @mxuport_process_read_urb_demux_data._entry, ptr @mxuport_process_read_urb_demux_data._entry.51, ptr @mxuport_process_read_urb_demux_data._entry.54, ptr @mxuport_process_read_urb_demux_data._entry_ptr, ptr @mxuport_process_read_urb_demux_data._entry_ptr.53, ptr @mxuport_process_read_urb_demux_data._entry_ptr.56, ptr @mxuport_process_read_urb_demux_event._entry, ptr @mxuport_process_read_urb_demux_event._entry.60, ptr @mxuport_process_read_urb_demux_event._entry_ptr, ptr @mxuport_process_read_urb_demux_event._entry_ptr.61, ptr @mxuport_recv_ctrl_urb._entry, ptr @mxuport_recv_ctrl_urb._entry.18, ptr @mxuport_recv_ctrl_urb._entry_ptr, ptr @mxuport_recv_ctrl_urb._entry_ptr.20, ptr @mxuport_send_ctrl_data_urb._entry, ptr @mxuport_send_ctrl_data_urb._entry_ptr, ptr @mxuport_set_mcr._entry, ptr @mxuport_set_mcr._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @mxuport_idtable, ptr @mxuport_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @mxuport_port_probe.__key, ptr @.str.25, ptr @mxuport_port_probe.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_idtable to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_send_ctrl_data_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_recv_ctrl_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_recv_ctrl_urb._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_calc_num_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_port_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_set_mcr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_process_read_urb_demux_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_process_read_urb_demux_data._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_process_read_urb_demux_data._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_process_read_urb_demux_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxuport_process_read_urb_demux_event._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @mxuport_idtable) #8
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
define internal i32 @mxuport_probe(ptr nocapture noundef %serial, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %fw_p = alloca ptr, align 4
  %version = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_p) #8
  %5 = ptrtoint ptr %fw_p to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fw_p, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #8
  %6 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %version, align 4, !annotation !210
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %7 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i.i, i8 noundef zeroext 36, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %10 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interface.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i) #11
  %12 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i.i117 = shl i32 %15, 8
  %or.i.i118 = or i32 %shl.i.i.i117, -2147483648
  %call2.i.i119 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i.i118, i8 noundef zeroext 35, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i119)
  %cmp.i.i120 = icmp slt i32 %call2.i.i119, 0
  br i1 %cmp.i.i120, label %do.end.i.i123, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i123:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interface.i.i, align 4
  %dev4.i.i122 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i122, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i119) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @mxuport_get_fw_version(ptr noundef %serial, ptr noundef nonnull %version)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_probe.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_probe, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !211

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %18 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interface, align 4
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %version, align 4
  %and = lshr i32 %21, 16
  %shr = and i32 %and, 255
  %and11 = lshr i32 %21, 8
  %shr12 = and i32 %and11, 255
  %and13 = and i32 %21, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_probe.__UNIQUE_ID_ddebug272, ptr noundef %dev10, ptr noundef nonnull @.str.4, i32 noundef %shr, i32 noundef %shr12, i32 noundef %and13) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %conv = zext i16 %4 to i32
  %call15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 31, ptr noundef nonnull @.str.5, i32 noundef %conv)
  %interface17 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %22 = ptrtoint ptr %interface17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %interface17, align 4
  %dev18 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  %call19 = call i32 @request_firmware(ptr noundef nonnull %fw_p, ptr noundef nonnull %buf, ptr noundef %dev18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else, label %do.end24

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %interface17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %interface17, align 4
  %dev26 = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26, ptr noundef nonnull @.str.6, ptr noundef nonnull %buf) #11
  br label %do.end80

if.else:                                          ; preds = %do.end
  %26 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw_p, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %29, i32 32
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv28 = zext i8 %31 to i32
  %shl = shl nuw nsw i32 %conv28, 16
  %arrayidx30 = getelementptr i8, ptr %29, i32 36
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %33 to i32
  %shl32 = shl nuw nsw i32 %conv31, 8
  %or = or i32 %shl32, %shl
  %arrayidx34 = getelementptr i8, ptr %29, i32 40
  %34 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %35 to i32
  %or36 = or i32 %or, %conv35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_probe.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_probe, %if.then49)) #8
          to label %do.end63 [label %if.then49], !srcloc !211

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %interface17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %interface17, align 4
  %dev51 = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw_p, align 4
  %data52 = getelementptr inbounds %struct.firmware, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %data52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data52, align 4
  %arrayidx53 = getelementptr i8, ptr %41, i32 32
  %42 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %43 to i32
  %arrayidx56 = getelementptr i8, ptr %41, i32 36
  %44 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %45 to i32
  %arrayidx59 = getelementptr i8, ptr %41, i32 40
  %46 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %47 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_probe.__UNIQUE_ID_ddebug273, ptr noundef %dev51, ptr noundef nonnull @.str.9, i32 noundef %conv54, i32 noundef %conv57, i32 noundef %conv60) #8
  br label %do.end63

do.end63:                                         ; preds = %if.then49, %if.else
  %48 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or36, i32 %49)
  %cmp64 = icmp ugt i32 %or36, %49
  br i1 %cmp64, label %if.then66, label %do.end63.do.end80_crit_edge

do.end63.do.end80_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.then66:                                        ; preds = %do.end63
  %50 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw_p, align 4
  %call67 = call fastcc i32 @mxuport_download_fw(ptr noundef %serial, ptr noundef %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then66.out_crit_edge

if.then66.out_crit_edge:                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end70:                                         ; preds = %if.then66
  %call71 = call fastcc i32 @mxuport_get_fw_version(ptr noundef %serial, ptr noundef nonnull %version)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.out_crit_edge, label %if.end70.do.end80_crit_edge

if.end70.do.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end80:                                         ; preds = %if.end70.do.end80_crit_edge, %do.end63.do.end80_crit_edge, %do.end24
  %52 = ptrtoint ptr %interface17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %interface17, align 4
  %dev82 = getelementptr inbounds %struct.usb_interface, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %version, align 4
  %and83 = lshr i32 %55, 16
  %shr84 = and i32 %and83, 255
  %and85 = lshr i32 %55, 8
  %shr86 = and i32 %and85, 255
  %and87 = and i32 %55, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev82, ptr noundef nonnull @.str.11, i32 noundef %shr84, i32 noundef %shr86, i32 noundef %and87) #11
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %56 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %driver_info, align 4
  %58 = inttoptr i32 %57 to ptr
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %59 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %private.i, align 4
  br label %out

out:                                              ; preds = %do.end80, %if.end70.out_crit_edge, %if.then66.out_crit_edge
  %err.1 = phi i32 [ 0, %do.end80 ], [ %call67, %if.then66.out_crit_edge ], [ %call71, %if.end70.out_crit_edge ]
  %60 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fw_p, align 4
  %tobool88.not = icmp eq ptr %61, null
  br i1 %tobool88.not, label %out.cleanup_crit_edge, label %if.then89

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then89:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_firmware(ptr noundef nonnull %61) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %out.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end.i.i123, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ %err.1, %if.then89 ], [ %err.1, %out.cleanup_crit_edge ], [ %call2.i.i, %if.then.cleanup_crit_edge ], [ %call2.i.i, %do.end.i.i123 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_p) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxuport_attach(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %arrayidx3 = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  %call = tail call i32 @usb_serial_generic_submit_read_urbs(ptr noundef %1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @usb_serial_generic_submit_read_urbs(ptr noundef %3, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_serial_generic_close(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxuport_calc_num_ports(ptr nocapture noundef readonly %serial, ptr nocapture noundef %epds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.do.end18_crit_edge

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.else:                                          ; preds = %entry
  %and1 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else4, label %if.else.do.end18_crit_edge

if.else.do.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.else4:                                         ; preds = %if.else
  %and5 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else8, label %if.else4.do.end18_crit_edge

if.else4.do.end18_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.else8:                                         ; preds = %if.else4
  %and9 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.end, label %if.else8.do.end18_crit_edge

if.else8.do.end18_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end:                                           ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %3 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  br label %do.end18

do.end18:                                         ; preds = %do.end, %if.else8.do.end18_crit_edge, %if.else4.do.end18_crit_edge, %if.else.do.end18_crit_edge, %entry.do.end18_crit_edge
  %num_ports.0 = phi i32 [ 2, %do.end ], [ 2, %entry.do.end18_crit_edge ], [ 4, %if.else.do.end18_crit_edge ], [ 8, %if.else4.do.end18_crit_edge ], [ 16, %if.else8.do.end18_crit_edge ]
  %bulk_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end18
  %i.031 = phi i32 [ 1, %do.end18 ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bulk_out, align 4
  %arrayidx20 = getelementptr %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 5, i32 %i.031
  %7 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %arrayidx20, align 4
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %num_ports.0
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %num_ports.0 to i8
  %num_bulk_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 1
  %8 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %num_bulk_out, align 1
  ret i32 %num_ports.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxuport_release(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %arrayidx3 = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  tail call void @usb_serial_generic_close(ptr noundef %3) #8
  tail call void @usb_serial_generic_close(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxuport_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 140, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.mxuport_port, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.25, ptr noundef nonnull @mxuport_port_probe.__key) #8
  %spinlock = getelementptr inbounds %struct.mxuport_port, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.27, ptr noundef nonnull @mxuport_port_probe.__key.26, i16 noundef signext 3) #8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %3 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_number, align 4
  %conv = zext i8 %4 to i16
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %8, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i.i, i8 noundef zeroext 15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %do.body.cleanup.sink.split_crit_edge, label %if.end9

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end9:                                          ; preds = %do.body
  %9 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_number, align 4
  %conv11 = zext i8 %10 to i16
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i.i34 = shl i32 %14, 8
  %or.i.i35 = or i32 %shl.i.i.i34, -2147483648
  %call2.i.i36 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i.i35, i8 noundef zeroext 17, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i36)
  %cmp.i.i37 = icmp slt i32 %call2.i.i36, 0
  br i1 %cmp.i.i37, label %if.end9.cleanup.sink.split_crit_edge, label %if.end15

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end9
  %15 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_number, align 4
  %conv17 = zext i8 %16 to i16
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i.i43 = shl i32 %20, 8
  %or.i.i44 = or i32 %shl.i.i.i43, -2147483648
  %call2.i.i45 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i.i44, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i45)
  %cmp.i.i46 = icmp slt i32 %call2.i.i45, 0
  br i1 %cmp.i.i46, label %if.end15.cleanup.sink.split_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %call2.i.i45.sink = phi i32 [ %call2.i.i, %do.body.cleanup.sink.split_crit_edge ], [ %call2.i.i36, %if.end9.cleanup.sink.split_crit_edge ], [ %call2.i.i45, %if.end15.cleanup.sink.split_crit_edge ]
  %interface.i.i47 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %interface.i.i47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %interface.i.i47, align 4
  %dev4.i.i48 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i48, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i45.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ %call2.i.i45.sink, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxuport_resume(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @usb_serial_generic_submit_read_urbs(ptr noundef %1, i32 noundef 3072) #8
  %call.lobit = lshr i32 %call, 31
  %arrayidx.1 = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %call.1 = tail call i32 @usb_serial_generic_submit_read_urbs(ptr noundef %3, i32 noundef 3072) #8
  %call.lobit.1 = lshr i32 %call.1, 31
  %spec.select.1 = add nuw nsw i32 %call.lobit.1, %call.lobit
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 6
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp539.not = icmp eq i8 %5, 0
  br i1 %cmp539.not, label %entry.for.end22_crit_edge, label %entry.for.body7_crit_edge

entry.for.body7_crit_edge:                        ; preds = %entry
  br label %for.body7

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22

for.body7:                                        ; preds = %for.inc20.for.body7_crit_edge, %entry.for.body7_crit_edge
  %i.141 = phi i32 [ %inc21, %for.inc20.for.body7_crit_edge ], [ 0, %entry.for.body7_crit_edge ]
  %c.240 = phi i32 [ %c.3, %for.inc20.for.body7_crit_edge ], [ %spec.select.1, %entry.for.body7_crit_edge ]
  %arrayidx9 = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 %i.141
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9, align 4
  %iflags.i = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 1, i32 11
  %8 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body7.for.inc20_crit_edge, label %if.end13

for.body7.for.inc20_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20

if.end13:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 @usb_serial_generic_write_start(ptr noundef %7, i32 noundef 3072) #8
  %call14.lobit = lshr i32 %call14, 31
  %spec.select35 = add i32 %call14.lobit, %c.240
  br label %for.inc20

for.inc20:                                        ; preds = %if.end13, %for.body7.for.inc20_crit_edge
  %c.3 = phi i32 [ %c.240, %for.body7.for.inc20_crit_edge ], [ %spec.select35, %if.end13 ]
  %inc21 = add nuw nsw i32 %i.141, 1
  %10 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_ports, align 1
  %conv = zext i8 %11 to i32
  %cmp5 = icmp ult i32 %inc21, %conv
  br i1 %cmp5, label %for.inc20.for.body7_crit_edge, label %for.inc20.for.end22_crit_edge

for.inc20.for.end22_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22

for.inc20.for.body7_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.end22:                                        ; preds = %for.inc20.for.end22_crit_edge, %entry.for.end22_crit_edge
  %c.2.lcssa = phi i32 [ %spec.select.1, %entry.for.end22_crit_edge ], [ %c.3, %for.inc20.for.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.2.lcssa)
  %tobool.not = icmp eq i32 %c.2.lcssa, 0
  %cond = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxuport_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
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
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_number, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i.i, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext %conv, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %mxuport_send_ctrl_urb.exit, label %if.end

mxuport_send_ctrl_urb.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interface.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_number, align 4
  %conv4 = zext i8 %13 to i16
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i.i29 = shl i32 %17, 8
  %or.i.i30 = or i32 %shl.i.i.i29, -2147483648
  %call2.i.i31 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i.i30, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext %conv4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i31)
  %cmp.i.i32 = icmp slt i32 %call2.i.i31, 0
  br i1 %cmp.i.i32, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  %interface.i.i33 = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %interface.i.i33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interface.i.i33, align 4
  %dev4.i.i34 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i34, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i31) #11
  %20 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_number, align 4
  %conv9 = zext i8 %21 to i16
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i.i38 = shl i32 %25, 8
  %or.i.i39 = or i32 %shl.i.i.i38, -2147483648
  %call2.i.i40 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i.i39, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i40)
  %cmp.i.i41 = icmp slt i32 %call2.i.i40, 0
  br i1 %cmp.i.i41, label %do.end.i.i44, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i44:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %interface.i.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interface.i.i33, align 4
  %dev4.i.i43 = getelementptr inbounds %struct.usb_interface, ptr %27, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i43, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i40) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %tobool12.not = icmp eq ptr %tty, null
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mxuport_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %msr_state = getelementptr inbounds %struct.mxuport_port, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %msr_state to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %msr_state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end.i.i44, %if.then7.cleanup_crit_edge, %mxuport_send_ctrl_urb.exit
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call2.i.i, %mxuport_send_ctrl_urb.exit ], [ %call2.i.i31, %if.then7.cleanup_crit_edge ], [ %call2.i.i31, %do.end.i.i44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxuport_close(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %2 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_number, align 4
  %conv = zext i8 %3 to i16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i.i = shl i32 %7, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.mxuport_send_ctrl_urb.exit_crit_edge

entry.mxuport_send_ctrl_urb.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxuport_send_ctrl_urb.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interface.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i) #11
  br label %mxuport_send_ctrl_urb.exit

mxuport_send_ctrl_urb.exit:                       ; preds = %do.end.i.i, %entry.mxuport_send_ctrl_urb.exit_crit_edge
  %10 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_number, align 4
  %conv3 = zext i8 %11 to i16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i.i8 = shl i32 %15, 8
  %or.i.i9 = or i32 %shl.i.i.i8, -2147483648
  %call2.i.i10 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i.i9, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i10)
  %cmp.i.i11 = icmp slt i32 %call2.i.i10, 0
  br i1 %cmp.i.i11, label %do.end.i.i14, label %mxuport_send_ctrl_urb.exit.mxuport_send_ctrl_urb.exit16_crit_edge

mxuport_send_ctrl_urb.exit.mxuport_send_ctrl_urb.exit16_crit_edge: ; preds = %mxuport_send_ctrl_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxuport_send_ctrl_urb.exit16

do.end.i.i14:                                     ; preds = %mxuport_send_ctrl_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i12 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %interface.i.i12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interface.i.i12, align 4
  %dev4.i.i13 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i10) #11
  br label %mxuport_send_ctrl_urb.exit16

mxuport_send_ctrl_urb.exit16:                     ; preds = %do.end.i.i14, %mxuport_send_ctrl_urb.exit.mxuport_send_ctrl_urb.exit16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxuport_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %tobool.not = icmp eq ptr %old_termios, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call = tail call i32 @tty_termios_hw_change(ptr noundef %termios, ptr noundef nonnull %old_termios) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %termios, align 4
  %4 = ptrtoint ptr %old_termios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old_termios, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %do.body, label %land.lhs.true3.if.end11_crit_edge

land.lhs.true3.if.end11_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.body:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_set_termios.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_set_termios, %if.then10)) #8
          to label %cleanup [label %if.then10], !srcloc !211

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_set_termios.__UNIQUE_ID_ddebug263, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #8
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true3.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4) #12
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %7 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c_cflag, align 4
  %9 = trunc i32 %8 to i8
  %10 = lshr i8 %9, 4
  %switch.idx.cast = and i8 %10, 3
  %switch.offset = add nuw nsw i8 %switch.idx.cast, 5
  %and22 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end15.if.end46_crit_edge, label %if.then24

if.end15.if.end46_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then24:                                        ; preds = %if.end15
  %and27 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %and39 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool28.not, label %if.else36, label %if.then29

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %. = select i1 %tobool40.not, i8 4, i8 3
  br label %if.end46

if.else36:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %.189 = select i1 %tobool40.not, i8 2, i8 1
  br label %if.end46

if.end46:                                         ; preds = %if.else36, %if.then29, %if.end15.if.end46_crit_edge
  %parity.0 = phi i8 [ %., %if.then29 ], [ %.189, %if.else36 ], [ 0, %if.end15.if.end46_crit_edge ]
  %11 = trunc i32 %8 to i8
  %12 = lshr i8 %11, 5
  %13 = and i8 %12, 2
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %switch.offset, ptr %call7.i, align 8
  %arrayidx54 = getelementptr i8, ptr %call7.i, i32 1
  %15 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %parity.0, ptr %arrayidx54, align 1
  %arrayidx55 = getelementptr i8, ptr %call7.i, i32 2
  %16 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %13, ptr %arrayidx55, align 2
  %arrayidx56 = getelementptr i8, ptr %call7.i, i32 3
  %17 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx56, align 1
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %18 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_number, align 4
  %conv = zext i8 %19 to i16
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i = shl i32 %23, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i, i16 noundef zeroext 4, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %mxuport_send_ctrl_data_urb.exit, label %if.end60

mxuport_send_ctrl_data_urb.exit:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %interface.i, align 4
  %dev4.i = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i) #11
  br label %out

if.end60:                                         ; preds = %if.end46
  %call61 = tail call fastcc i32 @mxuport_set_termios_flow(ptr noundef %tty, ptr noundef %old_termios, ptr noundef %port, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.out_crit_edge

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end64:                                         ; preds = %if.end60
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool66.not = icmp eq i32 %call.i, 0
  %spec.store.select = select i1 %tobool66.not, i32 9600, i32 %call.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select) #8
  %27 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %call7.i, align 8
  %28 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port_number, align 4
  %conv70 = zext i8 %29 to i16
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i204 = shl i32 %33, 8
  %or.i205 = or i32 %shl.i.i204, -2147483648
  %call2.i206 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i205, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv70, ptr noundef nonnull %call7.i, i16 noundef zeroext 4, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i206)
  %cmp.i207 = icmp slt i32 %call2.i206, 0
  br i1 %cmp.i207, label %mxuport_send_ctrl_data_urb.exit212, label %do.body75

mxuport_send_ctrl_data_urb.exit212:               ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i208 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %interface.i208 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %interface.i208, align 4
  %dev4.i209 = getelementptr inbounds %struct.usb_interface, ptr %35, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i209, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i206) #11
  br label %out

do.body75:                                        ; preds = %if.end64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_set_termios.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_set_termios, %if.then87)) #8
          to label %do.body92 [label %if.then87], !srcloc !211

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %dev88 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_set_termios.__UNIQUE_ID_ddebug264, ptr noundef %dev88, ptr noundef nonnull @.str.30, i32 noundef %spec.store.select) #8
  br label %do.body92

do.body92:                                        ; preds = %if.then87, %do.body75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_set_termios.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_set_termios, %if.then104)) #8
          to label %do.body110 [label %if.then104], !srcloc !211

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  %dev105 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv106 = zext i8 %switch.offset to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_set_termios.__UNIQUE_ID_ddebug265, ptr noundef %dev105, ptr noundef nonnull @.str.31, i32 noundef %conv106) #8
  br label %do.body110

do.body110:                                       ; preds = %if.then104, %do.body92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_set_termios.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_set_termios, %if.then122)) #8
          to label %do.body128 [label %if.then122], !srcloc !211

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  %dev123 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv124 = zext i8 %parity.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_set_termios.__UNIQUE_ID_ddebug266, ptr noundef %dev123, ptr noundef nonnull @.str.32, i32 noundef %conv124) #8
  br label %do.body128

do.body128:                                       ; preds = %if.then122, %do.body110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_set_termios.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_set_termios, %if.then140)) #8
          to label %out [label %if.then140], !srcloc !211

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  %dev141 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv142 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_set_termios.__UNIQUE_ID_ddebug267, ptr noundef %dev141, ptr noundef nonnull @.str.33, i32 noundef %conv142) #8
  br label %out

out:                                              ; preds = %if.then140, %do.body128, %mxuport_send_ctrl_data_urb.exit212, %if.end60.out_crit_edge, %mxuport_send_ctrl_data_urb.exit
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end11.cleanup_crit_edge, %if.then10, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxuport_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp = icmp eq i32 %break_state, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_break_ctl.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_break_ctl, %if.then4)) #8
          to label %if.end22 [label %if.then4], !srcloc !211

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_break_ctl.__UNIQUE_ID_ddebug274, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36) #8
  br label %if.end22

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_break_ctl.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_break_ctl, %if.then17)) #8
          to label %if.end22 [label %if.then17], !srcloc !211

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_break_ctl.__UNIQUE_ID_ddebug275, ptr noundef %dev18, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.else, %if.then4, %if.then
  %enable.0 = phi i16 [ 1, %if.then4 ], [ 0, %if.then17 ], [ 1, %if.then ], [ 0, %if.else ]
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_number, align 4
  %conv23 = zext i8 %5 to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i.i, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext %enable.0, i16 noundef zeroext %conv23, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end22.mxuport_send_ctrl_urb.exit_crit_edge

if.end22.mxuport_send_ctrl_urb.exit_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxuport_send_ctrl_urb.exit

do.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interface.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i) #11
  br label %mxuport_send_ctrl_urb.exit

mxuport_send_ctrl_urb.exit:                       ; preds = %do.end.i.i, %if.end22.mxuport_send_ctrl_urb.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mxuport_tx_empty(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %3 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_number, align 4
  %conv = zext i8 %4 to i16
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or2.i, i8 noundef zeroext -123, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface.i, align 4
  %dev5.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, i32 noundef %call3.i) #11
  br label %out

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3.i)
  %cmp6.not.i = icmp eq i32 %call3.i, 4
  br i1 %cmp6.not.i, label %if.end5, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %interface12.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %interface12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interface12.i, align 4
  %dev13.i = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call3.i, i32 noundef 4) #11
  br label %out

if.end5:                                          ; preds = %if.end.i
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call7.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_tx_empty.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_tx_empty, %if.then11)) #8
          to label %do.end [label %if.then11], !srcloc !211

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_tx_empty.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %14) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13.not = icmp eq i32 %14, 0
  br label %out

out:                                              ; preds = %do.end, %do.end11.i, %do.end.i, %entry.out_crit_edge
  %is_empty.0.off0 = phi i1 [ true, %entry.out_crit_edge ], [ %cmp13.not, %do.end ], [ true, %do.end.i ], [ true, %do.end11.i ]
  tail call void @kfree(ptr noundef %call7.i.i) #8
  ret i1 %is_empty.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxuport_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_throttle.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_throttle, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_throttle.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_number, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i.i, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end.mxuport_send_ctrl_urb.exit_crit_edge

do.end.mxuport_send_ctrl_urb.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxuport_send_ctrl_urb.exit

do.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interface.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i) #11
  br label %mxuport_send_ctrl_urb.exit

mxuport_send_ctrl_urb.exit:                       ; preds = %do.end.i.i, %do.end.mxuport_send_ctrl_urb.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxuport_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_unthrottle.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_unthrottle, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_unthrottle.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_number, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i.i, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext %conv, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end.mxuport_send_ctrl_urb.exit_crit_edge

do.end.mxuport_send_ctrl_urb.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxuport_send_ctrl_urb.exit

do.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interface.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i) #11
  br label %mxuport_send_ctrl_urb.exit

mxuport_send_ctrl_urb.exit:                       ; preds = %do.end.i.i, %do.end.mxuport_send_ctrl_urb.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxuport_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.mxuport_port, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %spinlock = getelementptr inbounds %struct.mxuport_port, ptr %3, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #8
  %msr_state = getelementptr inbounds %struct.mxuport_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %msr_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msr_state, align 1
  %conv6 = zext i8 %5 to i32
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 4
  %conv7 = zext i8 %7 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %and = shl nuw nsw i32 %conv7, 1
  %or = and i32 %and, 6
  %and13 = shl nuw nsw i32 %conv6, 1
  %8 = and i32 %and13, 32
  %and17 = lshr i32 %conv6, 1
  %9 = and i32 %and17, 64
  %10 = and i32 %and13, 128
  %and25 = shl nuw nsw i32 %conv6, 3
  %11 = and i32 %and25, 256
  %or16 = or i32 %9, %8
  %or20 = or i32 %or16, %10
  %or24 = or i32 %or20, %11
  %or28 = or i32 %or24, %or
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_tiocmget.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_tiocmget, %if.then)) #8
          to label %do.end36 [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_tiocmget.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef %or28) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then, %entry
  ret i32 %or28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxuport_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.mxuport_port, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = trunc i32 %set to i8
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 3
  %9 = or i8 %8, %5
  %and10 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %10 = and i8 %9, -3
  %mcr_state.2 = select i1 %tobool11.not, i8 %9, i8 %10
  %and17 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %11 = and i8 %mcr_state.2, -2
  %mcr_state.3 = select i1 %tobool18.not, i8 %mcr_state.2, i8 %11
  %call24 = tail call fastcc i32 @mxuport_set_mcr(ptr noundef %1, i8 noundef zeroext %mcr_state.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %mcr_state.3, ptr %3, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %entry.if.end28_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_get_icount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxuport_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.mxuport_port, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %4 = and i8 %3, -4
  %masksel = select i1 %tobool.not, i8 0, i8 3
  %mcr_state.0 = or i8 %4, %masksel
  %call5 = tail call fastcc i32 @mxuport_set_mcr(ptr noundef %port, i8 noundef zeroext %mcr_state.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %mcr_state.0, ptr %1, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %entry.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxuport_process_read_urb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %port2 = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port2, align 4
  %cmp = icmp eq ptr %1, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mxuport_process_read_urb_demux_data(ptr noundef %urb)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx4 = getelementptr %struct.usb_serial, ptr %3, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %cmp5 = icmp eq ptr %1, %7
  br i1 %cmp5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mxuport_process_read_urb_demux_event(ptr noundef %urb)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxuport_prepare_write_buffer(ptr noundef %port, ptr noundef %dest, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %add.ptr = getelementptr i8, ptr %dest, i32 4
  %sub = add i32 %size, -4
  %call6 = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %add.ptr, i32 noundef %sub) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_number, align 4
  %conv11 = zext i8 %1 to i16
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %conv11, ptr %dest, align 1
  %conv12 = trunc i32 %call6 to i16
  %add.ptr13 = getelementptr i8, ptr %dest, i32 2
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %conv12, ptr %add.ptr13, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_prepare_write_buffer.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_prepare_write_buffer, %if.then)) #8
          to label %do.end20 [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_prepare_write_buffer.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, i32 noundef %size, i32 noundef %call6) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then, %entry
  %add = add i32 %call6, 4
  ret i32 %add
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxuport_get_fw_version(ptr nocapture noundef readonly %serial, ptr nocapture noundef writeonly %version) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %serial, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i.i = shl i32 %4, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or2.i, i8 noundef zeroext -127, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %5 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %interface.i, align 4
  %dev5.i = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, i32 noundef %call3.i) #11
  br label %out

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3.i)
  %cmp6.not.i = icmp eq i32 %call3.i, 4
  br i1 %cmp6.not.i, label %if.end3, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %interface12.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %7 = ptrtoint ptr %interface12.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interface12.i, align 4
  %dev13.i = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call3.i, i32 noundef 4) #11
  br label %out

if.end3:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i.i, align 8
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx4 = getelementptr i8, ptr %call7.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %12 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl6, %shl
  %arrayidx7 = getelementptr i8, ptr %call7.i.i, i32 2
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7, align 2
  %conv8 = zext i8 %14 to i32
  %or9 = or i32 %or, %conv8
  %15 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or9, ptr %version, align 4
  br label %out

out:                                              ; preds = %if.end3, %do.end11.i, %do.end.i
  %err.0 = phi i32 [ 0, %if.end3 ], [ -5, %do.end.i ], [ -5, %do.end11.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxuport_download_fw(ptr nocapture noundef readonly %serial, ptr nocapture noundef readonly %fw_p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 64) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_download_fw.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_download_fw, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !211

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %1 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %2, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_download_fw.__UNIQUE_ID_ddebug269, ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %3 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i.i = shl i32 %6, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i.i, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %mxuport_send_ctrl_urb.exit.thread, label %do.body11.preheader

do.body11.preheader:                              ; preds = %do.end
  %data = getelementptr inbounds %struct.firmware, ptr %fw_p, i32 0, i32 1
  br label %do.body11

mxuport_send_ctrl_urb.exit.thread:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  br label %out.sink.split

do.body11:                                        ; preds = %if.end17.do.body11_crit_edge, %do.body11.preheader
  %fwidx.0 = phi i32 [ %add, %if.end17.do.body11_crit_edge ], [ 0, %do.body11.preheader ]
  %7 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_p, align 4
  %sub = sub i32 %8, %fwidx.0
  %9 = tail call i32 @llvm.umin.i32(i32 %sub, i32 64)
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 %fwidx.0
  %12 = call ptr @memcpy(ptr %call7.i, ptr %arrayidx, i32 %9)
  %13 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = trunc i32 %9 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext %conv.i, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %do.body11
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %17 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interface.i, align 4
  %dev4.i = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i) #11
  %19 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serial, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i.i51 = shl i32 %22, 8
  %or.i.i52 = or i32 %shl.i.i.i51, -2147483648
  %call2.i.i53 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i.i52, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i53)
  %cmp.i.i54 = icmp slt i32 %call2.i.i53, 0
  br i1 %cmp.i.i54, label %if.then15.out.sink.split_crit_edge, label %if.then15.out_crit_edge

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then15.out.sink.split_crit_edge:               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

if.end17:                                         ; preds = %do.body11
  %add = add i32 %9, %fwidx.0
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %23 = ptrtoint ptr %fw_p to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_p, align 4
  %cmp20 = icmp ult i32 %add, %24
  br i1 %cmp20, label %if.end17.do.body11_crit_edge, label %do.end21

if.end17.do.body11_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

do.end21:                                         ; preds = %if.end17
  tail call void @msleep(i32 noundef 1000) #8
  %25 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %serial, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i.i60 = shl i32 %28, 8
  %or.i.i61 = or i32 %shl.i.i.i60, -2147483648
  %call2.i.i62 = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i.i61, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i62)
  %cmp.i.i63 = icmp slt i32 %call2.i.i62, 0
  br i1 %cmp.i.i63, label %mxuport_send_ctrl_urb.exit68, label %if.end25

mxuport_send_ctrl_urb.exit68:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i64 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  br label %out.sink.split

if.end25:                                         ; preds = %do.end21
  tail call void @msleep(i32 noundef 1000) #8
  %29 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %serial, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i.i69 = shl i32 %32, 8
  %or.i.i70 = or i32 %shl.i.i.i69, -2147483648
  %call2.i.i71 = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i.i70, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i71)
  %cmp.i.i72 = icmp slt i32 %call2.i.i71, 0
  br i1 %cmp.i.i72, label %do.end.i.i75, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end.i.i75:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i73 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  br label %out.sink.split

out.sink.split:                                   ; preds = %do.end.i.i75, %mxuport_send_ctrl_urb.exit68, %if.then15.out.sink.split_crit_edge, %mxuport_send_ctrl_urb.exit.thread
  %interface.i.i73.sink = phi ptr [ %interface.i.i73, %do.end.i.i75 ], [ %interface.i.i64, %mxuport_send_ctrl_urb.exit68 ], [ %interface.i.i, %mxuport_send_ctrl_urb.exit.thread ], [ %interface.i, %if.then15.out.sink.split_crit_edge ]
  %call2.i.i71.sink = phi i32 [ %call2.i.i71, %do.end.i.i75 ], [ %call2.i.i62, %mxuport_send_ctrl_urb.exit68 ], [ %call2.i.i, %mxuport_send_ctrl_urb.exit.thread ], [ %call2.i.i53, %if.then15.out.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call2.i.i71, %do.end.i.i75 ], [ %call2.i.i62, %mxuport_send_ctrl_urb.exit68 ], [ %call2.i.i, %mxuport_send_ctrl_urb.exit.thread ], [ %call2.i, %if.then15.out.sink.split_crit_edge ]
  %33 = ptrtoint ptr %interface.i.i73.sink to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %interface.i.i73.sink, align 4
  %dev4.i.i74 = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i74, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i71.sink) #11
  br label %out

out:                                              ; preds = %out.sink.split, %if.end25.out_crit_edge, %if.then15.out_crit_edge
  %err.0 = phi i32 [ %call2.i, %if.then15.out_crit_edge ], [ 0, %if.end25.out_crit_edge ], [ %err.0.ph, %out.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_submit_read_urbs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_write_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_hw_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxuport_set_termios_flow(ptr nocapture noundef readonly %tty, ptr noundef readonly %old_termios, ptr noundef %port, ptr nocapture noundef readonly %serial) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %5 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %termios, align 4
  %7 = and i32 %6, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.end.if.end25_crit_edge, label %if.then10

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then10:                                        ; preds = %if.end
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %1, ptr %call7.i, align 8
  %arrayidx12 = getelementptr i8, ptr %call7.i, i32 1
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %3, ptr %arrayidx12, align 1
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %11 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port_number, align 4
  %conv = zext i8 %12 to i16
  %13 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i, i16 noundef zeroext 2, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %mxuport_send_ctrl_data_urb.exit, label %do.body

mxuport_send_ctrl_data_urb.exit:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %17 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interface.i, align 4
  %dev4.i = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i) #11
  br label %out

do.body:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_set_termios_flow.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_set_termios_flow, %if.then21)) #8
          to label %if.end25 [label %if.then21], !srcloc !211

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv22 = zext i8 %1 to i32
  %conv23 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_set_termios_flow.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %conv22, i32 noundef %conv23) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %do.body, %if.end.if.end25_crit_edge
  %enable.0 = phi i16 [ 1, %if.then21 ], [ 0, %if.end.if.end25_crit_edge ], [ 1, %do.body ]
  %port_number27 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %19 = ptrtoint ptr %port_number27 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_number27, align 4
  %conv28 = zext i8 %20 to i16
  %21 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i.i = shl i32 %24, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %enable.0, i16 noundef zeroext %conv28, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %mxuport_send_ctrl_urb.exit, label %if.end32

mxuport_send_ctrl_urb.exit:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %25 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %interface.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i) #11
  br label %out

if.end32:                                         ; preds = %if.end25
  %tobool33.not = icmp eq ptr %old_termios, null
  %c_cflag42 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %27 = ptrtoint ptr %c_cflag42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %c_cflag42, align 4
  br i1 %tobool33.not, label %if.end48, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end32
  %c_cflag37 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %29 = ptrtoint ptr %c_cflag37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c_cflag37, align 4
  %31 = xor i32 %30, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.not = icmp sgt i32 %31, -1
  %32 = ptrtoint ptr %c_cflag42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %c_cflag42, align 4
  %and51117 = and i32 %33, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51117)
  %tobool52.not118 = icmp eq i32 %and51117, 0
  br i1 %cmp.not, label %if.end48.thread, label %if.end48.thread125

if.end48:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool44.not = icmp sgt i32 %28, -1
  %. = select i1 %tobool44.not, i2 1, i2 -2
  %and51 = and i32 %28, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end48.if.then75.thread_crit_edge, label %if.end48.if.then75_crit_edge

if.end48.if.then75_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75

if.end48.if.then75.thread_crit_edge:              ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75.thread

if.end48.thread125:                               ; preds = %lor.lhs.false34
  br i1 %tobool52.not118, label %if.end48.thread125.if.then75.thread_crit_edge, label %land.lhs.true

if.end48.thread125.if.then75.thread_crit_edge:    ; preds = %if.end48.thread125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75.thread

if.end48.thread:                                  ; preds = %lor.lhs.false34
  br i1 %tobool52.not118, label %if.end48.thread.if.then75.thread_crit_edge, label %land.lhs.true.thread

if.end48.thread.if.then75.thread_crit_edge:       ; preds = %if.end48.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75.thread

land.lhs.true:                                    ; preds = %if.end48.thread125
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool44.not127 = icmp sgt i32 %33, -1
  %.128 = select i1 %tobool44.not127, i2 1, i2 -2
  %34 = ptrtoint ptr %c_cflag37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %c_cflag37, align 4
  %and56 = and i32 %35, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %cmp57 = icmp eq i32 %and56, 0
  br i1 %cmp57, label %land.lhs.true.if.then59_crit_edge, label %land.lhs.true.if.then75_crit_edge

land.lhs.true.if.then75_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75

land.lhs.true.if.then59_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

land.lhs.true.thread:                             ; preds = %if.end48.thread
  %36 = ptrtoint ptr %c_cflag37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %c_cflag37, align 4
  %and56153 = and i32 %37, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56153)
  %cmp57154 = icmp eq i32 %and56153, 0
  br i1 %cmp57154, label %land.lhs.true.thread.if.then59_crit_edge, label %land.lhs.true.thread.out_crit_edge

land.lhs.true.thread.out_crit_edge:               ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true.thread.if.then59_crit_edge:         ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.then59:                                        ; preds = %land.lhs.true.thread.if.then59_crit_edge, %land.lhs.true.if.then59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool63.not = icmp sgt i32 %33, -1
  tail call fastcc void @mxuport_set_dtr(ptr noundef %port, i32 noundef 1)
  %driver_data.i.i.i144 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %38 = ptrtoint ptr %driver_data.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i144, align 4
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port, align 8
  %mutex.i145 = getelementptr inbounds %struct.mxuport_port, ptr %39, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i145, i32 noundef 0) #8
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %39, align 4
  br i1 %tobool63.not, label %if.then59.sw.bb5.i_crit_edge, label %if.then59.sw.epilog.i_crit_edge

if.then59.sw.epilog.i_crit_edge:                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then59.sw.bb5.i_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.then75.thread:                                 ; preds = %if.end48.thread.if.then75.thread_crit_edge, %if.end48.thread125.if.then75.thread_crit_edge, %if.end48.if.then75.thread_crit_edge
  tail call fastcc void @mxuport_set_dtr(ptr noundef %port, i32 noundef 0)
  %driver_data.i.i.i135 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %44 = ptrtoint ptr %driver_data.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i.i135, align 4
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port, align 8
  %mutex.i136 = getelementptr inbounds %struct.mxuport_port, ptr %45, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i136, i32 noundef 0) #8
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %45, align 4
  %50 = and i8 %49, -3
  br label %sw.epilog.i

if.then75:                                        ; preds = %land.lhs.true.if.then75_crit_edge, %if.end48.if.then75_crit_edge
  %rts.2124 = phi i2 [ %., %if.end48.if.then75_crit_edge ], [ %.128, %land.lhs.true.if.then75_crit_edge ]
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %51 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_data.i.i.i, align 4
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %port, align 8
  %mutex.i = getelementptr inbounds %struct.mxuport_port, ptr %52, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %52, align 4
  %57 = zext i2 %rts.2124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i2 %rts.2124, label %if.then75.mxuport_set_rts.exit_crit_edge [
    i2 -2, label %if.then75.sw.epilog.i_crit_edge
    i2 1, label %if.then75.sw.bb5.i_crit_edge
  ]

if.then75.sw.bb5.i_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.then75.sw.epilog.i_crit_edge:                  ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then75.mxuport_set_rts.exit_crit_edge:         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxuport_set_rts.exit

sw.bb5.i:                                         ; preds = %if.then75.sw.bb5.i_crit_edge, %if.then59.sw.bb5.i_crit_edge
  %58 = phi i8 [ %56, %if.then75.sw.bb5.i_crit_edge ], [ %43, %if.then59.sw.bb5.i_crit_edge ]
  %mutex.i147 = phi ptr [ %mutex.i, %if.then75.sw.bb5.i_crit_edge ], [ %mutex.i145, %if.then59.sw.bb5.i_crit_edge ]
  %59 = phi ptr [ %54, %if.then75.sw.bb5.i_crit_edge ], [ %41, %if.then59.sw.bb5.i_crit_edge ]
  %60 = phi ptr [ %52, %if.then75.sw.bb5.i_crit_edge ], [ %39, %if.then59.sw.bb5.i_crit_edge ]
  %61 = or i8 %58, 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %if.then75.sw.epilog.i_crit_edge, %if.then75.thread, %if.then59.sw.epilog.i_crit_edge
  %mutex.i139 = phi ptr [ %mutex.i, %if.then75.sw.epilog.i_crit_edge ], [ %mutex.i147, %sw.bb5.i ], [ %mutex.i136, %if.then75.thread ], [ %mutex.i145, %if.then59.sw.epilog.i_crit_edge ]
  %62 = phi ptr [ %54, %if.then75.sw.epilog.i_crit_edge ], [ %59, %sw.bb5.i ], [ %47, %if.then75.thread ], [ %41, %if.then59.sw.epilog.i_crit_edge ]
  %63 = phi ptr [ %52, %if.then75.sw.epilog.i_crit_edge ], [ %60, %sw.bb5.i ], [ %45, %if.then75.thread ], [ %39, %if.then59.sw.epilog.i_crit_edge ]
  %rts.2124137 = phi i8 [ 2, %if.then75.sw.epilog.i_crit_edge ], [ 1, %sw.bb5.i ], [ 0, %if.then75.thread ], [ 2, %if.then59.sw.epilog.i_crit_edge ]
  %mcr_state.0.i = phi i8 [ %56, %if.then75.sw.epilog.i_crit_edge ], [ %61, %sw.bb5.i ], [ %50, %if.then75.thread ], [ %43, %if.then59.sw.epilog.i_crit_edge ]
  %conv8.i = zext i8 %rts.2124137 to i16
  %64 = ptrtoint ptr %port_number27 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %port_number27, align 4
  %conv9.i = zext i8 %65 to i16
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %62, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i.i.i = shl i32 %69, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %call2.i.i.i = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i.i.i, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %conv8.i, i16 noundef zeroext %conv9.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i.i.i, label %mxuport_send_ctrl_urb.exit.i, label %if.then.i

mxuport_send_ctrl_urb.exit.i:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i.i = getelementptr inbounds %struct.usb_serial, ptr %62, i32 0, i32 2
  %70 = ptrtoint ptr %interface.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %interface.i.i.i, align 4
  %dev4.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %71, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i.i) #11
  br label %mxuport_set_rts.exit

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %mcr_state.0.i, ptr %63, align 4
  br label %mxuport_set_rts.exit

mxuport_set_rts.exit:                             ; preds = %if.then.i, %mxuport_send_ctrl_urb.exit.i, %if.then75.mxuport_set_rts.exit_crit_edge
  %mutex.i141 = phi ptr [ %mutex.i139, %mxuport_send_ctrl_urb.exit.i ], [ %mutex.i139, %if.then.i ], [ %mutex.i, %if.then75.mxuport_set_rts.exit_crit_edge ]
  %err.0.i = phi i32 [ %call2.i.i.i, %mxuport_send_ctrl_urb.exit.i ], [ 0, %if.then.i ], [ -22, %if.then75.mxuport_set_rts.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i141) #8
  br label %out

out:                                              ; preds = %mxuport_set_rts.exit, %land.lhs.true.thread.out_crit_edge, %mxuport_send_ctrl_urb.exit, %mxuport_send_ctrl_data_urb.exit
  %err.0 = phi i32 [ %call2.i, %mxuport_send_ctrl_data_urb.exit ], [ %call2.i.i, %mxuport_send_ctrl_urb.exit ], [ %err.0.i, %mxuport_set_rts.exit ], [ 0, %land.lhs.true.thread.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxuport_set_dtr(ptr nocapture noundef readonly %port, i32 noundef %on) unnamed_addr #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.mxuport_port, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool = icmp ne i32 %on, 0
  %conv = zext i1 %tobool to i16
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_number, align 4
  %conv3 = zext i8 %5 to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %conv3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %mxuport_send_ctrl_urb.exit, label %if.then

mxuport_send_ctrl_urb.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interface.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i) #11
  br label %if.end13

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 4
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %14 = or i8 %13, 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %1, align 4
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = and i8 %13, -2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %1, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7, %mxuport_send_ctrl_urb.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxuport_set_mcr(ptr noundef %port, i8 noundef zeroext %mcr_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_set_mcr.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_set_mcr, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv = zext i8 %mcr_state to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_set_mcr.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv4 = zext i8 %mcr_state to i16
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %2 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_number, align 4
  %conv5 = zext i8 %3 to i16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i.i = shl i32 %7, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i.i, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext %conv4, i16 noundef zeroext %conv5, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %do.end11, label %do.end.if.end13_crit_edge

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interface.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call2.i.i) #11
  %dev12 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end11, %do.end.if.end13_crit_edge
  %retval.0.i.i22 = phi i32 [ %call2.i.i, %do.end11 ], [ 0, %do.end.if.end13_crit_edge ]
  ret i32 %retval.0.i.i22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxuport_process_read_urb_demux_data(ptr nocapture noundef readonly %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %cmp74 = icmp ult ptr %5, %add.ptr
  br i1 %cmp74, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end42.while.body_crit_edge, %while.body.lr.ph
  %data.075 = phi ptr [ %5, %while.body.lr.ph ], [ %add.ptr44, %if.end42.while.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %data.075, i32 4
  %cmp3 = icmp ugt ptr %add.ptr2, %add.ptr
  br i1 %cmp3, label %while.body.cleanup.sink.split_crit_edge, label %if.end

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %data.075 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %data.075, align 1
  %10 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_ports, align 1
  %12 = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %12)
  %cmp5.not = icmp ult i16 %9, %12
  br i1 %cmp5.not, label %if.end12, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end
  %conv = zext i16 %9 to i32
  %arrayidx = getelementptr %struct.usb_serial, ptr %3, i32 0, i32 12, i32 %conv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %add.ptr14 = getelementptr i8, ptr %data.075, i32 2
  %15 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %add.ptr14, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %if.end12.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end12
  %conv17 = zext i16 %16 to i32
  %add.ptr18 = getelementptr i8, ptr %add.ptr2, i32 %conv17
  %cmp19 = icmp ugt ptr %add.ptr18, %add.ptr
  br i1 %cmp19, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end26

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end26:                                         ; preds = %lor.lhs.false
  %port27 = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 1
  %iflags.i = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 1, i32 11
  %17 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body32, label %if.then29

if.then29:                                        ; preds = %if.end26
  %sysrq.i = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 31
  %19 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sysrq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then29
  %tail.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %data.addr.019.i = phi ptr [ %add.ptr2, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %data.addr.019.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.addr.019.i, align 1
  %conv.i = zext i8 %22 to i32
  %call.i = tail call i32 @usb_serial_handle_sysrq_char(ptr noundef %14, i32 noundef %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.body.i
  %23 = ptrtoint ptr %data.addr.019.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.addr.019.i, align 1
  %25 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp3.i.i = icmp slt i32 %28, %30
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.then2.i
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %26, i32 0, i32 5
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %26, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %28
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %30
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %34 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %35, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %26, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %35
  %36 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %24, ptr %add.ptr.i1.i.i, align 1
  br label %for.inc.i

if.end12.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port27, i8 noundef zeroext %24, i8 noundef zeroext 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i.i, %if.end.i.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.019.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv17
  br i1 %exitcond.not.i, label %for.inc.i.mxuport_process_read_urb_data.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.mxuport_process_read_urb_data.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxuport_process_read_urb_data.exit

if.else.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port27, ptr noundef %add.ptr2, i8 noundef zeroext 0, i32 noundef %conv17) #8
  br label %mxuport_process_read_urb_data.exit

mxuport_process_read_urb_data.exit:               ; preds = %if.else.i, %for.inc.i.mxuport_process_read_urb_data.exit_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %port27) #8
  br label %if.end42

do.body32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_process_read_urb_demux_data.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_process_read_urb_demux_data, %if.then37)) #8
          to label %if.end42 [label %if.then37], !srcloc !211

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_process_read_urb_demux_data.__UNIQUE_ID_ddebug257, ptr noundef %dev38, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.50) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %do.body32, %mxuport_process_read_urb_data.exit
  %add = add nuw nsw i32 %conv17, 4
  %add.ptr44 = getelementptr i8, ptr %data.075, i32 %add
  %cmp = icmp ult ptr %add.ptr44, %add.ptr
  br i1 %cmp, label %if.end42.while.body_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.sink.split:                               ; preds = %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  %.str.55.sink = phi ptr [ @.str.49, %while.body.cleanup.sink.split_crit_edge ], [ @.str.52, %if.end.cleanup.sink.split_crit_edge ], [ @.str.55, %if.end12.cleanup.sink.split_crit_edge ], [ @.str.55, %lor.lhs.false.cleanup.sink.split_crit_edge ]
  %dev25 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef nonnull %.str.55.sink, ptr noundef nonnull @.str.50) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end42.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxuport_process_read_urb_demux_event(ptr nocapture noundef readonly %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %cmp55 = icmp ult ptr %5, %add.ptr
  br i1 %cmp55, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %data.056 = phi ptr [ %5, %while.body.lr.ph ], [ %add.ptr2, %if.end30.while.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %data.056, i32 8
  %cmp3 = icmp ugt ptr %add.ptr2, %add.ptr
  br i1 %cmp3, label %while.body.cleanup.sink.split_crit_edge, label %if.end

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %data.056 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %data.056, align 1
  %10 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_ports, align 1
  %12 = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %12)
  %cmp5.not = icmp ult i16 %9, %12
  br i1 %cmp5.not, label %if.end12, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end
  %conv = zext i16 %9 to i32
  %arrayidx = getelementptr %struct.usb_serial, ptr %3, i32 0, i32 12, i32 %conv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %iflags.i = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body21, label %if.then16

if.then16:                                        ; preds = %if.end12
  %add.ptr17 = getelementptr i8, ptr %data.056, i32 4
  %add.ptr18 = getelementptr i8, ptr %data.056, i32 2
  %17 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %add.ptr18, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_process_read_urb_event.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_process_read_urb_demux_event, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !211

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %conv20 = zext i16 %18 to i32
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_process_read_urb_event.__UNIQUE_ID_ddebug255, ptr noundef %dev.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %conv20) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then16
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %18, label %do.body4.i [
    i16 2, label %do.end.i.if.end30_crit_edge
    i16 3, label %sw.bb.i
    i16 4, label %sw.bb3.i
    i16 5, label %do.end.i.if.end30_crit_edge57
  ]

do.end.i.if.end30_crit_edge57:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end.i.if.end30_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.bb.i:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mxuport_msr_event(ptr noundef %14, ptr noundef %add.ptr17) #8
  br label %if.end30

sw.bb3.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mxuport_lsr_event(ptr noundef %14, ptr noundef %add.ptr17) #8
  br label %if.end30

do.body4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_process_read_urb_event.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_process_read_urb_demux_event, %if.then16.i)) #8
          to label %if.end30 [label %if.then16.i], !srcloc !211

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev17.i = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_process_read_urb_event.__UNIQUE_ID_ddebug256, ptr noundef %dev17.i, ptr noundef nonnull @.str.65) #8
  br label %if.end30

do.body21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_process_read_urb_demux_event.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_process_read_urb_demux_event, %if.then25)) #8
          to label %if.end30 [label %if.then25], !srcloc !211

if.then25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_process_read_urb_demux_event.__UNIQUE_ID_ddebug258, ptr noundef %dev26, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %do.body21, %if.then16.i, %do.body4.i, %sw.bb3.i, %sw.bb.i, %do.end.i.if.end30_crit_edge, %do.end.i.if.end30_crit_edge57
  %cmp = icmp ult ptr %add.ptr2, %add.ptr
  br i1 %cmp, label %if.end30.while.body_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  %.str.52.sink = phi ptr [ @.str.58, %while.body.cleanup.sink.split_crit_edge ], [ @.str.52, %if.end.cleanup.sink.split_crit_edge ]
  %dev11 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef nonnull %.str.52.sink, ptr noundef nonnull @.str.59) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_handle_sysrq_char(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxuport_msr_event(ptr noundef %port, ptr nocapture noundef readonly %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, -16
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %buf, align 1
  %conv3 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body5:                                         ; preds = %entry
  %spinlock = getelementptr inbounds %struct.mxuport_port, ptr %1, i32 0, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_msr_event.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_msr_event, %if.then17)) #8
          to label %do.end21 [label %if.then17], !srcloc !211

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %msr_state = getelementptr inbounds %struct.mxuport_port, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %msr_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %msr_state, align 1
  %conv18 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_msr_event.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %conv18) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body5
  %conv22 = zext i8 %4 to i32
  %and23 = and i32 %conv22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %msr_state46 = getelementptr inbounds %struct.mxuport_port, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %msr_state46 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %msr_state46, align 1
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %11 = or i8 %10, 16
  %12 = ptrtoint ptr %msr_state46 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %msr_state46, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_msr_event.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_msr_event, %if.then41)) #8
          to label %if.end67 [label %if.then41], !srcloc !211

if.then41:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %dev42 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_msr_event.__UNIQUE_ID_ddebug242, ptr noundef %dev42, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66) #8
  br label %if.end67

if.else:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %13 = and i8 %10, -17
  %14 = ptrtoint ptr %msr_state46 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %msr_state46, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_msr_event.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_msr_event, %if.then62)) #8
          to label %if.end67 [label %if.then62], !srcloc !211

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev63 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_msr_event.__UNIQUE_ID_ddebug243, ptr noundef %dev63, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.else, %if.then41, %if.then25
  %and69 = and i32 %conv22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %msr_state94 = getelementptr inbounds %struct.mxuport_port, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %msr_state94 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %msr_state94, align 1
  br i1 %tobool70.not, label %if.else93, label %if.then71

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %17 = or i8 %16, 32
  %18 = ptrtoint ptr %msr_state94 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %msr_state94, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_msr_event.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_msr_event, %if.then88)) #8
          to label %if.end115 [label %if.then88], !srcloc !211

if.then88:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %dev89 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_msr_event.__UNIQUE_ID_ddebug244, ptr noundef %dev89, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.66) #8
  br label %if.end115

if.else93:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %19 = and i8 %16, -33
  %20 = ptrtoint ptr %msr_state94 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %msr_state94, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_msr_event.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_msr_event, %if.then110)) #8
          to label %if.end115 [label %if.then110], !srcloc !211

if.then110:                                       ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #10
  %dev111 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_msr_event.__UNIQUE_ID_ddebug245, ptr noundef %dev111, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.66) #8
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.else93, %if.then88, %if.then71
  %and117 = and i32 %conv22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  %msr_state142 = getelementptr inbounds %struct.mxuport_port, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %msr_state142 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %msr_state142, align 1
  br i1 %tobool118.not, label %if.else141, label %if.then119

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %23 = or i8 %22, -128
  %24 = ptrtoint ptr %msr_state142 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %msr_state142, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_msr_event.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_msr_event, %if.then136)) #8
          to label %if.end163 [label %if.then136], !srcloc !211

if.then136:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %dev137 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_msr_event.__UNIQUE_ID_ddebug246, ptr noundef %dev137, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.66) #8
  br label %if.end163

if.else141:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %25 = and i8 %22, 127
  %26 = ptrtoint ptr %msr_state142 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %msr_state142, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_msr_event.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_msr_event, %if.then158)) #8
          to label %if.end163 [label %if.then158], !srcloc !211

if.then158:                                       ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #10
  %dev159 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_msr_event.__UNIQUE_ID_ddebug247, ptr noundef %dev159, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.66) #8
  br label %if.end163

if.end163:                                        ; preds = %if.then158, %if.else141, %if.then136, %if.then119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call9) #8
  %and166 = and i32 %conv3, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end163.cleanup_crit_edge, label %if.then168

if.end163.cleanup_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then168:                                       ; preds = %if.end163
  %and170 = and i32 %conv3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.then168.if.end190_crit_edge, label %if.then172

if.then168.if.end190_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

if.then172:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #10
  %icount = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27
  %27 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %icount, align 8
  %inc = add i32 %28, 1
  store i32 %inc, ptr %icount, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_msr_event.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_msr_event, %if.then185)) #8
          to label %if.end190 [label %if.then185], !srcloc !211

if.then185:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  %dev186 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_msr_event.__UNIQUE_ID_ddebug248, ptr noundef %dev186, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.66) #8
  br label %if.end190

if.end190:                                        ; preds = %if.then185, %if.then172, %if.then168.if.end190_crit_edge
  %and192 = and i32 %conv3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %if.end190.if.end214_crit_edge, label %if.then194

if.end190.if.end214_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

if.then194:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  %dsr = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 1
  %29 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dsr, align 4
  %inc196 = add i32 %30, 1
  store i32 %inc196, ptr %dsr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_msr_event.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_msr_event, %if.then209)) #8
          to label %if.end214 [label %if.then209], !srcloc !211

if.then209:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  %dev210 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_msr_event.__UNIQUE_ID_ddebug249, ptr noundef %dev210, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.66) #8
  br label %if.end214

if.end214:                                        ; preds = %if.then209, %if.then194, %if.end190.if.end214_crit_edge
  %and216 = and i32 %conv3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.end214.if.end238_crit_edge, label %if.then218

if.end214.if.end238_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

if.then218:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  %dcd = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 3
  %31 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dcd, align 4
  %inc220 = add i32 %32, 1
  store i32 %inc220, ptr %dcd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_msr_event.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_msr_event, %if.then233)) #8
          to label %if.end238 [label %if.then233], !srcloc !211

if.then233:                                       ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #10
  %dev234 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_msr_event.__UNIQUE_ID_ddebug250, ptr noundef %dev234, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.66) #8
  br label %if.end238

if.end238:                                        ; preds = %if.then233, %if.then218, %if.end214.if.end238_crit_edge
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end238, %if.end163.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxuport_lsr_event(ptr noundef %port, ptr nocapture noundef readonly %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %buf, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %brk = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brk, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %brk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_lsr_event.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_lsr_event, %if.then4)) #8
          to label %if.end5 [label %if.then4], !srcloc !211

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_lsr_event.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then, %entry.if.end5_crit_edge
  %and7 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end29_crit_edge, label %if.then9

if.end5.if.end29_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %frame = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 6
  %4 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame, align 8
  %inc11 = add i32 %5, 1
  store i32 %inc11, ptr %frame, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_lsr_event.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_lsr_event, %if.then24)) #8
          to label %if.end29 [label %if.then24], !srcloc !211

if.then24:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %dev25 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_lsr_event.__UNIQUE_ID_ddebug252, ptr noundef %dev25, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.then9, %if.end5.if.end29_crit_edge
  %and31 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end53_crit_edge, label %if.then33

if.end29.if.end53_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %parity = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 7
  %6 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parity, align 4
  %inc35 = add i32 %7, 1
  store i32 %inc35, ptr %parity, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_lsr_event.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_lsr_event, %if.then48)) #8
          to label %if.end53 [label %if.then48], !srcloc !211

if.then48:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_lsr_event.__UNIQUE_ID_ddebug253, ptr noundef %dev49, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.77) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.then33, %if.end29.if.end53_crit_edge
  %and55 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.if.end77_crit_edge, label %if.then57

if.end53.if.end77_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %overrun = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 8
  %8 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %overrun, align 8
  %inc59 = add i32 %9, 1
  store i32 %inc59, ptr %overrun, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxuport_lsr_event.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxuport_lsr_event, %if.then72)) #8
          to label %if.end77 [label %if.then72], !srcloc !211

if.then72:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %dev73 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxuport_lsr_event.__UNIQUE_ID_ddebug254, ptr noundef %dev73, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.77) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.then57, %if.end53.if.end77_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !139, !140, !142, !143, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @__initcall__kmod_mxuport__276_1314_usb_serial_module_init6, !1, !"__initcall__kmod_mxuport__276_1314_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/mxuport.c", i32 1314, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author277, !4, !"__UNIQUE_ID_author277", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/mxuport.c", i32 1316, i32 1}
!5 = !{ptr @__UNIQUE_ID_author278, !6, !"__UNIQUE_ID_author278", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/mxuport.c", i32 1317, i32 1}
!7 = !{ptr @__UNIQUE_ID_file279, !8, !"__UNIQUE_ID_file279", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/mxuport.c", i32 1318, i32 1}
!9 = !{ptr @__UNIQUE_ID_license280, !8, !"__UNIQUE_ID_license280", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mxuport_idtable, !12, !"mxuport_idtable", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/mxuport.c", i32 163, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/mxuport.c", i32 1310, i32 40}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/mxuport.c", i32 1284, i32 18}
!17 = !{ptr @mxuport_device, !18, !"mxuport_device", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/mxuport.c", i32 1279, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/mxuport.c", i32 1068, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mxuport_probe.__UNIQUE_ID_ddebug272, !20, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/mxuport.c", i32 1073, i32 33}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/serial/mxuport.c", i32 1077, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mxuport_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @mxuport_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/mxuport.c", i32 1086, i32 3}
!34 = !{ptr @mxuport_probe.__UNIQUE_ID_ddebug273, !33, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/mxuport.c", i32 1100, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mxuport_probe._entry.10, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @mxuport_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/serial/mxuport.c", i32 258, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mxuport_send_ctrl_data_urb._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @mxuport_send_ctrl_data_urb._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/serial/mxuport.c", i32 226, i32 3}
!48 = !{ptr @mxuport_recv_ctrl_urb._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mxuport_recv_ctrl_urb._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/serial/mxuport.c", i32 233, i32 3}
!52 = !{ptr @mxuport_recv_ctrl_urb._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mxuport_recv_ctrl_urb._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/serial/mxuport.c", i32 1011, i32 2}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mxuport_download_fw.__UNIQUE_ID_ddebug269, !55, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/serial/mxuport.c", i32 954, i32 3}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mxuport_calc_num_ports._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mxuport_calc_num_ports._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @mxuport_port_probe.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/usb/serial/mxuport.c", i32 1129, i32 2}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mxuport_port_probe.__key.26, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/usb/serial/mxuport.c", i32 1130, i32 2}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/serial/mxuport.c", i32 850, i32 3}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mxuport_set_termios.__UNIQUE_ID_ddebug263, !70, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/mxuport.c", i32 925, i32 2}
!75 = !{ptr @mxuport_set_termios.__UNIQUE_ID_ddebug264, !74, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/mxuport.c", i32 926, i32 2}
!78 = !{ptr @mxuport_set_termios.__UNIQUE_ID_ddebug265, !77, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/serial/mxuport.c", i32 927, i32 2}
!81 = !{ptr @mxuport_set_termios.__UNIQUE_ID_ddebug266, !80, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/serial/mxuport.c", i32 928, i32 2}
!84 = !{ptr @mxuport_set_termios.__UNIQUE_ID_ddebug267, !83, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/serial/mxuport.c", i32 790, i32 3}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mxuport_set_termios_flow.__UNIQUE_ID_ddebug262, !86, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/serial/mxuport.c", i32 1241, i32 3}
!91 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mxuport_break_ctl.__UNIQUE_ID_ddebug274, !90, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/serial/mxuport.c", i32 1244, i32 3}
!95 = !{ptr @mxuport_break_ctl.__UNIQUE_ID_ddebug275, !94, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/serial/mxuport.c", i32 588, i32 2}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mxuport_tx_empty.__UNIQUE_ID_ddebug259, !97, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/serial/mxuport.c", i32 289, i32 2}
!102 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mxuport_throttle.__UNIQUE_ID_ddebug239, !101, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/serial/mxuport.c", i32 308, i32 2}
!106 = !{ptr @mxuport_unthrottle.__UNIQUE_ID_ddebug240, !105, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/serial/mxuport.c", i32 757, i32 2}
!109 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mxuport_tiocmget.__UNIQUE_ID_ddebug261, !108, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/mxuport.c", i32 603, i32 2}
!113 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @mxuport_set_mcr.__UNIQUE_ID_ddebug260, !112, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/serial/mxuport.c", i32 608, i32 3}
!117 = !{ptr @mxuport_set_mcr._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @mxuport_set_mcr._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/serial/mxuport.c", i32 476, i32 4}
!121 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @mxuport_process_read_urb_demux_data._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @mxuport_process_read_urb_demux_data._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/serial/mxuport.c", i32 483, i32 4}
!126 = !{ptr @mxuport_process_read_urb_demux_data._entry.51, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @mxuport_process_read_urb_demux_data._entry_ptr.53, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/serial/mxuport.c", i32 491, i32 4}
!130 = !{ptr @mxuport_process_read_urb_demux_data._entry.54, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @mxuport_process_read_urb_demux_data._entry_ptr.56, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/serial/mxuport.c", i32 499, i32 4}
!134 = !{ptr @mxuport_process_read_urb_demux_data.__UNIQUE_ID_ddebug257, !133, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/serial/mxuport.c", i32 523, i32 4}
!137 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mxuport_process_read_urb_demux_event._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @mxuport_process_read_urb_demux_event._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @mxuport_process_read_urb_demux_event._entry.60, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/usb/serial/mxuport.c", i32 530, i32 4}
!142 = !{ptr @mxuport_process_read_urb_demux_event._entry_ptr.61, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/serial/mxuport.c", i32 542, i32 4}
!145 = !{ptr @mxuport_process_read_urb_demux_event.__UNIQUE_ID_ddebug258, !144, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/serial/mxuport.c", i32 429, i32 2}
!148 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @mxuport_process_read_urb_event.__UNIQUE_ID_ddebug255, !147, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/serial/mxuport.c", i32 454, i32 3}
!152 = !{ptr @mxuport_process_read_urb_event.__UNIQUE_ID_ddebug256, !151, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/serial/mxuport.c", i32 348, i32 2}
!155 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @mxuport_msr_event.__UNIQUE_ID_ddebug241, !154, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/serial/mxuport.c", i32 353, i32 3}
!159 = !{ptr @mxuport_msr_event.__UNIQUE_ID_ddebug242, !158, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/serial/mxuport.c", i32 356, i32 3}
!162 = !{ptr @mxuport_msr_event.__UNIQUE_ID_ddebug243, !161, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/serial/mxuport.c", i32 361, i32 3}
!165 = !{ptr @mxuport_msr_event.__UNIQUE_ID_ddebug244, !164, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/serial/mxuport.c", i32 364, i32 3}
!168 = !{ptr @mxuport_msr_event.__UNIQUE_ID_ddebug245, !167, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/serial/mxuport.c", i32 369, i32 3}
!171 = !{ptr @mxuport_msr_event.__UNIQUE_ID_ddebug246, !170, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/serial/mxuport.c", i32 372, i32 3}
!174 = !{ptr @mxuport_msr_event.__UNIQUE_ID_ddebug247, !173, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!175 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/serial/mxuport.c", i32 381, i32 4}
!177 = !{ptr @mxuport_msr_event.__UNIQUE_ID_ddebug248, !176, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/serial/mxuport.c", i32 386, i32 4}
!180 = !{ptr @mxuport_msr_event.__UNIQUE_ID_ddebug249, !179, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!181 = !{ptr @.str.76, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/serial/mxuport.c", i32 391, i32 4}
!183 = !{ptr @mxuport_msr_event.__UNIQUE_ID_ddebug250, !182, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/serial/mxuport.c", i32 403, i32 3}
!186 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @mxuport_lsr_event.__UNIQUE_ID_ddebug251, !185, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!188 = !{ptr @.str.79, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/serial/mxuport.c", i32 408, i32 3}
!190 = !{ptr @mxuport_lsr_event.__UNIQUE_ID_ddebug252, !189, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!191 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/serial/mxuport.c", i32 413, i32 3}
!193 = !{ptr @mxuport_lsr_event.__UNIQUE_ID_ddebug253, !192, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!194 = !{ptr @.str.81, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/serial/mxuport.c", i32 418, i32 3}
!196 = !{ptr @mxuport_lsr_event.__UNIQUE_ID_ddebug254, !195, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!197 = !{ptr @.str.82, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/serial/mxuport.c", i32 205, i32 2}
!199 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @mxuport_prepare_write_buffer.__UNIQUE_ID_ddebug238, !198, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{!"auto-init"}
!211 = !{i64 2148722780, i64 2148722785, i64 2148722798, i64 2148722842, i64 2148722876, i64 2148722897}
