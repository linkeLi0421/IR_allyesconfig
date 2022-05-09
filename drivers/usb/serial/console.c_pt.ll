; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/console.c_pt.bc'
source_filename = "../drivers/usb/serial/console.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_serial_driver = type { ptr, ptr, %struct.list_head, %struct.device_driver, ptr, %struct.usb_dynids, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@usbcons_info.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@usb_serial_console_init.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usbserial\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_serial_console_init\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/serial/console.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"registering the USB serial console.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"usbserial: registering the USB serial console.\0A\00", [48 x i8] zeroinitializer }, align 32
@usbcons = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyUSB\00\00\00\00\00\00\00\00\00\00", ptr @usb_console_write, ptr null, ptr @usb_console_device, ptr null, ptr @usb_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @usb_serial_tty_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@usb_serial_tty_driver = external dso_local global ptr, align 4
@usb_console_write.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_console_write\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - %d byte(s)\0A\00", [47 x i8] zeroinitializer }, align 32
@usb_console_write.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - port not opened\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_console_write.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - write: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@usb_console_write.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.9, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - write cr: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@usb_console_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013usbserial: No USB device connected to ttyUSB%i\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_console_setup\00", [46 x i8] zeroinitializer }, align 32
@usb_console_setup._entry_ptr = internal global ptr @usb_console_setup._entry, section ".printk_index", align 4
@usb_console_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&tty->ldisc_sem\00", [16 x i8] zeroinitializer }, align 32
@usb_console_setup.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&tty->files_lock\00", [47 x i8] zeroinitializer }, align 32
@usb_console_fake_tty_ops = internal constant { %struct.tty_operations, [48 x i8] } zeroinitializer, align 32
@usb_console_setup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 158, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not open USB console port\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_console_setup._entry_ptr.19 = internal global ptr @usb_console_setup._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 69, i64 79, i64 101, i64 111]
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"usbcons_info.0\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 291, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [8 x i8] c"usbcons\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 257, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 212, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 215, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 233, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 238, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 115, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 144, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 145, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [25 x i8] c"usb_console_fake_tty_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 47, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [32 x i8] c"../drivers/usb/serial/console.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 158, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @usb_console_setup._entry, ptr @usb_console_setup._entry.15, ptr @usb_console_setup._entry_ptr, ptr @usb_console_setup._entry_ptr.19, ptr @usbcons_info.0, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @usbcons, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @usb_console_setup.__key, ptr @.str.12, ptr @usb_console_setup.__key.13, ptr @.str.14, ptr @usb_console_fake_tty_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbcons_info.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbcons to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_console_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_console_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_console_setup.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_console_fake_tty_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_console_setup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_serial_console_disconnect(ptr noundef %serial) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr @usbcons_info.0, align 4
  %cmp = icmp eq ptr %1, %2
  br i1 %cmp, label %usb_serial_console_exit.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

usb_serial_console_exit.exit:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @unregister_console(ptr noundef nonnull @usbcons) #7
  %3 = load ptr, ptr @usbcons_info.0, align 4
  %console.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 1, i32 12
  %4 = ptrtoint ptr %console.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %console.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %console.i, align 4
  store ptr null, ptr @usbcons_info.0, align 4
  tail call void @usb_serial_put(ptr noundef %serial) #7
  br label %if.end

if.end:                                           ; preds = %usb_serial_console_exit.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_serial_console_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @usbcons_info.0, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @unregister_console(ptr noundef nonnull @usbcons) #7
  %1 = load ptr, ptr @usbcons_info.0, align 4
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 12
  %2 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %console, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %console, align 4
  store ptr null, ptr @usbcons_info.0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_serial_console_init(i32 noundef %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %minor)
  %cmp = icmp eq i32 %minor, 0
  br i1 %cmp, label %do.body, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_console_init.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_serial_console_init, %if.then3)) #7
          to label %do.end [label %if.then3], !srcloc !54

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usb_serial_console_init.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.4) #7
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  tail call void @register_console(ptr noundef nonnull @usbcons) #7
  br label %if.end4

if.end4:                                          ; preds = %do.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_console_write(ptr nocapture noundef readnone %co, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %cr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @usbcons_info.0, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %state = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp4 = icmp eq i32 %count, 0
  %or.cond = or i1 %cmp4, %cmp
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_console_write.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_console_write, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !54

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev11 = getelementptr inbounds %struct.usb_serial_port, ptr %0, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_console_write.__UNIQUE_ID_ddebug238, ptr noundef %dev11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %count) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %0, i32 0, i32 1, i32 12
  %7 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool14.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool14.not, label %do.body16, label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %do.end
  %type = getelementptr inbounds %struct.usb_serial, ptr %2, i32 0, i32 1
  %dev55 = getelementptr inbounds %struct.usb_serial_port, ptr %0, i32 0, i32 32
  br label %for.cond.preheader

do.body16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_console_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_console_write, %if.then28)) #7
          to label %cleanup [label %if.then28], !srcloc !54

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %dev29 = getelementptr inbounds %struct.usb_serial_port, ptr %0, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_console_write.__UNIQUE_ID_ddebug239, ptr noundef %dev29, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end81.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %buf.addr.0131 = phi ptr [ %buf, %for.cond.preheader.lr.ph ], [ %add.ptr82, %if.end81.for.cond.preheader_crit_edge ]
  %count.addr.0129 = phi i32 [ %count, %for.cond.preheader.lr.ph ], [ %sub, %if.end81.for.cond.preheader_crit_edge ]
  %8 = ptrtoint ptr %buf.addr.0131 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf.addr.0131, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp36139 = icmp eq i8 %9, 10
  br i1 %cmp36139, label %for.cond.preheader.if.then38_crit_edge, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  br label %for.inc

for.cond.preheader.if.then38_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

for.body:                                         ; preds = %for.inc
  %add.ptr = getelementptr i8, ptr %buf.addr.0131, i32 %inc40
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1
  %cmp36 = icmp eq i8 %11, 10
  br i1 %cmp36, label %if.then38.loopexit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then38.loopexit:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %inc40, i32 %count.addr.0129)
  %cmp35.le = icmp ult i32 %inc40, %count.addr.0129
  br label %if.then38

if.then38:                                        ; preds = %if.then38.loopexit, %for.cond.preheader.if.then38_crit_edge
  %cmp35126.lcssa = phi i1 [ true, %for.cond.preheader.if.then38_crit_edge ], [ %cmp35.le, %if.then38.loopexit ]
  %i.0125.lcssa = phi i32 [ 0, %for.cond.preheader.if.then38_crit_edge ], [ %inc40, %if.then38.loopexit ]
  %inc = add nuw i32 %i.0125.lcssa, 1
  br label %for.end

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %i.0125140 = phi i32 [ %inc40, %for.body.for.inc_crit_edge ], [ 0, %for.cond.preheader.for.inc_crit_edge ]
  %inc40 = add nuw i32 %i.0125140, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc40, i32 %count.addr.0129)
  %exitcond.not = icmp eq i32 %inc40, %count.addr.0129
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %inc40, i32 %count.addr.0129)
  %cmp35.le146 = icmp ult i32 %inc40, %count.addr.0129
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then38
  %cmp35122 = phi i1 [ %cmp35126.lcssa, %if.then38 ], [ %cmp35.le146, %for.end.loopexit ]
  %i.1 = phi i32 [ %inc, %if.then38 ], [ %count.addr.0129, %for.end.loopexit ]
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 4
  %write = getelementptr inbounds %struct.usb_serial_driver, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %call41 = call i32 %15(ptr noundef null, ptr noundef nonnull %0, ptr noundef %buf.addr.0131, i32 noundef %i.1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_console_write.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_console_write, %if.then54)) #7
          to label %do.end58 [label %if.then54], !srcloc !54

if.then54:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_console_write.__UNIQUE_ID_ddebug240, ptr noundef %dev55, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %call41) #7
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %for.end
  br i1 %cmp35122, label %if.then60, label %do.end58.if.end81_crit_edge

do.end58.if.end81_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then60:                                        ; preds = %do.end58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr) #7
  %16 = ptrtoint ptr %cr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 13, ptr %cr, align 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type, align 4
  %write62 = getelementptr inbounds %struct.usb_serial_driver, ptr %18, i32 0, i32 25
  %19 = ptrtoint ptr %write62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write62, align 4
  %call63 = call i32 %20(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %cr, i32 noundef 1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_console_write.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_console_write, %if.then76)) #7
          to label %do.end80 [label %if.then76], !srcloc !54

if.then76:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_console_write.__UNIQUE_ID_ddebug241, ptr noundef %dev55, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %call63) #7
  br label %do.end80

do.end80:                                         ; preds = %if.then76, %if.then60
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr) #7
  br label %if.end81

if.end81:                                         ; preds = %do.end80, %do.end58.if.end81_crit_edge
  %add.ptr82 = getelementptr i8, ptr %buf.addr.0131, i32 %i.1
  %sub = sub i32 %count.addr.0129, %i.1
  %tobool34.not = icmp eq i32 %sub, 0
  br i1 %tobool34.not, label %if.end81.cleanup_crit_edge, label %if.end81.for.cond.preheader_crit_edge

if.end81.for.cond.preheader_crit_edge:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end81.cleanup_crit_edge, %if.then28, %do.body16, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @usb_console_device(ptr nocapture noundef readonly %co, ptr nocapture noundef writeonly %index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %index1 = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index1, align 2
  %conv = sext i16 %5 to i32
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %index, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_console_setup(ptr nocapture noundef readonly %co, ptr noundef %options) #0 align 64 {
entry:
  %dummy = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %dummy) #7
  %0 = call ptr @memset(ptr %dummy, i32 255, i32 44)
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.sw.epilog33.thread_crit_edge, label %if.then

entry.sw.epilog33.thread_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog33.thread

if.then:                                          ; preds = %entry
  %call = tail call i32 @simple_strtoul(ptr noundef nonnull %options, ptr noundef null, i32 noundef 10) #7
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then
  %s.0 = phi ptr [ %options, %if.then ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %1 = ptrtoint ptr %s.0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %s.0, align 1
  %3 = add i8 %2, -48
  %4 = icmp ult i8 %3, 10
  %incdec.ptr = getelementptr i8, ptr %s.0, i32 1
  br i1 %4, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool6.not = icmp eq i8 %2, 0
  %narrow = select i1 %tobool6.not, i8 110, i8 %2
  %not.tobool6.not = xor i1 %tobool6.not, true
  %s.1.idx = zext i1 %not.tobool6.not to i32
  %s.1 = getelementptr i8, ptr %s.0, i32 %s.1.idx
  %5 = ptrtoint ptr %s.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp ne i8 %6, 0
  %s.2.idx = zext i1 %tobool10.not to i32
  %s.2 = getelementptr i8, ptr %s.1, i32 %s.2.idx
  %7 = ptrtoint ptr %s.2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %8)
  %cmp19.not = icmp eq i8 %8, 114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp23 = icmp eq i32 %call, 0
  %9 = select i1 %cmp23, i32 9600, i32 %call
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %6)
  %cond208 = icmp eq i8 %6, 55
  %10 = select i1 %cond208, i32 3232, i32 3248
  %11 = zext i8 %narrow to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %narrow, label %while.end.sw.epilog33_crit_edge [
    i8 111, label %while.end.sw.bb29_crit_edge
    i8 79, label %while.end.sw.bb29_crit_edge209
    i8 101, label %while.end.sw.bb31_crit_edge
    i8 69, label %while.end.sw.bb31_crit_edge210
  ]

while.end.sw.bb31_crit_edge210:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

while.end.sw.bb31_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

while.end.sw.bb29_crit_edge209:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

while.end.sw.bb29_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

while.end.sw.epilog33_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog33

sw.bb29:                                          ; preds = %while.end.sw.bb29_crit_edge, %while.end.sw.bb29_crit_edge209
  %or30 = or i32 %10, 512
  br label %sw.epilog33

sw.bb31:                                          ; preds = %while.end.sw.bb31_crit_edge, %while.end.sw.bb31_crit_edge210
  %or32 = or i32 %10, 256
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.bb31, %sw.bb29, %while.end.sw.epilog33_crit_edge
  %cflag.1 = phi i32 [ %10, %while.end.sw.epilog33_crit_edge ], [ %or32, %sw.bb31 ], [ %or30, %sw.bb29 ]
  %or36 = or i32 %cflag.1, -2147483648
  br i1 %cmp19.not, label %sw.epilog33._crit_edge, label %sw.epilog33.sw.epilog33.thread_crit_edge

sw.epilog33.sw.epilog33.thread_crit_edge:         ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog33.thread

sw.epilog33._crit_edge:                           ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #9
  br label %13

sw.epilog33.thread:                               ; preds = %sw.epilog33.sw.epilog33.thread_crit_edge, %entry.sw.epilog33.thread_crit_edge
  %cflag.1206 = phi i32 [ %cflag.1, %sw.epilog33.sw.epilog33.thread_crit_edge ], [ 3248, %entry.sw.epilog33.thread_crit_edge ]
  %12 = phi i32 [ %9, %sw.epilog33.sw.epilog33.thread_crit_edge ], [ 9600, %entry.sw.epilog33.thread_crit_edge ]
  br label %13

13:                                               ; preds = %sw.epilog33.thread, %sw.epilog33._crit_edge
  %14 = phi i32 [ %12, %sw.epilog33.thread ], [ %9, %sw.epilog33._crit_edge ]
  %15 = phi i32 [ %cflag.1206, %sw.epilog33.thread ], [ %or36, %sw.epilog33._crit_edge ]
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %index, align 2
  %conv38 = sext i16 %17 to i32
  %call39 = tail call ptr @usb_serial_port_get_by_minor(i32 noundef %conv38) #7
  %cmp40 = icmp eq ptr %call39, null
  br i1 %cmp40, label %do.end, label %if.end46

do.end:                                           ; preds = %13
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %index, align 2
  %conv44 = sext i16 %19 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv44) #10
  br label %cleanup

if.end46:                                         ; preds = %13
  %20 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call39, align 8
  %interface = getelementptr inbounds %struct.usb_serial, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %interface, align 4
  %call48 = tail call i32 @usb_autopm_get_interface(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.error_get_interface_crit_edge

if.end46.error_get_interface_crit_edge:           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_get_interface

if.end51:                                         ; preds = %if.end46
  %port52 = getelementptr inbounds %struct.usb_serial_port, ptr %call39, i32 0, i32 1
  tail call void @tty_port_tty_set(ptr noundef %port52, ptr noundef null) #7
  store ptr %call39, ptr @usbcons_info.0, align 4
  %count = getelementptr inbounds %struct.usb_serial_port, ptr %call39, i32 0, i32 1, i32 7
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %count, align 4
  %iflags.i = getelementptr inbounds %struct.usb_serial_port, ptr %call39, i32 0, i32 1, i32 11
  %26 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then57, label %if.end51.if.end97_crit_edge

if.end51.if.end97_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then57:                                        ; preds = %if.end51
  %type = getelementptr inbounds %struct.usb_serial, ptr %21, i32 0, i32 1
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type, align 4
  %set_termios = getelementptr inbounds %struct.usb_serial_driver, ptr %29, i32 0, i32 30
  %30 = ptrtoint ptr %set_termios to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_termios, align 4
  %tobool58.not = icmp eq ptr %31, null
  br i1 %tobool58.not, label %if.then57.if.end78_crit_edge, label %if.then59

if.then57.if.end78_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then59:                                        ; preds = %if.then57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 1148) #11
  %tobool61.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool61.not, label %if.then59.reset_open_count_crit_edge, label %if.end63

if.then59.reset_open_count_crit_edge:             ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_open_count

if.end63:                                         ; preds = %if.then59
  %kref = getelementptr inbounds %struct.tty_struct, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #7
  %33 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 1, ptr %kref, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_serial_tty_driver to i32))
  %34 = load ptr, ptr @usb_serial_tty_driver, align 4
  %driver = getelementptr inbounds %struct.tty_struct, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %driver, align 4
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %index, align 2
  %conv65 = sext i16 %37 to i32
  %index66 = getelementptr inbounds %struct.tty_struct, ptr %call7.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %index66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv65, ptr %index66, align 4
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_ldsem(ptr noundef %ldisc_sem, ptr noundef nonnull @.str.12, ptr noundef nonnull @usb_console_setup.__key) #7
  %files_lock = getelementptr inbounds %struct.tty_struct, ptr %call7.i.i, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %files_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @usb_console_setup.__key.13, i16 noundef signext 3) #7
  %tty_files = getelementptr inbounds %struct.tty_struct, ptr %call7.i.i, i32 0, i32 32
  %39 = ptrtoint ptr %tty_files to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %tty_files, ptr %tty_files, align 8
  %prev.i = getelementptr inbounds %struct.tty_struct, ptr %call7.i.i, i32 0, i32 32, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %tty_files, ptr %prev.i, align 4
  %41 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver, align 4
  %kref75 = getelementptr inbounds %struct.tty_driver, ptr %42, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref75, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %kref75, i32 1, i32 3, i32 1) #7
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref75, ptr %kref75, i32 1, ptr elementtype(i32) %kref75) #7, !srcloc !55
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end63.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !56

if.end63.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end63
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %44 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !57

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end63.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end63.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref75, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %45 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.tty_driver, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %owner, align 4
  tail call void @__module_get(ptr noundef %48) #7
  %ops = getelementptr inbounds %struct.tty_struct, ptr %call7.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @usb_console_fake_tty_ops, ptr %ops, align 8
  tail call void @tty_init_termios(ptr noundef nonnull %call7.i.i) #7
  tail call void @tty_port_tty_set(ptr noundef %port52, ptr noundef nonnull %call7.i.i) #7
  br label %if.end78

if.end78:                                         ; preds = %kref_get.exit, %if.then57.if.end78_crit_edge
  %tty.0 = phi ptr [ %call7.i.i, %kref_get.exit ], [ null, %if.then57.if.end78_crit_edge ]
  %50 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %type, align 4
  %open = getelementptr inbounds %struct.usb_serial_driver, ptr %51, i32 0, i32 23
  %52 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %open, align 4
  %call80 = tail call i32 %53(ptr noundef null, ptr noundef nonnull %call39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end86, label %do.end85

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %call39, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  tail call void @tty_port_tty_set(ptr noundef %port52, ptr noundef null) #7
  tail call void @tty_kref_put(ptr noundef %tty.0) #7
  br label %reset_open_count

if.end86:                                         ; preds = %if.end78
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %type, align 4
  %set_termios88 = getelementptr inbounds %struct.usb_serial_driver, ptr %55, i32 0, i32 30
  %56 = ptrtoint ptr %set_termios88 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_termios88, align 4
  %tobool89.not = icmp eq ptr %57, null
  br i1 %tobool89.not, label %if.end86.if.end95_crit_edge, label %if.then90

if.end86.if.end95_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty.0, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty.0, i32 0, i32 13, i32 2
  %58 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %15, ptr %c_cflag, align 4
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %14, i32 noundef %14) #7
  %59 = call ptr @memset(ptr %dummy, i32 0, i32 44)
  %60 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %type, align 4
  %set_termios93 = getelementptr inbounds %struct.usb_serial_driver, ptr %61, i32 0, i32 30
  %62 = ptrtoint ptr %set_termios93 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_termios93, align 4
  call void %63(ptr noundef %tty.0, ptr noundef nonnull %call39, ptr noundef nonnull %dummy) #7
  call void @tty_port_tty_set(ptr noundef %port52, ptr noundef null) #7
  call void @tty_save_termios(ptr noundef %tty.0) #7
  call void @tty_kref_put(ptr noundef %tty.0) #7
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %if.end86.if.end95_crit_edge
  call void @_set_bit(i32 noundef 0, ptr noundef %iflags.i) #7
  br label %if.end97

if.end97:                                         ; preds = %if.end95, %if.end51.if.end97_crit_edge
  %64 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count, align 4
  %dec = add i32 %65, -1
  store i32 %dec, ptr %count, align 4
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %call39, i32 0, i32 1, i32 12
  %66 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load = load i8, ptr %console, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %console, align 4
  %disc_mutex = getelementptr inbounds %struct.usb_serial, ptr %21, i32 0, i32 14
  call void @mutex_unlock(ptr noundef %disc_mutex) #7
  br label %cleanup

reset_open_count:                                 ; preds = %do.end85, %if.then59.reset_open_count_crit_edge
  %retval1.1 = phi i32 [ %call80, %do.end85 ], [ -12, %if.then59.reset_open_count_crit_edge ]
  %67 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %count, align 4
  store ptr null, ptr @usbcons_info.0, align 4
  %68 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %interface, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %69) #7
  br label %error_get_interface

error_get_interface:                              ; preds = %reset_open_count, %if.end46.error_get_interface_crit_edge
  %retval1.2 = phi i32 [ %call48, %if.end46.error_get_interface_crit_edge ], [ %retval1.1, %reset_open_count ]
  tail call void @usb_serial_put(ptr noundef %21) #7
  %disc_mutex106 = getelementptr inbounds %struct.usb_serial, ptr %21, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %disc_mutex106) #7
  br label %cleanup

cleanup:                                          ; preds = %error_get_interface, %if.end97, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %retval1.2, %error_get_interface ], [ 0, %if.end97 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %dummy) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_serial_port_get_by_minor(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_ldsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_init_termios(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_save_termios(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !13, !15, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/console.c", i32 291, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @usb_serial_console_init.__UNIQUE_ID_ddebug242, !1, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"usbcons_info", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/console.c", i32 28, i32 28}
!9 = !{ptr @usbcons, !10, !"usbcons", i1 false, i1 false}
!10 = !{!"../drivers/usb/serial/console.c", i32 257, i32 23}
!11 = distinct !{null, !12, !"info", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/console.c", i32 200, i32 30}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/console.c", i32 212, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @usb_console_write.__UNIQUE_ID_ddebug238, !14, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/console.c", i32 215, i32 3}
!19 = !{ptr @usb_console_write.__UNIQUE_ID_ddebug239, !18, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/console.c", i32 233, i32 3}
!22 = !{ptr @usb_console_write.__UNIQUE_ID_ddebug240, !21, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/serial/console.c", i32 238, i32 4}
!25 = !{ptr @usb_console_write.__UNIQUE_ID_ddebug241, !24, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/serial/console.c", i32 115, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @usb_console_setup._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @usb_console_setup._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @usb_console_setup.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/usb/serial/console.c", i32 144, i32 4}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @usb_console_setup.__key.13, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/usb/serial/console.c", i32 145, i32 4}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/serial/console.c", i32 158, i32 4}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @usb_console_setup._entry.15, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @usb_console_setup._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @usb_console_fake_tty_ops, !44, !"usb_console_fake_tty_ops", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/console.c", i32 47, i32 36}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148696932, i64 2148696937, i64 2148696950, i64 2148696994, i64 2148697028, i64 2148697049}
!55 = !{i64 2148216647, i64 2148216679, i64 2148216708, i64 2148216742, i64 2148216773, i64 2148216796}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{!"branch_weights", i32 2000, i32 1}
