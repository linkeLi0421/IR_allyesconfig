; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/garmin_gps.c_pt.bc'
source_filename = "../drivers/usb/serial/garmin_gps.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.garmin_data = type { i8, i16, i8, i8, i8, i32, %struct.timer_list, ptr, i32, i32, i32, [273 x i8], [529 x i8], [24 x i8], %struct.spinlock, %struct.list_head, %struct.usb_anchor }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kfifo = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.garmin_packet = type { %struct.list_head, i32, i32, [0 x i8] }

@__initcall__kmod_garmin_gps__269_1441_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @garmin_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author270 = internal constant [35 x i8] c"garmin_gps.author=hermann kneissel\00", section ".modinfo", align 1
@__UNIQUE_ID_description271 = internal constant [41 x i8] c"garmin_gps.description=garmin gps driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file272 = internal constant [46 x i8] c"garmin_gps.file=drivers/usb/serial/garmin_gps\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [23 x i8] c"garmin_gps.license=GPL\00", section ".modinfo", align 1
@__param_str_initial_mode = internal constant [24 x i8] c"garmin_gps.initial_mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@initial_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_initial_mode = internal constant %struct.kernel_param { ptr @__param_str_initial_mode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @initial_mode } }, section "__param", align 4
@__UNIQUE_ID_initial_modetype274 = internal constant [37 x i8] c"garmin_gps.parmtype=initial_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_initial_mode275 = internal constant [42 x i8] c"garmin_gps.parm=initial_mode:Initial mode\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"garmin_gps\00", [21 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2334, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@garmin_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @garmin_port_probe, ptr @garmin_port_remove, ptr null, ptr null, ptr null, ptr @garmin_open, ptr @garmin_close, ptr @garmin_write, ptr @garmin_write_room, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @garmin_throttle, ptr @garmin_unthrottle, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @garmin_read_int_callback, ptr null, ptr @garmin_read_bulk_callback, ptr @garmin_write_bulk_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Garmin GPS usb/tty\00", [45 x i8] zeroinitializer }, align 32
@garmin_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&garmin_data_p->timer)\00", [40 x i8] zeroinitializer }, align 32
@garmin_port_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&garmin_data_p->lock\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.send_to_tty = private unnamed_addr constant [12 x i8] c"send_to_tty\00", align 1
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@garmin_init_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 878, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to submit interrupt urb: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"garmin_init_session\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/serial/garmin_gps.c\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@garmin_init_session._entry_ptr = internal global ptr @garmin_init_session._entry, section ".printk_index", align 4
@garmin_init_session.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.13, ptr @.str.16, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - starting session ...\0A\00", [37 x i8] zeroinitializer }, align 32
@GARMIN_START_SESSION_REQ = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\00\00\00\05\00\00\00\00\00\00\00", [20 x i8] zeroinitializer }, align 32
@__func__.garmin_write_bulk = private unnamed_addr constant [18 x i8] c"garmin_write_bulk\00", align 1
@garmin_write_bulk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.garmin_write_bulk, ptr @.str.13, i32 1031, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s - usb_submit_urb(write bulk) failed with status = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@garmin_write_bulk._entry_ptr = internal global ptr @garmin_write_bulk._entry, section ".printk_index", align 4
@garmin_close.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.13, ptr @.str.19, i8 0, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"garmin_close\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - mode=%d state=%d flags=0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.garmin_write = private unnamed_addr constant [13 x i8] c"garmin_write\00", align 1
@garmin_write.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.garmin_write, ptr @.str.13, ptr @.str.20, i8 1, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - processing private request %d\0A\00", [60 x i8] zeroinitializer }, align 32
@garmin_write.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.garmin_write, ptr @.str.13, ptr @.str.21, i8 1, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - mode set to %d\0A\00", [43 x i8] zeroinitializer }, align 32
@garmin_write.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.garmin_write, ptr @.str.13, ptr @.str.22, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - initial_mode set to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@process_resetdev_request.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.13, ptr @.str.24, i8 0, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"process_resetdev_request\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - usb_reset_device\0A\00", [41 x i8] zeroinitializer }, align 32
@process_resetdev_request.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.13, ptr @.str.25, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - usb_reset_device failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@gsp_receive.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.13, ptr @.str.27, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gsp_receive\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ACK packet complete.\0A\00", [42 x i8] zeroinitializer }, align 32
@gsp_receive.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.13, ptr @.str.28, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAK packet complete.\0A\00", [42 x i8] zeroinitializer }, align 32
@gsp_receive.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.13, ptr @.str.29, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"packet complete - id=0x%X.\0A\00", [36 x i8] zeroinitializer }, align 32
@gsp_receive.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.13, ptr @.str.30, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - packet too large.\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.gsp_rec_packet = private unnamed_addr constant [15 x i8] c"gsp_rec_packet\00", align 1
@gsp_rec_packet.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.gsp_rec_packet, ptr @.str.13, ptr @.str.31, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s - invalid size, expected %d bytes, got %d\0A\00", [50 x i8] zeroinitializer }, align 32
@gsp_rec_packet.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.gsp_rec_packet, ptr @.str.13, ptr @.str.33, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s - invalid checksum, expected %02x, got %02x\0A\00", [48 x i8] zeroinitializer }, align 32
@GARMIN_STOP_TRANSFER_REQ = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\14\00\00\00\0A\00\00\00\02\00\00\00\00\00", [18 x i8] zeroinitializer }, align 32
@GARMIN_STOP_TRANSFER_REQ_V2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\14\00\00\00\0A\00\00\00\01\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@gsp_next_packet.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.13, ptr @.str.35, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gsp_next_packet\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - next pkt: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@gsp_send.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.13, ptr @.str.37, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gsp_send\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - state %d - %d bytes.\0A\00", [37 x i8] zeroinitializer }, align 32
@gsp_send.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.13, ptr @.str.38, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"packet too large\0A\00", [46 x i8] zeroinitializer }, align 32
@gsp_send.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.13, ptr @.str.39, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - %d bytes in buffer, %d bytes in pkt.\0A\00", [53 x i8] zeroinitializer }, align 32
@gsp_send.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.13, ptr @.str.40, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"not an application packet (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@gsp_send.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.13, ptr @.str.41, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"packet-id %d too large\0A\00", [40 x i8] zeroinitializer }, align 32
@gsp_send.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.13, ptr @.str.42, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"packet-size %d too large\0A\00", [38 x i8] zeroinitializer }, align 32
@nat_receive.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.13, ptr @.str.44, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nat_receive\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - packet size too large: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@garmin_unthrottle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.13, i32 1352, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - failed resubmitting read urb, error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"garmin_unthrottle\00", [46 x i8] zeroinitializer }, align 32
@garmin_unthrottle._entry_ptr = internal global ptr @garmin_unthrottle._entry, section ".printk_index", align 4
@garmin_read_int_callback.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.13, ptr @.str.48, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"garmin_read_int_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@garmin_read_int_callback.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.13, ptr @.str.49, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@GARMIN_BULK_IN_AVAIL_REPLY = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\00\00\00\02\00\00\00\00\00\00\00", [20 x i8] zeroinitializer }, align 32
@garmin_read_int_callback.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.13, ptr @.str.50, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - bulk data available.\0A\00", [37 x i8] zeroinitializer }, align 32
@garmin_read_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.13, i32 1252, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - failed submitting read urb, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@garmin_read_int_callback._entry_ptr = internal global ptr @garmin_read_int_callback._entry, section ".printk_index", align 4
@GARMIN_START_SESSION_REPLY = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\00\00\00\06\00\00\00\04\00\00\00", [20 x i8] zeroinitializer }, align 32
@garmin_read_int_callback.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.13, ptr @.str.52, i8 1, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s - start-of-session reply seen - serial %u.\0A\00", [49 x i8] zeroinitializer }, align 32
@garmin_read_int_callback._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.13, i32 1288, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - Error %d submitting interrupt urb\0A\00", [56 x i8] zeroinitializer }, align 32
@garmin_read_int_callback._entry_ptr.55 = internal global ptr @garmin_read_int_callback._entry.53, section ".printk_index", align 4
@garmin_read_process.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.13, ptr @.str.57, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"garmin_read_process\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - pkt dropped\0A\00", [46 x i8] zeroinitializer }, align 32
@pkt_add.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.13, ptr @.str.59, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pkt_add\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - added: pkt: %d - %d bytes\0A\00", [32 x i8] zeroinitializer }, align 32
@garmin_read_bulk_callback.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.13, ptr @.str.61, i8 1, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"garmin_read_bulk_callback\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - nonzero read bulk status received: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@garmin_read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.60, ptr @.str.13, i32 1191, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@garmin_read_bulk_callback._entry_ptr = internal global ptr @garmin_read_bulk_callback._entry, section ".printk_index", align 4
@garmin_read_bulk_callback._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.60, ptr @.str.13, i32 1199, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@garmin_read_bulk_callback._entry_ptr.63 = internal global ptr @garmin_read_bulk_callback._entry.62, section ".printk_index", align 4
@garmin_read_bulk_callback.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.13, ptr @.str.64, i8 1, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - end of bulk data\0A\00", [41 x i8] zeroinitializer }, align 32
@gsp_send_ack.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.13, ptr @.str.66, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gsp_send_ack\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - pkt-id: 0x%X.\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 16]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 21]
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1437, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"initial_mode\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 28, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1441, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 200, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"garmin_device\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1416, i32 33 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1421, i32 25 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1382, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1383, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 393, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1367, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1368, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 877, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 886, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [25 x i8] c"GARMIN_START_SESSION_REQ\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 176, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1029, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 934, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1072, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1083, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1099, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 838, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 841, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 516, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 519, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 521, i32 6 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 543, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 397, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 418, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [25 x i8] c"GARMIN_STOP_TRANSFER_REQ\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 182, i32 28 }
@___asan_gen_.200 = private unnamed_addr constant [28 x i8] c"GARMIN_STOP_TRANSFER_REQ_V2\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 184, i32 28 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 709, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 597, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 602, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 621, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 631, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 637, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 642, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 755, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1350, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1227, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1231, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [27 x i8] c"GARMIN_BULK_IN_AVAIL_REPLY\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 180, i32 28 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1243, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1250, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant [27 x i8] c"GARMIN_START_SESSION_REPLY\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 178, i32 28 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1278, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1286, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1135, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 286, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1173, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1189, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1197, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1202, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private constant [35 x i8] c"../drivers/usb/serial/garmin_gps.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 343, i32 2 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_initial_mode275, ptr @__UNIQUE_ID_initial_modetype274, ptr @__UNIQUE_ID_license273, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_garmin_gps__269_1441_usb_serial_module_init6, ptr @__param_initial_mode, ptr @garmin_init_session._entry, ptr @garmin_init_session._entry_ptr, ptr @garmin_read_bulk_callback._entry, ptr @garmin_read_bulk_callback._entry.62, ptr @garmin_read_bulk_callback._entry_ptr, ptr @garmin_read_bulk_callback._entry_ptr.63, ptr @garmin_read_int_callback._entry, ptr @garmin_read_int_callback._entry.53, ptr @garmin_read_int_callback._entry_ptr, ptr @garmin_read_int_callback._entry_ptr.55, ptr @garmin_unthrottle._entry, ptr @garmin_unthrottle._entry_ptr, ptr @garmin_write_bulk._entry, ptr @garmin_write_bulk._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @initial_mode, ptr @.str, ptr @id_table, ptr @garmin_device, ptr @.str.1, ptr @garmin_port_probe.__key, ptr @.str.2, ptr @garmin_port_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @init_usb_anchor.__key, ptr @.str.8, ptr @init_usb_anchor.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @GARMIN_START_SESSION_REQ, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @GARMIN_STOP_TRANSFER_REQ, ptr @GARMIN_STOP_TRANSFER_REQ_V2, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @GARMIN_BULK_IN_AVAIL_REPLY, ptr @.str.50, ptr @.str.51, ptr @GARMIN_START_SESSION_REPLY, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initial_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garmin_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garmin_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garmin_port_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garmin_init_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GARMIN_START_SESSION_REQ to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garmin_write_bulk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GARMIN_STOP_TRANSFER_REQ to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GARMIN_STOP_TRANSFER_REQ_V2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garmin_unthrottle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GARMIN_BULK_IN_AVAIL_REPLY to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garmin_read_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GARMIN_START_SESSION_REPLY to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garmin_read_int_callback._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garmin_read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @garmin_read_bulk_callback._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #10
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
define internal i32 @garmin_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1068) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %timer = getelementptr inbounds %struct.garmin_data, ptr %call7.i.i, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @timeout_handler, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @garmin_port_probe.__key) #10
  %lock = getelementptr inbounds %struct.garmin_data, ptr %call7.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @garmin_port_probe.__key.3, i16 noundef signext 3) #10
  %pktlist = getelementptr inbounds %struct.garmin_data, ptr %call7.i.i, i32 0, i32 15
  %1 = ptrtoint ptr %pktlist to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %pktlist, ptr %pktlist, align 4
  %prev.i = getelementptr inbounds %struct.garmin_data, ptr %call7.i.i, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pktlist, ptr %prev.i, align 8
  %port5 = getelementptr inbounds %struct.garmin_data, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %port5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %port, ptr %port5, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call7.i.i, align 8
  %flags = getelementptr inbounds %struct.garmin_data, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %count = getelementptr inbounds %struct.garmin_data, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %count, align 1
  %write_urbs = getelementptr inbounds %struct.garmin_data, ptr %call7.i.i, i32 0, i32 16
  %7 = getelementptr inbounds %struct.garmin_data, ptr %call7.i.i, i32 0, i32 16, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 104)
  %9 = ptrtoint ptr %write_urbs to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %write_urbs, ptr %write_urbs, align 4
  %prev.i.i = getelementptr inbounds %struct.garmin_data, ptr %call7.i.i, i32 0, i32 16, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %write_urbs, ptr %prev.i.i, align 8
  tail call void @__init_waitqueue_head(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_usb_anchor.__key) #10
  %lock.i = getelementptr inbounds %struct.garmin_data, ptr %call7.i.i, i32 0, i32 16, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_usb_anchor.__key.9, i16 noundef signext 3) #10
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call6 = tail call fastcc i32 @garmin_init_session(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %err_free

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_free:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @garmin_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write_urbs = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 16
  tail call void @usb_kill_anchored_urbs(ptr noundef %write_urbs) #10
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #10
  %timer = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @garmin_open(ptr nocapture noundef readnone %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %2 = load i32, ptr @initial_mode, align 4
  %conv6 = trunc i32 %2 to i8
  %mode = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6, ptr %mode, align 4
  %count = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %count, align 1
  %flags7 = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %flags7 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags7, align 2
  %7 = and i16 %6, 128
  store i16 %7, ptr %flags7, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %8 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp12 = icmp eq i8 %11, 8
  br i1 %cmp12, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call fastcc i32 @garmin_init_session(ptr noundef %port)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call14, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 5, ptr %1, align 4
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @garmin_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_close.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_close, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !206

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %mode = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %conv4 = zext i8 %5 to i32
  %flags = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %conv5 = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_close.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @garmin_clear(ptr noundef %1)
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %8 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #10
  %write_urbs = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 16
  tail call void @usb_kill_anchored_urbs(ptr noundef %write_urbs) #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp.not = icmp eq i8 %11, 8
  br i1 %cmp.not, label %do.end.if.end12_crit_edge, label %if.then10

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %1, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @garmin_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %privpkt2 = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_write, %if.then.i)) #10
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !206

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.garmin_write, i32 noundef %count, i32 noundef %count, ptr noundef %buf) #10
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp = icmp eq i8 %3, 8
  br i1 %cmp, label %usb_serial_debug_data.exit.cleanup_crit_edge, label %if.end

usb_serial_debug_data.exit.cleanup_crit_edge:     ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %count)
  %cmp4 = icmp sgt i32 %count, 11
  br i1 %cmp4, label %if.then6, label %if.end.if.end84_crit_edge

if.end.if.end84_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then6:                                         ; preds = %if.end
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 16)
  %5 = call ptr @memcpy(ptr %privpkt2, ptr %buf, i32 %4)
  %add.ptr.i = getelementptr %struct.garmin_data, ptr %1, i32 0, i32 13, i32 8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %add.ptr.i136 = getelementptr %struct.garmin_data, ptr %1, i32 0, i32 13, i32 4
  %9 = ptrtoint ptr %add.ptr.i136 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i136, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %add = add i32 %8, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp19 = icmp eq i32 %add, %count
  br i1 %cmp19, label %land.lhs.true, label %if.then6.if.end84_crit_edge

if.then6.if.end84_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

land.lhs.true:                                    ; preds = %if.then6
  %12 = ptrtoint ptr %privpkt2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %privpkt2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1265504257, i32 %13)
  %cmp24 = icmp eq i32 %13, 1265504257
  br i1 %cmp24, label %do.body, label %land.lhs.true.if.end84_crit_edge

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_write.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_write, %if.then30)) #10
          to label %do.end [label %if.then30], !srcloc !206

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_write.__UNIQUE_ID_ddebug259, ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.garmin_write, i32 noundef %11) #10
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body
  tail call fastcc void @garmin_clear(ptr noundef %1)
  %14 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb56
    i32 5, label %sw.bb57
    i32 6, label %sw.bb59
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %7)
  %cmp33.not = icmp eq i32 %7, 67108864
  br i1 %cmp33.not, label %if.end36, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.garmin_data, ptr %1, i32 0, i32 13, i32 12
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = lshr i32 %16, 24
  %conv37 = trunc i32 %17 to i8
  %mode = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv37, ptr %mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_write.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_write, %if.then50)) #10
          to label %cleanup [label %if.then50], !srcloc !206

if.then50:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mode, align 4
  %conv52 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_write.__UNIQUE_ID_ddebug260, ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.garmin_write, i32 noundef %conv52) #10
  br label %cleanup

sw.bb56:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @priv_status_resp(ptr noundef %port)
  br label %cleanup

sw.bb57:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @process_resetdev_request(ptr noundef %port)
  br label %cleanup

sw.bb59:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %7)
  %cmp60.not = icmp eq i32 %7, 67108864
  br i1 %cmp60.not, label %if.end63, label %sw.bb59.cleanup_crit_edge

sw.bb59.cleanup_crit_edge:                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end63:                                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx64 = getelementptr %struct.garmin_data, ptr %1, i32 0, i32 13, i32 12
  %21 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx64, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  store i32 %23, ptr @initial_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_write.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_write, %if.then77)) #10
          to label %cleanup [label %if.then77], !srcloc !206

if.then77:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %mode78 = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %mode78 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mode78, align 4
  %conv79 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_write.__UNIQUE_ID_ddebug261, ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.garmin_write, i32 noundef %conv79) #10
  br label %cleanup

if.end84:                                         ; preds = %land.lhs.true.if.end84_crit_edge, %if.then6.if.end84_crit_edge, %if.end.if.end84_crit_edge
  %mode85 = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %mode85 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mode85, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp87 = icmp eq i8 %27, 1
  br i1 %cmp87, label %if.then89, label %if.else

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %call90 = tail call fastcc i32 @gsp_receive(ptr noundef %1, ptr noundef %buf, i32 noundef %count)
  br label %cleanup

if.else:                                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %call91 = tail call fastcc i32 @nat_receive(ptr noundef %1, ptr noundef %buf, i32 noundef %count)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then89, %if.then77, %if.end63, %sw.bb59.cleanup_crit_edge, %sw.bb57, %sw.bb56, %if.then50, %if.end36, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge, %usb_serial_debug_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then89 ], [ %call91, %if.else ], [ -5, %usb_serial_debug_data.exit.cleanup_crit_edge ], [ -1000, %sw.bb.cleanup_crit_edge ], [ -1000, %sw.bb59.cleanup_crit_edge ], [ %count, %if.then77 ], [ %count, %if.then50 ], [ %count, %do.end.cleanup_crit_edge ], [ %count, %sw.bb57 ], [ %count, %sw.bb56 ], [ %count, %if.end36 ], [ %count, %if.end63 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @garmin_write_room(ptr nocapture noundef readonly %tty) #3 align 64 {
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
  %outsize = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outsize, align 4
  %sub = sub i32 529, %5
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @garmin_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
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
  %lock = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %flags = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = or i16 %5, 264
  store i16 %6, ptr %flags, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @garmin_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
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
  %lock = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %flags = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, -9
  store i16 %6, ptr %flags, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %mode = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @garmin_flush_queue(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags, align 2
  %11 = and i16 %10, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp9.not = icmp eq i16 %11, 0
  br i1 %cmp9.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then11:                                        ; preds = %if.end
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_urb, align 4
  %call12 = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then11.if.end15_crit_edge, label %do.end

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %call12) #14
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then11.if.end15_crit_edge, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @garmin_read_int_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %7, label %do.body6 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge212
    i32 -108, label %entry.do.body_crit_edge213
  ]

entry.do.body_crit_edge213:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge212:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge212, %entry.do.body_crit_edge213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_read_int_callback.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_read_int_callback, %if.then)) #10
          to label %cleanup [label %if.then], !srcloc !206

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_read_int_callback.__UNIQUE_ID_ddebug265, ptr noundef %dev5, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %7) #10
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_read_int_callback.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_read_int_callback, %if.then18)) #10
          to label %cleanup [label %if.then18], !srcloc !206

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %11 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev19, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_read_int_callback.__UNIQUE_ID_ddebug266, ptr noundef %dev20, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %7) #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %dev24 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_read_int_callback, %if.then.i)) #10
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !206

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev24, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.47, i32 noundef %14, i32 noundef %14, ptr noundef %5) #10
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %sw.epilog
  %15 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %actual_length, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %16, label %usb_serial_debug_data.exit.if.end143_crit_edge [
    i32 12, label %land.lhs.true
    i32 16, label %land.lhs.true99
  ]

usb_serial_debug_data.exit.if.end143_crit_edge:   ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

land.lhs.true:                                    ; preds = %usb_serial_debug_data.exit
  %bcmp197 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %5, ptr noundef nonnull dereferenceable(12) @GARMIN_BULK_IN_AVAIL_REPLY, i32 12) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp197)
  %cmp28 = icmp eq i32 %bcmp197, 0
  br i1 %cmp28, label %do.body30, label %land.lhs.true.if.end143_crit_edge

land.lhs.true.if.end143_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

do.body30:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_read_int_callback.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_read_int_callback, %if.then42)) #10
          to label %do.end46 [label %if.then42], !srcloc !206

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_read_int_callback.__UNIQUE_ID_ddebug267, ptr noundef %dev24, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.47) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.body30
  %flags47 = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %flags47 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags47, align 2
  %20 = and i16 %19, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp48 = icmp eq i16 %20, 0
  br i1 %cmp48, label %if.then50, label %do.body76

if.then50:                                        ; preds = %do.end46
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_urb, align 4
  %call51 = tail call i32 @usb_submit_urb(ptr noundef %22, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body59, label %do.end56

do.end56:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.47, i32 noundef %call51) #14
  br label %if.end143

do.body59:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 14
  %call64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %23 = ptrtoint ptr %flags47 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags47, align 2
  %25 = or i16 %24, 32
  store i16 %25, ptr %flags47, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call64) #10
  br label %if.end143

do.body76:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  %lock82 = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 14
  %call84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock82) #10
  %26 = ptrtoint ptr %flags47 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags47, align 2
  %28 = or i16 %27, 16
  store i16 %28, ptr %flags47, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock82, i32 noundef %call84) #10
  br label %if.end143

land.lhs.true99:                                  ; preds = %usb_serial_debug_data.exit
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(12) %5, ptr noundef nonnull dereferenceable(12) @GARMIN_START_SESSION_REPLY, i32 12) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp101 = icmp eq i32 %bcmp, 0
  br i1 %cmp101, label %do.body105, label %land.lhs.true99.if.end143_crit_edge

land.lhs.true99.if.end143_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

do.body105:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #12
  %lock111 = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 14
  %call113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock111) #10
  %flags118 = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %flags118 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags118, align 2
  %31 = or i16 %30, 128
  store i16 %31, ptr %flags118, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock111, i32 noundef %call113) #10
  %add.ptr = getelementptr i8, ptr %5, i32 12
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %serial_num = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %serial_num to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %serial_num, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_read_int_callback.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_read_int_callback, %if.then136)) #10
          to label %if.end143 [label %if.then136], !srcloc !206

if.then136:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %serial_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %serial_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_read_int_callback.__UNIQUE_ID_ddebug268, ptr noundef %dev24, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.47, i32 noundef %37) #10
  br label %if.end143

if.end143:                                        ; preds = %if.then136, %do.body105, %land.lhs.true99.if.end143_crit_edge, %do.body76, %do.body59, %do.end56, %land.lhs.true.if.end143_crit_edge, %usb_serial_debug_data.exit.if.end143_crit_edge
  %38 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %actual_length, align 4
  tail call fastcc void @garmin_read_process(ptr noundef %3, ptr noundef %5, i32 noundef %39, i32 noundef 0)
  %call145 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end143.cleanup_crit_edge, label %do.end150

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end150:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  %dev151 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %40 = ptrtoint ptr %dev151 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev151, align 4
  %dev152 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev152, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.47, i32 noundef %call145) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end150, %if.end143.cleanup_crit_edge, %if.then18, %do.body6, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @garmin_read_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_read_bulk_callback.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_read_bulk_callback, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !206

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_read_bulk_callback.__UNIQUE_ID_ddebug263, ptr noundef %dev7, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, i32 noundef %5) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %dev9 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_read_bulk_callback, %if.then.i)) #10
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !206

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.60, i32 noundef %11, i32 noundef %11, ptr noundef %9) #10
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end8
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  tail call fastcc void @garmin_read_process(ptr noundef %3, ptr noundef %9, i32 noundef %13, i32 noundef 1)
  %14 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  %flags12 = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %flags12 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags12, align 2
  br i1 %cmp, label %land.lhs.true, label %if.then43

land.lhs.true:                                    ; preds = %usb_serial_debug_data.exit
  %18 = and i16 %17, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp13.not = icmp eq i16 %18, 0
  br i1 %cmp13.not, label %do.body61, label %do.body17

do.body17:                                        ; preds = %land.lhs.true
  %lock = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 14
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %19 = ptrtoint ptr %flags12 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags12, align 2
  %21 = and i16 %20, -17
  store i16 %21, ptr %flags12, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call22) #10
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_urb, align 4
  %call32 = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body17.cleanup_crit_edge, label %do.end37

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end37:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, i32 noundef %call32) #14
  br label %cleanup

if.then43:                                        ; preds = %usb_serial_debug_data.exit
  %24 = and i16 %17, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp47 = icmp eq i16 %24, 0
  br i1 %cmp47, label %if.then49, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then49:                                        ; preds = %if.then43
  %read_urb50 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %read_urb50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_urb50, align 4
  %call51 = tail call i32 @usb_submit_urb(ptr noundef %26, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then49.cleanup_crit_edge, label %do.end56

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end56:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, i32 noundef %call51) #14
  br label %cleanup

do.body61:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_read_bulk_callback.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_read_bulk_callback, %if.then73)) #10
          to label %do.body79 [label %if.then73], !srcloc !206

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_read_bulk_callback.__UNIQUE_ID_ddebug264, ptr noundef %dev9, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.60) #10
  br label %do.body79

do.body79:                                        ; preds = %if.then73, %do.body61
  %lock85 = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 14
  %call87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock85) #10
  %27 = ptrtoint ptr %flags12 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags12, align 2
  %29 = and i16 %28, -33
  store i16 %29, ptr %flags12, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock85, i32 noundef %call87) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body79, %do.end56, %if.then49.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %do.end37, %do.body17.cleanup_crit_edge, %if.then6, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @garmin_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %7)
  %cmp = icmp eq i32 %7, 335544320
  br i1 %cmp, label %if.then2, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then2:                                         ; preds = %if.then
  %mode = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp3 = icmp eq i8 %9, 1
  br i1 %cmp3, label %if.then5, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %5, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  tail call fastcc void @gsp_send_ack(ptr noundef %3, i8 noundef zeroext %11)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then2.if.end8_crit_edge, %if.then.if.end8_crit_edge
  tail call void @usb_serial_port_softint(ptr noundef nonnull %1) #10
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry.if.end9_crit_edge
  %transfer_buffer10 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer10, align 4
  tail call void @kfree(ptr noundef %13) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timeout_handler(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -12
  %mode = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %t, i32 -10
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @garmin_flush_queue(ptr noundef %add.ptr)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @garmin_init_session(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #10
  %4 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_in_urb, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call2) #14
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_init_session.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_init_session, %if.then8)) #10
          to label %do.end12 [label %if.then8], !srcloc !206

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %dev9 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_init_session.__UNIQUE_ID_ddebug257, ptr noundef %dev9, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.12) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %do.body3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %1, align 4
  %call13 = tail call fastcc i32 @garmin_write_bulk(ptr noundef %port, ptr noundef nonnull @GARMIN_START_SESSION_REQ, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end12.err_kill_urbs_crit_edge, label %for.cond

do.end12.err_kill_urbs_crit_edge:                 ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_kill_urbs

for.cond:                                         ; preds = %do.end12
  %call13.1 = tail call fastcc i32 @garmin_write_bulk(ptr noundef %port, ptr noundef nonnull @GARMIN_START_SESSION_REQ, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %cmp14.1 = icmp slt i32 %call13.1, 0
  br i1 %cmp14.1, label %for.cond.err_kill_urbs_crit_edge, label %for.cond.1

for.cond.err_kill_urbs_crit_edge:                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_kill_urbs

for.cond.1:                                       ; preds = %for.cond
  %call13.2 = tail call fastcc i32 @garmin_write_bulk(ptr noundef %port, ptr noundef nonnull @GARMIN_START_SESSION_REQ, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.2)
  %cmp14.2 = icmp slt i32 %call13.2, 0
  br i1 %cmp14.2, label %for.cond.1.err_kill_urbs_crit_edge, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1.err_kill_urbs_crit_edge:               ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_kill_urbs

err_kill_urbs:                                    ; preds = %for.cond.1.err_kill_urbs_crit_edge, %for.cond.err_kill_urbs_crit_edge, %do.end12.err_kill_urbs_crit_edge
  %call13.lcssa = phi i32 [ %call13, %do.end12.err_kill_urbs_crit_edge ], [ %call13.1, %for.cond.err_kill_urbs_crit_edge ], [ %call13.2, %for.cond.1.err_kill_urbs_crit_edge ]
  %write_urbs = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 16
  tail call void @usb_kill_anchored_urbs(ptr noundef %write_urbs) #10
  %7 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #10
  br label %cleanup

cleanup:                                          ; preds = %err_kill_urbs, %for.cond.1.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call13.lcssa, %err_kill_urbs ], [ 0, %for.cond.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @garmin_flush_queue(ptr noundef %garmin_data_p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags1, align 2
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp = icmp eq i16 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %pktlist.i = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 15
  %3 = ptrtoint ptr %pktlist.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pktlist.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %pktlist.i
  br i1 %cmp.i.not.i, label %pkt_pop.exit.thread, label %if.then.i

pkt_pop.exit.thread:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %do.body7

if.then.i:                                        ; preds = %if.then
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.pkt_pop.exit_crit_edge

if.then.i.pkt_pop.exit_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_pop.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %pkt_pop.exit

pkt_pop.exit:                                     ; preds = %if.end.i.i.i, %if.then.i.pkt_pop.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %cmp3.not = icmp eq ptr %4, null
  br i1 %cmp3.not, label %pkt_pop.exit.do.body7_crit_edge, label %if.then5

pkt_pop.exit.do.body7_crit_edge:                  ; preds = %pkt_pop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7

if.then5:                                         ; preds = %pkt_pop.exit
  %port = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 7
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 4
  %data = getelementptr inbounds %struct.garmin_packet, ptr %4, i32 0, i32 3
  %size = getelementptr inbounds %struct.garmin_packet, ptr %4, i32 0, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then5.send_to_tty.exit_crit_edge, label %if.then.i1

if.then5.send_to_tty.exit_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_to_tty.exit

if.then.i1:                                       ; preds = %if.then5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_flush_queue, %if.then.i.i)) #10
          to label %usb_serial_debug_data.exit.i [label %if.then.i.i], !srcloc !206

if.then.i.i:                                      ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.send_to_tty, i32 noundef %16, i32 noundef %16, ptr noundef %data) #10
  br label %usb_serial_debug_data.exit.i

usb_serial_debug_data.exit.i:                     ; preds = %if.then.i.i, %if.then.i1
  %port1.i = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 1
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port1.i, ptr noundef %data, i8 noundef zeroext 0, i32 noundef %16) #10
  tail call void @tty_flip_buffer_push(ptr noundef %port1.i) #10
  br label %send_to_tty.exit

send_to_tty.exit:                                 ; preds = %usb_serial_debug_data.exit.i, %if.then5.send_to_tty.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %4) #10
  %timer = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %17, 1
  %call6 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #10
  br label %if.end19

do.body7:                                         ; preds = %pkt_pop.exit.do.body7_crit_edge, %pkt_pop.exit.thread
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %18 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags1, align 2
  %20 = and i16 %19, -257
  store i16 %20, ptr %flags1, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call11) #10
  br label %if.end19

if.end19:                                         ; preds = %do.body7, %send_to_tty.exit, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_to_tty(ptr noundef %port, ptr noundef %data, i32 noundef %actual_length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %actual_length)
  %tobool.not = icmp eq i32 %actual_length, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_to_tty, %if.then.i)) #10
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !206

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.send_to_tty, i32 noundef %actual_length, i32 noundef %actual_length, ptr noundef %data) #10
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.then
  %port1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port1, ptr noundef %data, i8 noundef zeroext 0, i32 noundef %actual_length) #10
  tail call void @tty_flip_buffer_push(ptr noundef %port1) #10
  br label %if.end

if.end:                                           ; preds = %usb_serial_debug_data.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @garmin_write_bulk(ptr noundef %port, ptr nocapture noundef readonly %buf, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 14
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %flags7 = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags7 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags7, align 2
  %6 = and i16 %5, -2049
  store i16 %6, ptr %flags7, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %count, i32 noundef 2592) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %7 = call ptr @memcpy(ptr %call9.i, ptr %buf, i32 %count)
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_write_bulk, %if.then.i1)) #10
          to label %usb_serial_debug_data.exit [label %if.then.i1], !srcloc !206

if.then.i1:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.garmin_write_bulk, i32 noundef %count, i32 noundef %count, ptr noundef nonnull %call9.i) #10
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i1, %if.end15
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %10 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv18 = zext i8 %11 to i32
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 8
  %shl.i = shl i32 %13, 8
  %shl1.i = shl nuw nsw i32 %conv18, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 8
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 10
  %15 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %count, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 28
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @garmin_write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 27
  %19 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %port, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 13
  %20 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transfer_flags, align 4
  %or21 = or i32 %21, 64
  store i32 %or21, ptr %transfer_flags, align 4
  %22 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %23)
  %cmp23 = icmp eq i32 %23, 335544320
  br i1 %cmp23, label %do.body27, label %usb_serial_debug_data.exit.if.end50_crit_edge

usb_serial_debug_data.exit.if.end50_crit_edge:    ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.body27:                                        ; preds = %usb_serial_debug_data.exit
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %24 = ptrtoint ptr %flags7 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags7, align 2
  %26 = or i16 %25, 4
  store i16 %26, ptr %flags7, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #10
  %mode = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp46 = icmp eq i8 %28, 1
  br i1 %cmp46, label %if.then48, label %do.body27.if.end50_crit_edge

do.body27.if.end50_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then48:                                        ; preds = %do.body27
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %pktlist.i = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 15
  %29 = ptrtoint ptr %pktlist.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %pktlist.i, align 4
  %cmp.i.not12.i = icmp eq ptr %30, %pktlist.i
  br i1 %cmp.i.not12.i, label %if.then48.pkt_clear.exit_crit_edge, label %if.then48.while.body.i_crit_edge

if.then48.while.body.i_crit_edge:                 ; preds = %if.then48
  br label %while.body.i

if.then48.pkt_clear.exit_crit_edge:               ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_clear.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.then48.while.body.i_crit_edge
  %31 = phi ptr [ %41, %list_del.exit.i.while.body.i_crit_edge ], [ %30, %if.then48.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %31) #10
  %40 = ptrtoint ptr %pktlist.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %pktlist.i, align 4
  %cmp.i.not.i = icmp eq ptr %41, %pktlist.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.pkt_clear.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_del.exit.i.pkt_clear.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_clear.exit

pkt_clear.exit:                                   ; preds = %list_del.exit.i.pkt_clear.exit_crit_edge, %if.then48.pkt_clear.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #10
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 11, ptr %3, align 4
  br label %if.end50

if.end50:                                         ; preds = %pkt_clear.exit, %do.body27.if.end50_crit_edge, %usb_serial_debug_data.exit.if.end50_crit_edge
  %write_urbs = getelementptr inbounds %struct.garmin_data, ptr %3, i32 0, i32 16
  tail call void @usb_anchor_urb(ptr noundef nonnull %call12, ptr noundef %write_urbs) #10
  %call51 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call12, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.if.end58_crit_edge, label %do.end56

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.garmin_write_bulk, i32 noundef %call51) #14
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call12) #10
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.end50.if.end58_crit_edge
  %count.addr.0 = phi i32 [ %call51, %do.end56 ], [ %count, %if.end50.if.end58_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call12) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end58 ], [ -12, %if.then14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @garmin_clear(ptr noundef %garmin_data_p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %pktlist.i = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 15
  %0 = ptrtoint ptr %pktlist.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pktlist.i, align 4
  %cmp.i.not12.i = icmp eq ptr %1, %pktlist.i
  br i1 %cmp.i.not12.i, label %entry.pkt_clear.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.pkt_clear.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_clear.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %2) #10
  %11 = ptrtoint ptr %pktlist.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pktlist.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %pktlist.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.pkt_clear.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_del.exit.i.pkt_clear.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_clear.exit

pkt_clear.exit:                                   ; preds = %list_del.exit.i.pkt_clear.exit_crit_edge, %entry.pkt_clear.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %insize = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 9
  %13 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %insize, align 4
  %outsize = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 10
  %14 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %outsize, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @priv_status_resp(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %privpkt = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %privpkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1265504257, ptr %privpkt, align 4
  %arrayidx1 = getelementptr %struct.garmin_data, ptr %1, i32 0, i32 13, i32 4
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 67108864, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr %struct.garmin_data, ptr %1, i32 0, i32 13, i32 8
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 201326592, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr %struct.garmin_data, ptr %1, i32 0, i32 13, i32 12
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 603979776, ptr %arrayidx3, align 4
  %mode = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 4
  %conv = zext i8 %7 to i32
  %8 = shl nuw i32 %conv, 24
  %arrayidx4 = getelementptr %struct.garmin_data, ptr %1, i32 0, i32 13, i32 16
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx4, align 4
  %serial_num = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %serial_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %serial_num, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %arrayidx5 = getelementptr %struct.garmin_data, ptr %1, i32 0, i32 13, i32 20
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@priv_status_resp, %if.then.i.i)) #10
          to label %send_to_tty.exit [label %if.then.i.i], !srcloc !206

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.send_to_tty, i32 noundef 24, i32 noundef 24, ptr noundef %privpkt) #10
  br label %send_to_tty.exit

send_to_tty.exit:                                 ; preds = %if.then.i.i, %entry
  %port1.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port1.i, ptr noundef %privpkt, i8 noundef zeroext 0, i32 noundef 24) #10
  tail call void @tty_flip_buffer_push(ptr noundef %port1.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_resetdev_request(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %flags6 = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags6 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags6, align 2
  %4 = and i16 %3, -2
  store i16 %4, ptr %flags6, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %1, align 4
  %serial_num = getelementptr inbounds %struct.garmin_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %serial_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %serial_num, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %7 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_resetdev_request.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_resetdev_request, %if.then)) #10
          to label %do.end16 [label %if.then], !srcloc !206

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_resetdev_request.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23) #10
  br label %do.end16

do.end16:                                         ; preds = %if.then, %entry
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call18 = tail call i32 @usb_reset_device(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end16.if.end38_crit_edge, label %do.body21

do.end16.if.end38_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.body21:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_resetdev_request.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_resetdev_request, %if.then33)) #10
          to label %if.end38 [label %if.then33], !srcloc !206

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %dev34 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_resetdev_request.__UNIQUE_ID_ddebug256, ptr noundef %dev34, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %call18) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %do.body21, %do.end16.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsp_receive(ptr noundef %garmin_data_p, ptr nocapture noundef readonly %buf, i32 noundef returned %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 7
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %lock = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %inbuffer = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 11
  %insize = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 9
  %2 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %insize, align 4
  %flags6 = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 1
  %4 = ptrtoint ptr %flags6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags6, align 2
  %conv7 = zext i16 %5 to i32
  %and = and i32 %conv7, 8192
  %and10 = and i32 %conv7, 4096
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12 = icmp eq i32 %3, 0
  %spec.store.select = select i1 %cmp12, i32 10, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp14240 = icmp sgt i32 %count, 0
  br i1 %cmp14240, label %while.body.lr.ph, label %entry.do.body127_crit_edge

entry.do.body127_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body127

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx34 = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 11, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end125.while.body_crit_edge, %while.body.lr.ph
  %offs.0245 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end125.while.body_crit_edge ]
  %ack_or_nak_seen.0244 = phi i32 [ 0, %while.body.lr.ph ], [ %ack_or_nak_seen.2238, %if.end125.while.body_crit_edge ]
  %size.0243 = phi i32 [ %spec.store.select, %while.body.lr.ph ], [ %size.3, %if.end125.while.body_crit_edge ]
  %dleSeen.0242 = phi i32 [ %and, %while.body.lr.ph ], [ %dleSeen.3, %if.end125.while.body_crit_edge ]
  %skip.0241 = phi i32 [ %and10, %while.body.lr.ph ], [ %skip.2, %if.end125.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %offs.0245
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  %inc = add nuw nsw i32 %offs.0245, 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %7, label %if.else95 [
    i8 16, label %if.then19
    i8 3, label %if.then31
  ]

if.then19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.0241)
  %tobool.not = icmp eq i32 %skip.0241, 0
  br i1 %tobool.not, label %if.else, label %if.then19.if.end125_crit_edge

if.then19.if.end125_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dleSeen.0242)
  %tobool21.not = icmp eq i32 %dleSeen.0242, 0
  br i1 %tobool21.not, label %if.else.if.end105_crit_edge, label %if.else.if.end105.sink.split_crit_edge

if.else.if.end105.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.sink.split

if.else.if.end105_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then31:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dleSeen.0242)
  %tobool32.not = icmp eq i32 %dleSeen.0242, 0
  br i1 %tobool32.not, label %if.then31.if.end105.sink.split_crit_edge, label %if.then33

if.then31.if.end105.sink.split_crit_edge:         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.sink.split

if.then33:                                        ; preds = %if.then31
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %10 to i32
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %10, label %do.body71 [
    i8 6, label %if.then38
    i8 21, label %if.then53
  ]

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_receive.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_receive, %if.then45)) #10
          to label %if.end105 [label %if.then45], !srcloc !206

if.then45:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_receive.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.27) #10
  br label %if.end125

if.then53:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_receive.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_receive, %if.then66)) #10
          to label %if.end105 [label %if.then66], !srcloc !206

if.then66:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_receive.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.28) #10
  br label %if.end125

do.body71:                                        ; preds = %if.then33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_receive.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_receive, %if.then83)) #10
          to label %do.end87 [label %if.then83], !srcloc !206

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_receive.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %conv35) #10
  br label %do.end87

do.end87:                                         ; preds = %if.then83, %do.body71
  tail call fastcc void @gsp_rec_packet(ptr noundef %garmin_data_p, i32 noundef %size.0243)
  br label %if.end125

if.else95:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.0241)
  %tobool96.not = icmp eq i32 %skip.0241, 0
  br i1 %tobool96.not, label %if.then97, label %if.else95.if.end105_crit_edge

if.else95.if.end105_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then97:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dleSeen.0242)
  %tobool98.not = icmp eq i32 %dleSeen.0242, 0
  %spec.select = select i1 %tobool98.not, i32 %size.0243, i32 10
  br label %if.end105.sink.split

if.end105.sink.split:                             ; preds = %if.then97, %if.then31.if.end105.sink.split_crit_edge, %if.else.if.end105.sink.split_crit_edge
  %size.0243.sink249 = phi i32 [ %spec.select, %if.then97 ], [ %size.0243, %if.else.if.end105.sink.split_crit_edge ], [ %size.0243, %if.then31.if.end105.sink.split_crit_edge ]
  %.sink = phi i8 [ %7, %if.then97 ], [ 16, %if.else.if.end105.sink.split_crit_edge ], [ 3, %if.then31.if.end105.sink.split_crit_edge ]
  %skip.1.ph = phi i32 [ 0, %if.then97 ], [ 0, %if.else.if.end105.sink.split_crit_edge ], [ %skip.0241, %if.then31.if.end105.sink.split_crit_edge ]
  %inc92 = add i32 %size.0243.sink249, 1
  %arrayidx93 = getelementptr i8, ptr %inbuffer, i32 %size.0243.sink249
  %12 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %arrayidx93, align 1
  br label %if.end105

if.end105:                                        ; preds = %if.end105.sink.split, %if.else95.if.end105_crit_edge, %if.then53, %if.then38, %if.else.if.end105_crit_edge
  %skip.1 = phi i32 [ %skip.0241, %if.else95.if.end105_crit_edge ], [ 0, %if.else.if.end105_crit_edge ], [ 1, %if.then38 ], [ 1, %if.then53 ], [ %skip.1.ph, %if.end105.sink.split ]
  %dleSeen.2 = phi i32 [ %dleSeen.0242, %if.else95.if.end105_crit_edge ], [ 1, %if.else.if.end105_crit_edge ], [ 0, %if.then38 ], [ 0, %if.then53 ], [ 0, %if.end105.sink.split ]
  %size.2 = phi i32 [ %size.0243, %if.else95.if.end105_crit_edge ], [ %size.0243, %if.else.if.end105_crit_edge ], [ 10, %if.then38 ], [ 10, %if.then53 ], [ %inc92, %if.end105.sink.split ]
  %ack_or_nak_seen.2 = phi i32 [ %ack_or_nak_seen.0244, %if.else95.if.end105_crit_edge ], [ %ack_or_nak_seen.0244, %if.else.if.end105_crit_edge ], [ 6, %if.then38 ], [ 21, %if.then53 ], [ %ack_or_nak_seen.0244, %if.end105.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %size.2)
  %cmp106 = icmp sgt i32 %size.2, 272
  br i1 %cmp106, label %do.body109, label %if.end105.if.end125_crit_edge

if.end105.if.end125_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

do.body109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_receive.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_receive, %if.then121)) #10
          to label %if.end125 [label %if.then121], !srcloc !206

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_receive.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26) #10
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %do.body109, %if.end105.if.end125_crit_edge, %do.end87, %if.then66, %if.then45, %if.then19.if.end125_crit_edge
  %ack_or_nak_seen.2238 = phi i32 [ %ack_or_nak_seen.2, %if.end105.if.end125_crit_edge ], [ %ack_or_nak_seen.2, %if.then121 ], [ %ack_or_nak_seen.2, %do.body109 ], [ %ack_or_nak_seen.0244, %do.end87 ], [ 21, %if.then66 ], [ 6, %if.then45 ], [ %ack_or_nak_seen.0244, %if.then19.if.end125_crit_edge ]
  %skip.2 = phi i32 [ %skip.1, %if.end105.if.end125_crit_edge ], [ 1, %if.then121 ], [ 1, %do.body109 ], [ 1, %do.end87 ], [ 1, %if.then66 ], [ 1, %if.then45 ], [ 0, %if.then19.if.end125_crit_edge ]
  %dleSeen.3 = phi i32 [ %dleSeen.2, %if.end105.if.end125_crit_edge ], [ 0, %if.then121 ], [ 0, %do.body109 ], [ 0, %do.end87 ], [ 0, %if.then66 ], [ 0, %if.then45 ], [ 1, %if.then19.if.end125_crit_edge ]
  %size.3 = phi i32 [ %size.2, %if.end105.if.end125_crit_edge ], [ 10, %if.then121 ], [ 10, %do.body109 ], [ 10, %do.end87 ], [ 10, %if.then66 ], [ 10, %if.then45 ], [ 10, %if.then19.if.end125_crit_edge ]
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %if.end125.do.body127_crit_edge, label %if.end125.while.body_crit_edge

if.end125.while.body_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end125.do.body127_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body127

do.body127:                                       ; preds = %if.end125.do.body127_crit_edge, %entry.do.body127_crit_edge
  %skip.0.lcssa = phi i32 [ %and10, %entry.do.body127_crit_edge ], [ %skip.2, %if.end125.do.body127_crit_edge ]
  %dleSeen.0.lcssa = phi i32 [ %and, %entry.do.body127_crit_edge ], [ %dleSeen.3, %if.end125.do.body127_crit_edge ]
  %size.0.lcssa = phi i32 [ %spec.store.select, %entry.do.body127_crit_edge ], [ %size.3, %if.end125.do.body127_crit_edge ]
  %ack_or_nak_seen.0.lcssa = phi i32 [ 0, %entry.do.body127_crit_edge ], [ %ack_or_nak_seen.2238, %if.end125.do.body127_crit_edge ]
  %call135 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %13 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %size.0.lcssa, ptr %insize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.0.lcssa)
  %tobool141.not = icmp eq i32 %skip.0.lcssa, 0
  %14 = ptrtoint ptr %flags6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags6, align 2
  %16 = and i16 %15, -12289
  %masksel251 = select i1 %tobool141.not, i16 0, i16 4096
  %storemerge = or i16 %16, %masksel251
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dleSeen.0.lcssa)
  %tobool152.not = icmp eq i32 %dleSeen.0.lcssa, 0
  %masksel = select i1 %tobool152.not, i16 0, i16 8192
  %storemerge220 = or i16 %storemerge, %masksel
  %17 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %storemerge220, ptr %flags6, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call135) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ack_or_nak_seen.0.lcssa)
  %tobool165.not = icmp eq i32 %ack_or_nak_seen.0.lcssa, 0
  br i1 %tobool165.not, label %do.body127.if.end174_crit_edge, label %if.then166

do.body127.if.end174_crit_edge:                   ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end174

if.then166:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #12
  %call167 = tail call fastcc i32 @gsp_next_packet(ptr noundef %garmin_data_p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168 = icmp sgt i32 %call167, 0
  %. = select i1 %cmp168, i8 5, i8 11
  %18 = ptrtoint ptr %garmin_data_p to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %., ptr %garmin_data_p, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then166, %do.body127.if.end174_crit_edge
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nat_receive(ptr noundef %garmin_data_p, ptr nocapture noundef readonly %buf, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp114 = icmp sgt i32 %count, 0
  br i1 %cmp114, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %insize = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 9
  %add.ptr.i = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 11, i32 8
  %inbuffer19 = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 11
  %port38 = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 7
  %lock = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 14
  %flags58 = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 1
  %pktlist.i = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %if.end64.while.body_crit_edge, %while.body.lr.ph
  %count.addr.0117 = phi i32 [ %count, %while.body.lr.ph ], [ %count.addr.1111, %if.end64.while.body_crit_edge ]
  %result.0116 = phi i32 [ %count, %while.body.lr.ph ], [ %result.1110, %if.end64.while.body_crit_edge ]
  %offs.0115 = phi i32 [ 0, %while.body.lr.ph ], [ %offs.1109, %if.end64.while.body_crit_edge ]
  %0 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %insize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp1 = icmp sgt i32 %1, 11
  br i1 %cmp1, label %if.end, label %while.body.if.else10_crit_edge

while.body.if.else10_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else10

if.end:                                           ; preds = %while.body
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  %add = add i32 %4, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %add)
  %cmp2 = icmp sgt i32 %add, 272
  br i1 %cmp2, label %do.body, label %if.end.if.else10_crit_edge

if.end.if.else10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else10

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nat_receive.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nat_receive, %if.then7)) #10
          to label %if.end27.thread [label %if.then7], !srcloc !206

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port38, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nat_receive.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %add) #10
  br label %if.end27.thread

if.end27.thread:                                  ; preds = %if.then7, %do.body
  %7 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %insize, align 4
  br label %if.end64

if.else10:                                        ; preds = %if.end.if.else10_crit_edge, %while.body.if.else10_crit_edge
  %len.0103 = phi i32 [ %add, %if.end.if.else10_crit_edge ], [ 12, %while.body.if.else10_crit_edge ]
  %sub = sub i32 %len.0103, %1
  %sub12 = sub i32 %count.addr.0117, %offs.0115
  %8 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %sub12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp17 = icmp sgt i32 %8, 0
  br i1 %cmp17, label %if.then18, label %if.end27thread-pre-split

if.then18:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %inbuffer19, i32 %1
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %offs.0115
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr22, i32 %8)
  %10 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %insize, align 4
  %add24 = add i32 %11, %8
  store i32 %add24, ptr %insize, align 4
  %add25 = add i32 %8, %offs.0115
  br label %if.end27

if.end27thread-pre-split:                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %insize, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27thread-pre-split, %if.then18
  %13 = phi i32 [ %.pr, %if.end27thread-pre-split ], [ %add24, %if.then18 ]
  %offs.1 = phi i32 [ %offs.0115, %if.end27thread-pre-split ], [ %add25, %if.then18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %13)
  %cmp29 = icmp sgt i32 %13, 11
  br i1 %cmp29, label %if.then30, label %if.end27.if.end64_crit_edge

if.end27.if.end64_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then30:                                        ; preds = %if.end27
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %add34 = add i32 %16, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add34)
  %cmp36.not = icmp slt i32 %13, %add34
  br i1 %cmp36.not, label %if.then30.if.end64_crit_edge, label %if.then37

if.then30.if.end64_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then37:                                        ; preds = %if.then30
  %17 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port38, align 4
  %19 = tail call fastcc i32 @garmin_write_bulk(ptr noundef %18, ptr noundef %inbuffer19, i32 noundef %add34)
  %20 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %insize, align 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(14) %inbuffer19, ptr noundef nonnull dereferenceable(14) @GARMIN_STOP_TRANSFER_REQ, i32 14) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.then37.do.body49_crit_edge, label %isAbortTrfCmnd.exit

if.then37.do.body49_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

isAbortTrfCmnd.exit:                              ; preds = %if.then37
  %bcmp4.i = tail call i32 @bcmp(ptr noundef dereferenceable(13) %inbuffer19, ptr noundef nonnull dereferenceable(13) @GARMIN_STOP_TRANSFER_REQ_V2, i32 13) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp4.i)
  %cmp2.i.not = icmp eq i32 %bcmp4.i, 0
  br i1 %cmp2.i.not, label %isAbortTrfCmnd.exit.do.body49_crit_edge, label %isAbortTrfCmnd.exit.if.end64_crit_edge

isAbortTrfCmnd.exit.if.end64_crit_edge:           ; preds = %isAbortTrfCmnd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

isAbortTrfCmnd.exit.do.body49_crit_edge:          ; preds = %isAbortTrfCmnd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.body49:                                        ; preds = %isAbortTrfCmnd.exit.do.body49_crit_edge, %if.then37.do.body49_crit_edge
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %21 = ptrtoint ptr %flags58 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags58, align 2
  %23 = or i16 %22, 2048
  store i16 %23, ptr %flags58, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call53) #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %24 = ptrtoint ptr %pktlist.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %pktlist.i, align 4
  %cmp.i.not12.i = icmp eq ptr %25, %pktlist.i
  br i1 %cmp.i.not12.i, label %do.body49.pkt_clear.exit_crit_edge, label %do.body49.while.body.i_crit_edge

do.body49.while.body.i_crit_edge:                 ; preds = %do.body49
  br label %while.body.i

do.body49.pkt_clear.exit_crit_edge:               ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_clear.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %do.body49.while.body.i_crit_edge
  %26 = phi ptr [ %36, %list_del.exit.i.while.body.i_crit_edge ], [ %25, %do.body49.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %26) #10
  %35 = ptrtoint ptr %pktlist.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %pktlist.i, align 4
  %cmp.i.not.i = icmp eq ptr %36, %pktlist.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.pkt_clear.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_del.exit.i.pkt_clear.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_clear.exit

pkt_clear.exit:                                   ; preds = %list_del.exit.i.pkt_clear.exit_crit_edge, %do.body49.pkt_clear.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #10
  br label %if.end64

if.end64:                                         ; preds = %pkt_clear.exit, %isAbortTrfCmnd.exit.if.end64_crit_edge, %if.then30.if.end64_crit_edge, %if.end27.if.end64_crit_edge, %if.end27.thread
  %count.addr.1111 = phi i32 [ 0, %if.end27.thread ], [ %count.addr.0117, %if.then30.if.end64_crit_edge ], [ %count.addr.0117, %pkt_clear.exit ], [ %count.addr.0117, %isAbortTrfCmnd.exit.if.end64_crit_edge ], [ %count.addr.0117, %if.end27.if.end64_crit_edge ]
  %result.1110 = phi i32 [ -1000, %if.end27.thread ], [ %result.0116, %if.then30.if.end64_crit_edge ], [ %result.0116, %pkt_clear.exit ], [ %result.0116, %isAbortTrfCmnd.exit.if.end64_crit_edge ], [ %result.0116, %if.end27.if.end64_crit_edge ]
  %offs.1109 = phi i32 [ %offs.0115, %if.end27.thread ], [ %offs.1, %if.then30.if.end64_crit_edge ], [ %offs.1, %pkt_clear.exit ], [ %offs.1, %isAbortTrfCmnd.exit.if.end64_crit_edge ], [ %offs.1, %if.end27.if.end64_crit_edge ]
  %cmp = icmp sgt i32 %count.addr.1111, %offs.1109
  br i1 %cmp, label %if.end64.while.body_crit_edge, label %if.end64.while.end_crit_edge

if.end64.while.end_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end64.while.body_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end64.while.end_crit_edge, %entry.while.end_crit_edge
  %result.0.lcssa = phi i32 [ %count, %entry.while.end_crit_edge ], [ %result.1110, %if.end64.while.end_crit_edge ]
  ret i32 %result.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsp_rec_packet(ptr noundef %garmin_data_p, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 7
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %inbuffer = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 11
  %add.ptr = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 11, i32 10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %3 to i32
  %arrayidx4 = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 11, i32 11
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_rec_packet, %if.then.i)) #10
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !206

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add i32 %count, -10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.gsp_rec_packet, i32 noundef %sub, i32 noundef %sub, ptr noundef %add.ptr) #10
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %entry
  %sub9 = add i32 %count, -13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9, i32 %conv5)
  %cmp.not = icmp eq i32 %sub9, %conv5
  br i1 %cmp.not, label %if.end16, label %do.body

do.body:                                          ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_rec_packet.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_rec_packet, %if.then13)) #10
          to label %cleanup [label %if.then13], !srcloc !206

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_rec_packet.__UNIQUE_ID_ddebug240, ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.gsp_rec_packet, i32 noundef %conv5, i32 noundef %sub9) #10
  br label %cleanup

if.end16:                                         ; preds = %usb_serial_debug_data.exit
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  %conv17 = zext i8 %7 to i32
  %incdec.ptr18 = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 11, i32 12
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %conv19 = zext i8 %9 to i32
  %add20 = add nuw nsw i32 %conv19, %conv17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp439.not = icmp eq i8 %5, 0
  br i1 %cmp439.not, label %if.end16.while.end_crit_edge, label %while.body.preheader

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %if.end16
  %10 = add nuw nsw i32 %conv5, 88
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %recpkt.012 = phi ptr [ %incdec.ptr45, %while.body.while.body_crit_edge ], [ %incdec.ptr18, %while.body.preheader ]
  %cksum.011 = phi i32 [ %add47, %while.body.while.body_crit_edge ], [ %add20, %while.body.preheader ]
  %n.010 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %incdec.ptr45 = getelementptr i8, ptr %recpkt.012, i32 1
  %11 = ptrtoint ptr %recpkt.012 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %recpkt.012, align 1
  %conv46 = zext i8 %12 to i32
  %add47 = add i32 %cksum.011, %conv46
  %inc = add nuw nsw i32 %n.010, 1
  %exitcond.not = icmp eq i32 %inc, %conv5
  br i1 %exitcond.not, label %while.end.loopexit, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %uglygep = getelementptr i8, ptr %garmin_data_p, i32 %10
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end16.while.end_crit_edge
  %cksum.0.lcssa = phi i32 [ %add20, %if.end16.while.end_crit_edge ], [ %add47, %while.end.loopexit ]
  %recpkt.0.lcssa = phi ptr [ %incdec.ptr18, %if.end16.while.end_crit_edge ], [ %uglygep, %while.end.loopexit ]
  %13 = ptrtoint ptr %recpkt.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %recpkt.0.lcssa, align 1
  %conv48 = zext i8 %14 to i32
  %add49 = add i32 %cksum.0.lcssa, %conv48
  %and = and i32 %add49, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp50.not = icmp eq i32 %and, 0
  br i1 %cmp50.not, label %if.end72, label %do.body53

do.body53:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_rec_packet.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_rec_packet, %if.then65)) #10
          to label %cleanup [label %if.then65], !srcloc !206

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %sub66 = sub i32 0, %cksum.0.lcssa
  %and67 = and i32 %sub66, 255
  %15 = ptrtoint ptr %recpkt.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %recpkt.0.lcssa, align 1
  %conv68 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_rec_packet.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.gsp_rec_packet, i32 noundef %and67, i32 noundef %conv68) #10
  br label %cleanup

if.end72:                                         ; preds = %while.end
  %17 = ptrtoint ptr %inbuffer to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 335544320, ptr %inbuffer, align 4
  %18 = shl nuw i32 %conv, 24
  %arrayidx74 = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 11, i32 4
  %19 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx74, align 4
  %20 = shl nuw i32 %conv5, 24
  %arrayidx75 = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 11, i32 8
  %21 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx75, align 4
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 4
  %add79 = add nuw nsw i32 %conv5, 12
  %24 = tail call fastcc i32 @garmin_write_bulk(ptr noundef %23, ptr noundef %inbuffer, i32 noundef %add79)
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(14) %inbuffer, ptr noundef nonnull dereferenceable(14) @GARMIN_STOP_TRANSFER_REQ, i32 14) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end72.do.body87_crit_edge, label %isAbortTrfCmnd.exit

if.end72.do.body87_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body87

isAbortTrfCmnd.exit:                              ; preds = %if.end72
  %bcmp4.i = tail call i32 @bcmp(ptr noundef dereferenceable(13) %inbuffer, ptr noundef nonnull dereferenceable(13) @GARMIN_STOP_TRANSFER_REQ_V2, i32 13) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp4.i)
  %cmp2.i.not = icmp eq i32 %bcmp4.i, 0
  br i1 %cmp2.i.not, label %isAbortTrfCmnd.exit.do.body87_crit_edge, label %isAbortTrfCmnd.exit.cleanup_crit_edge

isAbortTrfCmnd.exit.cleanup_crit_edge:            ; preds = %isAbortTrfCmnd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

isAbortTrfCmnd.exit.do.body87_crit_edge:          ; preds = %isAbortTrfCmnd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body87

do.body87:                                        ; preds = %isAbortTrfCmnd.exit.do.body87_crit_edge, %if.end72.do.body87_crit_edge
  %lock = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 14
  %call92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %flags97 = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 1
  %25 = ptrtoint ptr %flags97 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags97, align 2
  %27 = or i16 %26, 2048
  store i16 %27, ptr %flags97, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call92) #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %pktlist.i = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 15
  %28 = ptrtoint ptr %pktlist.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %pktlist.i, align 4
  %cmp.i.not12.i = icmp eq ptr %29, %pktlist.i
  br i1 %cmp.i.not12.i, label %do.body87.pkt_clear.exit_crit_edge, label %do.body87.while.body.i_crit_edge

do.body87.while.body.i_crit_edge:                 ; preds = %do.body87
  br label %while.body.i

do.body87.pkt_clear.exit_crit_edge:               ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_clear.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %do.body87.while.body.i_crit_edge
  %30 = phi ptr [ %40, %list_del.exit.i.while.body.i_crit_edge ], [ %29, %do.body87.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %30) #10
  %39 = ptrtoint ptr %pktlist.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %pktlist.i, align 4
  %cmp.i.not.i = icmp eq ptr %40, %pktlist.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.pkt_clear.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_del.exit.i.pkt_clear.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_clear.exit

pkt_clear.exit:                                   ; preds = %list_del.exit.i.pkt_clear.exit_crit_edge, %do.body87.pkt_clear.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %pkt_clear.exit, %isAbortTrfCmnd.exit.cleanup_crit_edge, %if.then65, %do.body53, %if.then13, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsp_next_packet(ptr noundef %garmin_data_p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 14
  %call2.i29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %pktlist.i = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 15
  %0 = ptrtoint ptr %pktlist.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pktlist.i, align 4
  %cmp.i.not.i30 = icmp eq ptr %1, %pktlist.i
  br i1 %cmp.i.not.i30, label %entry.pkt_pop.exit.thread_crit_edge, label %if.then.i.lr.ph

entry.pkt_pop.exit.thread_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_pop.exit.thread

if.then.i.lr.ph:                                  ; preds = %entry
  %port = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 7
  br label %if.then.i

pkt_pop.exit.thread:                              ; preds = %if.end7.pkt_pop.exit.thread_crit_edge, %entry.pkt_pop.exit.thread_crit_edge
  %result.0.lcssa = phi i32 [ 0, %entry.pkt_pop.exit.thread_crit_edge ], [ %call4, %if.end7.pkt_pop.exit.thread_crit_edge ]
  %call2.i.lcssa = phi i32 [ %call2.i29, %entry.pkt_pop.exit.thread_crit_edge ], [ %call2.i, %if.end7.pkt_pop.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.lcssa) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end7.if.then.i_crit_edge, %if.then.i.lr.ph
  %2 = phi ptr [ %1, %if.then.i.lr.ph ], [ %18, %if.end7.if.then.i_crit_edge ]
  %call2.i32 = phi i32 [ %call2.i29, %if.then.i.lr.ph ], [ %call2.i, %if.end7.if.then.i_crit_edge ]
  %result.031 = phi i32 [ 0, %if.then.i.lr.ph ], [ %call4, %if.end7.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.pkt_pop.exit_crit_edge

if.then.i.pkt_pop.exit_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_pop.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %pkt_pop.exit

pkt_pop.exit:                                     ; preds = %if.end.i.i.i, %if.then.i.pkt_pop.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i32) #10
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %pkt_pop.exit.cleanup_crit_edge, label %do.body

pkt_pop.exit.cleanup_crit_edge:                   ; preds = %pkt_pop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %pkt_pop.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_next_packet.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_next_packet, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !206

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %12, i32 0, i32 32
  %seq = getelementptr inbounds %struct.garmin_packet, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_next_packet.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %14) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %data = getelementptr inbounds %struct.garmin_packet, ptr %2, i32 0, i32 3
  %size = getelementptr inbounds %struct.garmin_packet, ptr %2, i32 0, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %call4 = tail call fastcc i32 @gsp_send(ptr noundef %garmin_data_p, ptr noundef %data, i32 noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, 0
  tail call void @kfree(ptr noundef nonnull %2) #10
  br i1 %cmp5, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %17 = ptrtoint ptr %pktlist.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %pktlist.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %pktlist.i
  br i1 %cmp.i.not.i, label %if.end7.pkt_pop.exit.thread_crit_edge, label %if.end7.if.then.i_crit_edge

if.end7.if.then.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end7.pkt_pop.exit.thread_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %pkt_pop.exit.thread

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %pkt_pop.exit.cleanup_crit_edge, %pkt_pop.exit.thread
  %retval.0 = phi i32 [ %result.0.lcssa, %pkt_pop.exit.thread ], [ %result.031, %pkt_pop.exit.cleanup_crit_edge ], [ %call4, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsp_send(ptr noundef %garmin_data_p, ptr nocapture noundef readonly %buf, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 7
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_send.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_send, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !206

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %garmin_data_p to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %garmin_data_p, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_send.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %count) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %outsize = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 10
  %4 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outsize, align 4
  %add = add i32 %5, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 529, i32 %add)
  %cmp = icmp sgt i32 %add, 529
  br i1 %cmp, label %do.body6, label %if.end23

do.body6:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_send.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_send, %if.then18)) #10
          to label %do.end21 [label %if.then18], !srcloc !206

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_send.__UNIQUE_ID_ddebug248, ptr noundef %dev1, ptr noundef nonnull @.str.38) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body6
  %6 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %outsize, align 4
  br label %cleanup

if.end23:                                         ; preds = %do.end
  %outbuffer = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 12
  %add.ptr = getelementptr i8, ptr %outbuffer, i32 %5
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %count)
  %8 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %outsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add)
  %cmp26 = icmp sgt i32 %add, 11
  br i1 %cmp26, label %if.then28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %if.end23
  %add.ptr.i = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 12, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %add.ptr.i298 = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 12, i32 8
  %12 = ptrtoint ptr %add.ptr.i298 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i298, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %add35 = add i32 %14, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add35)
  %cmp36 = icmp slt i32 %add, %add35
  br i1 %cmp36, label %if.then28.cleanup_crit_edge, label %do.body41

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body41:                                        ; preds = %if.then28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_send.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_send, %if.then53)) #10
          to label %do.end56 [label %if.then53], !srcloc !206

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_send.__UNIQUE_ID_ddebug249, ptr noundef %dev1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36, i32 noundef %add, i32 noundef %add35) #10
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body41
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_send, %if.then.i)) #10
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !206

if.then.i:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  %dev58 = getelementptr inbounds %struct.usb_serial_port, ptr %16, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev58, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.36, i32 noundef %add, i32 noundef %add, ptr noundef %outbuffer) #10
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %do.end56
  %17 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %outsize, align 4
  %18 = ptrtoint ptr %outbuffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %outbuffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %19)
  %cmp65.not = icmp eq i32 %19, 335544320
  br i1 %cmp65.not, label %if.end87, label %do.body68

do.body68:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_send.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_send, %if.then80)) #10
          to label %cleanup [label %if.then80], !srcloc !206

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %outbuffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %outbuffer, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_send.__UNIQUE_ID_ddebug250, ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %22) #10
  br label %cleanup

if.end87:                                         ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %cmp88 = icmp sgt i32 %11, 255
  br i1 %cmp88, label %do.body91, label %if.end107

do.body91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_send.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_send, %if.then103)) #10
          to label %cleanup [label %if.then103], !srcloc !206

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_send.__UNIQUE_ID_ddebug251, ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %11) #10
  br label %cleanup

if.end107:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %14)
  %cmp108 = icmp sgt i32 %14, 255
  br i1 %cmp108, label %do.body111, label %if.end127

do.body111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_send.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_send, %if.then123)) #10
          to label %cleanup [label %if.then123], !srcloc !206

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_send.__UNIQUE_ID_ddebug252, ptr noundef %dev1, ptr noundef nonnull @.str.42, i32 noundef %14) #10
  br label %cleanup

if.end127:                                        ; preds = %if.end107
  %add.ptr130 = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 12, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp131305 = icmp sgt i32 %14, 0
  br i1 %cmp131305, label %if.end127.for.body_crit_edge, label %if.end127.if.end149_crit_edge

if.end127.if.end149_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.end127.for.body_crit_edge:                     ; preds = %if.end127
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end127.for.body_crit_edge
  %src.0308 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr130, %if.end127.for.body_crit_edge ]
  %i.0307 = phi i32 [ %inc138, %for.body.for.body_crit_edge ], [ 0, %if.end127.for.body_crit_edge ]
  %k.0306 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end127.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %src.0308, i32 1
  %23 = ptrtoint ptr %src.0308 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %src.0308, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %24)
  %cmp134 = icmp eq i8 %24, 16
  %inc = zext i1 %cmp134 to i32
  %spec.select = add i32 %k.0306, %inc
  %inc138 = add nuw nsw i32 %i.0307, 1
  %exitcond.not = icmp eq i32 %inc138, %14
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %spec.select)
  %phi.cmp = icmp sgt i32 %spec.select, 10
  br i1 %phi.cmp, label %if.then144, label %for.end.if.end149_crit_edge

for.end.if.end149_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then144:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr147 = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 13
  %idx.neg = sub i32 0, %14
  %add.ptr148 = getelementptr i8, ptr %add.ptr147, i32 %idx.neg
  %25 = call ptr @memcpy(ptr %add.ptr148, ptr %add.ptr130, i32 %14)
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %for.end.if.end149_crit_edge, %if.end127.if.end149_crit_edge
  %src.1 = phi ptr [ %add.ptr148, %if.then144 ], [ %add.ptr130, %for.end.if.end149_crit_edge ], [ %add.ptr130, %if.end127.if.end149_crit_edge ]
  %incdec.ptr152 = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 12, i32 1
  %26 = ptrtoint ptr %outbuffer to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %outbuffer, align 1
  %conv153 = trunc i32 %11 to i8
  %incdec.ptr154 = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 12, i32 2
  %27 = ptrtoint ptr %incdec.ptr152 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv153, ptr %incdec.ptr152, align 1
  %conv156 = trunc i32 %14 to i8
  %incdec.ptr157 = getelementptr %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 12, i32 3
  %28 = ptrtoint ptr %incdec.ptr154 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv156, ptr %incdec.ptr154, align 1
  %add158 = add i32 %14, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %13)
  %cmp159 = icmp eq i32 %13, 268435456
  br i1 %cmp159, label %if.then161, label %if.end149.if.end163_crit_edge

if.end149.if.end163_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then161:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %incdec.ptr157 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 16, ptr %incdec.ptr157, align 1
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.end149.if.end163_crit_edge
  %dst.0 = phi ptr [ %add.ptr.i, %if.then161 ], [ %incdec.ptr157, %if.end149.if.end163_crit_edge ]
  br i1 %cmp131305, label %if.end163.for.body167_crit_edge, label %if.end163.for.end180_crit_edge

if.end163.for.end180_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end180

if.end163.for.body167_crit_edge:                  ; preds = %if.end163
  br label %for.body167

for.body167:                                      ; preds = %if.end177.for.body167_crit_edge, %if.end163.for.body167_crit_edge
  %src.2313 = phi ptr [ %incdec.ptr168, %if.end177.for.body167_crit_edge ], [ %src.1, %if.end163.for.body167_crit_edge ]
  %dst.1312 = phi ptr [ %dst.2, %if.end177.for.body167_crit_edge ], [ %dst.0, %if.end163.for.body167_crit_edge ]
  %cksum.0311 = phi i32 [ %add171, %if.end177.for.body167_crit_edge ], [ %add158, %if.end163.for.body167_crit_edge ]
  %i.1310 = phi i32 [ %inc179, %if.end177.for.body167_crit_edge ], [ 0, %if.end163.for.body167_crit_edge ]
  %incdec.ptr168 = getelementptr i8, ptr %src.2313, i32 1
  %30 = ptrtoint ptr %src.2313 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %src.2313, align 1
  %incdec.ptr169 = getelementptr i8, ptr %dst.1312, i32 1
  %32 = ptrtoint ptr %dst.1312 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %dst.1312, align 1
  %conv170 = zext i8 %31 to i32
  %add171 = add i32 %cksum.0311, %conv170
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %31)
  %cmp173 = icmp eq i8 %31, 16
  br i1 %cmp173, label %if.then175, label %for.body167.if.end177_crit_edge

for.body167.if.end177_crit_edge:                  ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.then175:                                       ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr176 = getelementptr i8, ptr %dst.1312, i32 2
  %33 = ptrtoint ptr %incdec.ptr169 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 16, ptr %incdec.ptr169, align 1
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %for.body167.if.end177_crit_edge
  %dst.2 = phi ptr [ %incdec.ptr176, %if.then175 ], [ %incdec.ptr169, %for.body167.if.end177_crit_edge ]
  %inc179 = add nuw nsw i32 %i.1310, 1
  %exitcond316.not = icmp eq i32 %inc179, %14
  br i1 %exitcond316.not, label %if.end177.for.end180_crit_edge, label %if.end177.for.body167_crit_edge

if.end177.for.body167_crit_edge:                  ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body167

if.end177.for.end180_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end180

for.end180:                                       ; preds = %if.end177.for.end180_crit_edge, %if.end163.for.end180_crit_edge
  %cksum.0.lcssa = phi i32 [ %add158, %if.end163.for.end180_crit_edge ], [ %add171, %if.end177.for.end180_crit_edge ]
  %dst.1.lcssa = phi ptr [ %dst.0, %if.end163.for.end180_crit_edge ], [ %dst.2, %if.end177.for.end180_crit_edge ]
  %sub = sub i32 0, %cksum.0.lcssa
  %and = and i32 %sub, 255
  %conv181 = trunc i32 %sub to i8
  %incdec.ptr182 = getelementptr i8, ptr %dst.1.lcssa, i32 1
  %34 = ptrtoint ptr %dst.1.lcssa to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv181, ptr %dst.1.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp183 = icmp eq i32 %and, 16
  br i1 %cmp183, label %if.then185, label %for.end180.if.end187_crit_edge

for.end180.if.end187_crit_edge:                   ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187

if.then185:                                       ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr186 = getelementptr i8, ptr %dst.1.lcssa, i32 2
  %35 = ptrtoint ptr %incdec.ptr182 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 16, ptr %incdec.ptr182, align 1
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %for.end180.if.end187_crit_edge
  %dst.3 = phi ptr [ %incdec.ptr186, %if.then185 ], [ %incdec.ptr182, %for.end180.if.end187_crit_edge ]
  %incdec.ptr188 = getelementptr i8, ptr %dst.3, i32 1
  %36 = ptrtoint ptr %dst.3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 16, ptr %dst.3, align 1
  %incdec.ptr189 = getelementptr i8, ptr %dst.3, i32 2
  %37 = ptrtoint ptr %incdec.ptr188 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %incdec.ptr188, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr189 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %outbuffer to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port, align 4
  tail call fastcc void @send_to_tty(ptr noundef %39, ptr noundef %outbuffer, i32 noundef %sub.ptr.sub)
  %pkt_id = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 4
  %40 = ptrtoint ptr %pkt_id to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv153, ptr %pkt_id, align 2
  %41 = ptrtoint ptr %garmin_data_p to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %garmin_data_p, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end187, %if.then123, %do.body111, %if.then103, %do.body91, %if.then80, %do.body68, %if.then28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end21
  %retval.0 = phi i32 [ -4, %do.end21 ], [ %sub.ptr.sub, %if.end187 ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ -1, %if.then80 ], [ -2, %if.then103 ], [ -3, %if.then123 ], [ -1, %do.body68 ], [ -2, %do.body91 ], [ -3, %do.body111 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @garmin_read_process(ptr noundef %garmin_data_p, ptr noundef %data, i32 noundef %data_length, i32 noundef %bulk_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags1, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @garmin_read_process.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_read_process, %if.then5)) #10
          to label %if.end54 [label %if.then5], !srcloc !206

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %port = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 7
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @garmin_read_process.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56) #10
  br label %if.end54

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %garmin_data_p to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %garmin_data_p, align 4
  %6 = and i8 %5, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %switch = icmp eq i8 %6, 8
  br i1 %switch, label %if.else.if.end54_crit_edge, label %if.then12

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then12:                                        ; preds = %if.else
  %and15 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pkt_add(ptr noundef %garmin_data_p, ptr noundef %data, i32 noundef %data_length)
  br label %if.end54

if.else19:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bulk_data)
  %tobool20.not = icmp eq i32 %bulk_data, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.else19.do.body29_crit_edge

if.else19.do.body29_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

lor.lhs.false:                                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %data_length)
  %cmp21 = icmp ugt i32 %data_length, 3
  br i1 %cmp21, label %land.lhs.true23, label %lor.lhs.false.if.end54_crit_edge

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true23:                                  ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %8)
  %cmp25 = icmp eq i32 %8, 335544320
  br i1 %cmp25, label %land.lhs.true23.do.body29_crit_edge, label %land.lhs.true23.if.end54_crit_edge

land.lhs.true23.if.end54_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true23.do.body29_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

do.body29:                                        ; preds = %land.lhs.true23.do.body29_crit_edge, %if.else19.do.body29_crit_edge
  %lock = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 14
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %9 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags1, align 2
  %11 = or i16 %10, 2
  store i16 %11, ptr %flags1, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call34) #10
  %mode = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 2
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp44 = icmp eq i8 %13, 1
  br i1 %cmp44, label %if.then46, label %if.else48

if.then46:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pkt_add(ptr noundef %garmin_data_p, ptr noundef %data, i32 noundef %data_length)
  br label %if.end54

if.else48:                                        ; preds = %do.body29
  %port49 = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 7
  %14 = ptrtoint ptr %port49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_length)
  %tobool.not.i = icmp eq i32 %data_length, 0
  br i1 %tobool.not.i, label %if.else48.if.end54_crit_edge, label %if.then.i

if.else48.if.end54_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then.i:                                        ; preds = %if.else48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@garmin_read_process, %if.then.i.i)) #10
          to label %usb_serial_debug_data.exit.i [label %if.then.i.i], !srcloc !206

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.send_to_tty, i32 noundef %data_length, i32 noundef %data_length, ptr noundef %data) #10
  br label %usb_serial_debug_data.exit.i

usb_serial_debug_data.exit.i:                     ; preds = %if.then.i.i, %if.then.i
  %port1.i = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 1
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port1.i, ptr noundef %data, i8 noundef zeroext 0, i32 noundef %data_length) #10
  tail call void @tty_flip_buffer_push(ptr noundef %port1.i) #10
  br label %if.end54

if.end54:                                         ; preds = %usb_serial_debug_data.exit.i, %if.else48.if.end54_crit_edge, %if.then46, %land.lhs.true23.if.end54_crit_edge, %lor.lhs.false.if.end54_crit_edge, %if.then17, %if.else.if.end54_crit_edge, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pkt_add(ptr noundef %garmin_data_p, ptr nocapture noundef readonly %data, i32 noundef %data_length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_length)
  %tobool.not = icmp eq i32 %data_length, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %add = add i32 %data_length, 16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #16
  %tobool1.not = icmp eq ptr %call9.i, null
  br i1 %tobool1.not, label %if.end8.i.cleanup_crit_edge, label %if.end

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end8.i
  %size = getelementptr inbounds %struct.garmin_packet, ptr %call9.i, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data_length, ptr %size, align 4
  %data3 = getelementptr inbounds %struct.garmin_packet, ptr %call9.i, i32 0, i32 3
  %1 = call ptr @memcpy(ptr %data3, ptr %data, i32 %data_length)
  %lock = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 14
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %flags9 = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 1
  %2 = ptrtoint ptr %flags9 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags9, align 2
  %4 = or i16 %3, 256
  store i16 %4, ptr %flags9, align 2
  %pktlist = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 15
  %5 = ptrtoint ptr %pktlist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pktlist, align 4
  %cmp.i1 = icmp eq ptr %6, %pktlist
  %seq_counter = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 8
  %7 = ptrtoint ptr %seq_counter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seq_counter, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %seq_counter, align 4
  %seq = getelementptr inbounds %struct.garmin_packet, ptr %call9.i, i32 0, i32 1
  %9 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %seq, align 8
  %prev.i = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %11, ptr noundef %pktlist) #10
  br i1 %call.i.i, label %if.end.i.i2, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i2:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i, ptr %prev.i, align 4
  %13 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pktlist, ptr %call9.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call9.i, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i2, %if.end.list_add_tail.exit_crit_edge
  %16 = ptrtoint ptr %garmin_data_p to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %garmin_data_p, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkt_add.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkt_add, %if.then23)) #10
          to label %do.end27 [label %if.then23], !srcloc !206

if.then23:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %port = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 7
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %19, i32 0, i32 32
  %20 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seq, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pkt_add.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %21, i32 noundef %data_length) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %list_add_tail.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %17)
  %cmp29 = icmp eq i8 %17, 11
  %or.cond = select i1 %cmp.i1, i1 %cmp29, i1 false
  br i1 %or.cond, label %if.then31, label %do.end27.cleanup_crit_edge

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call fastcc i32 @gsp_next_packet(ptr noundef %garmin_data_p)
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.end27.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsp_send_ack(ptr nocapture noundef readonly %garmin_data_p, i8 noundef zeroext %pkt_id) unnamed_addr #2 align 64 {
entry:
  %pkt = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %pkt) #10
  %0 = getelementptr inbounds [10 x i8], ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds [10 x i8], ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds [10 x i8], ptr %pkt, i32 0, i32 3
  %3 = getelementptr inbounds [10 x i8], ptr %pkt, i32 0, i32 4
  %4 = getelementptr inbounds [10 x i8], ptr %pkt, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %pkt, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsp_send_ack.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_send_ack, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !206

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 7
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %8, i32 0, i32 32
  %conv = zext i8 %pkt_id to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsp_send_ack.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %pkt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %pkt, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %1, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %pkt_id, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %pkt_id)
  %cmp = icmp eq i8 %pkt_id, 16
  br i1 %cmp, label %if.then17, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %3, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %do.end.if.end19_crit_edge
  %ptr.0 = phi ptr [ %4, %if.then17 ], [ %3, %do.end.if.end19_crit_edge ]
  %incdec.ptr20 = getelementptr i8, ptr %ptr.0, i32 1
  %14 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ptr.0, align 1
  %15 = sub i8 -8, %pkt_id
  %incdec.ptr23 = getelementptr i8, ptr %ptr.0, i32 2
  %16 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %incdec.ptr20, align 1
  %incdec.ptr24 = getelementptr i8, ptr %ptr.0, i32 3
  %17 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 16, ptr %incdec.ptr23, align 1
  %incdec.ptr25 = getelementptr i8, ptr %ptr.0, i32 4
  %18 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %incdec.ptr24, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr25 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %pkt to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %port27 = getelementptr inbounds %struct.garmin_data, ptr %garmin_data_p, i32 0, i32 7
  %19 = ptrtoint ptr %port27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port27, align 4
  %tobool.not.i = icmp eq ptr %incdec.ptr25, %pkt
  br i1 %tobool.not.i, label %if.end19.send_to_tty.exit_crit_edge, label %if.then.i

if.end19.send_to_tty.exit_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_to_tty.exit

if.then.i:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsp_send_ack, %if.then.i.i)) #10
          to label %usb_serial_debug_data.exit.i [label %if.then.i.i], !srcloc !206

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %20, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.send_to_tty, i32 noundef %sub.ptr.sub, i32 noundef %sub.ptr.sub, ptr noundef nonnull %pkt) #10
  br label %usb_serial_debug_data.exit.i

usb_serial_debug_data.exit.i:                     ; preds = %if.then.i.i, %if.then.i
  %port1.i = getelementptr inbounds %struct.usb_serial_port, ptr %20, i32 0, i32 1
  %call.i.i = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port1.i, ptr noundef nonnull %pkt, i8 noundef zeroext 0, i32 noundef %sub.ptr.sub) #10
  call void @tty_flip_buffer_push(ptr noundef %port1.i) #10
  br label %send_to_tty.exit

send_to_tty.exit:                                 ; preds = %usb_serial_debug_data.exit.i, %if.end19.send_to_tty.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %pkt) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_port_softint(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !27, !29, !30, !32, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !49, !50, !51, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !73, !74, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !101, !102, !104, !105, !107, !108, !110, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !156, !157, !158, !160, !161, !163, !164, !165, !167, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !194, !195}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !{ptr @__initcall__kmod_garmin_gps__269_1441_usb_serial_module_init6, !1, !"__initcall__kmod_garmin_gps__269_1441_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1441, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author270, !4, !"__UNIQUE_ID_author270", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1443, i32 1}
!5 = !{ptr @__UNIQUE_ID_description271, !6, !"__UNIQUE_ID_description271", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1444, i32 1}
!7 = !{ptr @__UNIQUE_ID_file272, !8, !"__UNIQUE_ID_file272", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1445, i32 1}
!9 = !{ptr @__UNIQUE_ID_license273, !8, !"__UNIQUE_ID_license273", i1 false, i1 false}
!10 = !{ptr @__param_initial_mode, !11, !"__param_initial_mode", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1447, i32 1}
!12 = !{ptr @__UNIQUE_ID_initial_modetype274, !11, !"__UNIQUE_ID_initial_modetype274", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_initial_mode275, !14, !"__UNIQUE_ID_initial_mode275", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1448, i32 1}
!15 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @id_table, !17, !"id_table", i1 false, i1 false}
!17 = !{!"../drivers/usb/serial/garmin_gps.c", i32 200, i32 35}
!18 = !{ptr @serial_drivers, !19, !"serial_drivers", i1 false, i1 false}
!19 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1437, i32 41}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1421, i32 25}
!22 = !{ptr @garmin_device, !23, !"garmin_device", i1 false, i1 false}
!23 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1416, i32 33}
!24 = !{ptr @garmin_port_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1382, i32 2}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @garmin_port_probe.__key.3, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1383, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__func__.send_to_tty, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/serial/garmin_gps.c", i32 246, i32 37}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !33, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!37 = !{ptr @init_usb_anchor.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @init_usb_anchor.__key.9, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/garmin_gps.c", i32 877, i32 3}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @garmin_init_session._entry, !44, !"_entry", i1 false, i1 false}
!50 = !{ptr @garmin_init_session._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/serial/garmin_gps.c", i32 886, i32 2}
!53 = !{ptr @garmin_init_session.__UNIQUE_ID_ddebug257, !52, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!54 = !{ptr @__func__.garmin_write_bulk, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1003, i32 36}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1029, i32 3}
!58 = !{ptr @garmin_write_bulk._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @garmin_write_bulk._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @GARMIN_START_SESSION_REQ, !61, !"GARMIN_START_SESSION_REQ", i1 false, i1 false}
!61 = !{!"../drivers/usb/serial/garmin_gps.c", i32 176, i32 28}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/serial/garmin_gps.c", i32 934, i32 2}
!64 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @garmin_close.__UNIQUE_ID_ddebug258, !63, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!66 = !{ptr @__func__.garmin_write, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1052, i32 29}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1072, i32 4}
!70 = !{ptr @garmin_write.__UNIQUE_ID_ddebug259, !69, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1083, i32 5}
!73 = !{ptr @garmin_write.__UNIQUE_ID_ddebug260, !72, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1099, i32 5}
!76 = !{ptr @garmin_write.__UNIQUE_ID_ddebug261, !75, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/serial/garmin_gps.c", i32 838, i32 2}
!79 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @process_resetdev_request.__UNIQUE_ID_ddebug255, !78, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/serial/garmin_gps.c", i32 841, i32 3}
!83 = !{ptr @process_resetdev_request.__UNIQUE_ID_ddebug256, !82, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/serial/garmin_gps.c", i32 516, i32 6}
!86 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @gsp_receive.__UNIQUE_ID_ddebug243, !85, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/serial/garmin_gps.c", i32 519, i32 6}
!90 = !{ptr @gsp_receive.__UNIQUE_ID_ddebug244, !89, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/serial/garmin_gps.c", i32 521, i32 6}
!93 = !{ptr @gsp_receive.__UNIQUE_ID_ddebug245, !92, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/serial/garmin_gps.c", i32 543, i32 4}
!96 = !{ptr @gsp_receive.__UNIQUE_ID_ddebug246, !95, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!97 = !{ptr @__func__.gsp_rec_packet, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/serial/garmin_gps.c", i32 393, i32 51}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/serial/garmin_gps.c", i32 397, i32 3}
!101 = !{ptr @gsp_rec_packet.__UNIQUE_ID_ddebug240, !100, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/garmin_gps.c", i32 407, i32 3}
!104 = distinct !{null, !103, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!105 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/garmin_gps.c", i32 418, i32 3}
!107 = !{ptr @gsp_rec_packet.__UNIQUE_ID_ddebug242, !106, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!108 = !{ptr @GARMIN_STOP_TRANSFER_REQ, !109, !"GARMIN_STOP_TRANSFER_REQ", i1 false, i1 false}
!109 = !{!"../drivers/usb/serial/garmin_gps.c", i32 182, i32 28}
!110 = !{ptr @GARMIN_STOP_TRANSFER_REQ_V2, !111, !"GARMIN_STOP_TRANSFER_REQ_V2", i1 false, i1 false}
!111 = !{!"../drivers/usb/serial/garmin_gps.c", i32 184, i32 28}
!112 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/serial/garmin_gps.c", i32 709, i32 3}
!114 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @gsp_next_packet.__UNIQUE_ID_ddebug253, !113, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/serial/garmin_gps.c", i32 597, i32 2}
!118 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @gsp_send.__UNIQUE_ID_ddebug247, !117, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!120 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/serial/garmin_gps.c", i32 602, i32 3}
!122 = !{ptr @gsp_send.__UNIQUE_ID_ddebug248, !121, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!123 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/serial/garmin_gps.c", i32 621, i32 2}
!125 = !{ptr @gsp_send.__UNIQUE_ID_ddebug249, !124, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!126 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/serial/garmin_gps.c", i32 631, i32 3}
!128 = !{ptr @gsp_send.__UNIQUE_ID_ddebug250, !127, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/serial/garmin_gps.c", i32 637, i32 3}
!131 = !{ptr @gsp_send.__UNIQUE_ID_ddebug251, !130, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!132 = !{ptr @.str.42, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/serial/garmin_gps.c", i32 642, i32 3}
!134 = !{ptr @gsp_send.__UNIQUE_ID_ddebug252, !133, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!135 = !{ptr @.str.43, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/serial/garmin_gps.c", i32 755, i32 4}
!137 = !{ptr @.str.44, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @nat_receive.__UNIQUE_ID_ddebug254, !136, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!139 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1350, i32 4}
!141 = !{ptr @.str.46, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @garmin_unthrottle._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @garmin_unthrottle._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.47, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1227, i32 3}
!146 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @garmin_read_int_callback.__UNIQUE_ID_ddebug265, !145, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!148 = !{ptr @.str.49, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1231, i32 3}
!150 = !{ptr @garmin_read_int_callback.__UNIQUE_ID_ddebug266, !149, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!151 = !{ptr @.str.50, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1243, i32 3}
!153 = !{ptr @garmin_read_int_callback.__UNIQUE_ID_ddebug267, !152, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!154 = !{ptr @.str.51, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1250, i32 5}
!156 = !{ptr @garmin_read_int_callback._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @garmin_read_int_callback._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1278, i32 3}
!160 = !{ptr @garmin_read_int_callback.__UNIQUE_ID_ddebug268, !159, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!161 = !{ptr @.str.54, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1286, i32 3}
!163 = !{ptr @garmin_read_int_callback._entry.53, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @garmin_read_int_callback._entry_ptr.55, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @GARMIN_BULK_IN_AVAIL_REPLY, !166, !"GARMIN_BULK_IN_AVAIL_REPLY", i1 false, i1 false}
!166 = !{!"../drivers/usb/serial/garmin_gps.c", i32 180, i32 28}
!167 = !{ptr @GARMIN_START_SESSION_REPLY, !168, !"GARMIN_START_SESSION_REPLY", i1 false, i1 false}
!168 = !{!"../drivers/usb/serial/garmin_gps.c", i32 178, i32 28}
!169 = !{ptr @.str.56, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1135, i32 3}
!171 = !{ptr @.str.57, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @garmin_read_process.__UNIQUE_ID_ddebug262, !170, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!173 = !{ptr @.str.58, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/serial/garmin_gps.c", i32 286, i32 3}
!175 = !{ptr @.str.59, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @pkt_add.__UNIQUE_ID_ddebug238, !174, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!177 = !{ptr @.str.60, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1173, i32 3}
!179 = !{ptr @.str.61, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @garmin_read_bulk_callback.__UNIQUE_ID_ddebug263, !178, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!181 = !{ptr @garmin_read_bulk_callback._entry, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1189, i32 4}
!183 = !{ptr @garmin_read_bulk_callback._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @garmin_read_bulk_callback._entry.62, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1197, i32 5}
!186 = !{ptr @garmin_read_bulk_callback._entry_ptr.63, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.64, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/serial/garmin_gps.c", i32 1202, i32 3}
!189 = !{ptr @garmin_read_bulk_callback.__UNIQUE_ID_ddebug264, !188, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!190 = !{ptr @.str.65, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/serial/garmin_gps.c", i32 343, i32 2}
!192 = !{ptr @.str.66, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @gsp_send_ack.__UNIQUE_ID_ddebug239, !191, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!194 = !{ptr @__param_str_initial_mode, !11, !"__param_str_initial_mode", i1 false, i1 false}
!195 = !{ptr @initial_mode, !196, !"initial_mode", i1 false, i1 false}
!196 = !{!"../drivers/usb/serial/garmin_gps.c", i32 28, i32 12}
!197 = !{i32 1, !"wchar_size", i32 2}
!198 = !{i32 1, !"min_enum_size", i32 4}
!199 = !{i32 8, !"branch-target-enforcement", i32 0}
!200 = !{i32 8, !"sign-return-address", i32 0}
!201 = !{i32 8, !"sign-return-address-all", i32 0}
!202 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!203 = !{i32 7, !"uwtable", i32 1}
!204 = !{i32 7, !"frame-pointer", i32 2}
!205 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!206 = !{i64 2148727844, i64 2148727849, i64 2148727862, i64 2148727906, i64 2148727940, i64 2148727961}
