; ModuleID = '/llk/IR_all_yes/drivers/tty/goldfish.c_pt.bc'
source_filename = "../drivers/tty/goldfish.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.goldfish_tty = type { %struct.tty_port, %struct.spinlock, ptr, i32, i32, %struct.console, i32, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.39, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.39 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.37, %struct.anon.38, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.37 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.38 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }

@__UNIQUE_ID___earlycon_early_gf_tty234 = internal constant %struct.earlycon_id { [15 x i8] c"early_gf_tty\00\00\00", i8 0, [128 x i8] c"google,goldfish-tty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gf_earlycon_setup }, section "__earlycon_table", align 4
@__initcall__kmod_goldfish__235_478_goldfish_tty_platform_driver_init6 = internal global ptr @goldfish_tty_platform_driver_init, section ".initcall6.init", align 4
@goldfish_tty_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @goldfish_tty_probe, ptr @goldfish_tty_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @goldfish_tty_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_goldfish_tty_platform_driver_exit = internal global ptr @goldfish_tty_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file236 = internal constant [35 x i8] c"goldfish.file=drivers/tty/goldfish\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [24 x i8] c"goldfish.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"goldfish_tty\00", [19 x i8] zeroinitializer }, align 32
@goldfish_tty_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,goldfish-tty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@goldfish_tty_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013goldfish_tty: No MEM resource available!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"goldfish_tty_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/tty/goldfish.c\00", [41 x i8] zeroinitializer }, align 32
@goldfish_tty_probe._entry_ptr = internal global ptr @goldfish_tty_probe._entry, section ".printk_index", align 4
@goldfish_tty_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013goldfish_tty: Unable to ioremap base!\0A\00", [55 x i8] zeroinitializer }, align 32
@goldfish_tty_probe._entry_ptr.6 = internal global ptr @goldfish_tty_probe._entry.4, section ".printk_index", align 4
@goldfish_tty_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @goldfish_tty_lock, i64 52), ptr getelementptr (i8, ptr @goldfish_tty_lock, i64 52) }, ptr @goldfish_tty_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@goldfish_tty_current_line_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@goldfish_tty_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013goldfish_tty: Reached maximum tty number of %d.\0A\00", [45 x i8] zeroinitializer }, align 32
@goldfish_tty_probe._entry_ptr.9 = internal global ptr @goldfish_tty_probe._entry.7, section ".printk_index", align 4
@goldfish_ttys = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@goldfish_tty_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&qtty->lock\00", [20 x i8] zeroinitializer }, align 32
@goldfish_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr null, ptr null, ptr @goldfish_tty_shutdown, ptr @goldfish_tty_activate, ptr null }, [44 x i8] zeroinitializer }, align 32
@goldfish_tty_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 372, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No suitable DMA available.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@goldfish_tty_probe._entry_ptr.15 = internal global ptr @goldfish_tty_probe._entry.11, section ".printk_index", align 4
@goldfish_tty_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013goldfish_tty: No IRQ available!\0A\00", [61 x i8] zeroinitializer }, align 32
@goldfish_tty_probe._entry_ptr.18 = internal global ptr @goldfish_tty_probe._entry.16, section ".printk_index", align 4
@goldfish_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyGF\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"goldfish_tty_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"goldfish_tty_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"goldfish\00", [23 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@goldfish_tty_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr null, ptr null, ptr @goldfish_tty_open, ptr @goldfish_tty_close, ptr null, ptr null, ptr @goldfish_tty_write, ptr null, ptr null, ptr @goldfish_tty_write_room, ptr @goldfish_tty_chars_in_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @goldfish_tty_hangup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@goldfish_tty_rw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 106, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tty: DMA mapping error.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goldfish_tty_rw\00", [16 x i8] zeroinitializer }, align 32
@goldfish_tty_rw._entry_ptr = internal global ptr @goldfish_tty_rw._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.27 = private unnamed_addr constant [29 x i8] c"goldfish_tty_platform_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 469, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 473, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"goldfish_tty_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 462, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 306, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 312, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"goldfish_tty_lock\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [32 x i8] c"goldfish_tty_current_line_count\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 50, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 330, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"goldfish_ttys\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 51, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 344, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"goldfish_port_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 230, i32 41 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 372, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 382, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c"goldfish_tty_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 48, i32 27 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 393, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 47, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 263, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"goldfish_tty_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 235, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private constant [26 x i8] c"../drivers/tty/goldfish.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 106, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 326, i32 6 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID___earlycon_early_gf_tty234, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_goldfish_tty_platform_driver_exit, ptr @__initcall__kmod_goldfish__235_478_goldfish_tty_platform_driver_init6, ptr @goldfish_tty_platform_driver_exit, ptr @goldfish_tty_probe._entry, ptr @goldfish_tty_probe._entry.11, ptr @goldfish_tty_probe._entry.16, ptr @goldfish_tty_probe._entry.4, ptr @goldfish_tty_probe._entry.7, ptr @goldfish_tty_probe._entry_ptr, ptr @goldfish_tty_probe._entry_ptr.15, ptr @goldfish_tty_probe._entry_ptr.18, ptr @goldfish_tty_probe._entry_ptr.6, ptr @goldfish_tty_probe._entry_ptr.9, ptr @goldfish_tty_rw._entry, ptr @goldfish_tty_rw._entry_ptr, ptr @goldfish_tty_platform_driver, ptr @.str, ptr @goldfish_tty_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @goldfish_tty_lock, ptr @goldfish_tty_current_line_count, ptr @.str.8, ptr @goldfish_ttys, ptr @goldfish_tty_probe.__key, ptr @.str.10, ptr @goldfish_port_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @goldfish_tty_driver, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @goldfish_tty_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_current_line_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_ttys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_tty_rw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gf_earlycon_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @gf_early_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_tty_platform_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @goldfish_tty_platform_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @goldfish_tty_platform_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @goldfish_tty_platform_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf_early_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @gf_early_console_putchar) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf_early_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %ch) #11, !srcloc !79
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_tty_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %call2 = tail call ptr @ioremap(i32 noundef %1, i32 noundef 4096) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.err_unmap_crit_edge, label %if.end13

if.end10.err_unmap_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unmap

if.end13:                                         ; preds = %if.end10
  tail call void @mutex_lock_nested(ptr noundef nonnull @goldfish_tty_lock, i32 noundef 0) #11
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp14 = icmp eq i32 %3, -1
  br i1 %cmp14, label %if.then15, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load i32, ptr @goldfish_tty_current_line_count, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %line.0 = phi i32 [ %4, %if.then15 ], [ %3, %if.end13.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %line.0)
  %cmp18 = icmp ugt i32 %line.0, 7
  %5 = load i32, ptr @goldfish_tty_current_line_count, align 4
  br i1 %cmp18, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %5) #14
  br label %err_unlock

if.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26 = icmp eq i32 %5, 0
  br i1 %cmp26, label %if.then27, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then27:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 5664) #15
  store ptr %call7.i.i.i.i, ptr @goldfish_ttys, align 4
  %cmp.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i, label %if.then27.err_unlock_crit_edge, label %if.end.i

if.then27.err_unlock_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

if.end.i:                                         ; preds = %if.then27
  %call1.i = tail call ptr @__tty_alloc_driver(i32 noundef 8, ptr noundef null, i32 noundef 14) #11
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call1.i to i32
  br label %goldfish_tty_create_driver.exit

if.end5.i:                                        ; preds = %if.end.i
  %driver_name.i = getelementptr inbounds %struct.tty_driver, ptr %call1.i, i32 0, i32 4
  %8 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.22, ptr %driver_name.i, align 4
  %name.i = getelementptr inbounds %struct.tty_driver, ptr %call1.i, i32 0, i32 5
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.19, ptr %name.i, align 4
  %type.i = getelementptr inbounds %struct.tty_driver, ptr %call1.i, i32 0, i32 10
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3, ptr %type.i, align 4
  %subtype.i = getelementptr inbounds %struct.tty_driver, ptr %call1.i, i32 0, i32 11
  %11 = ptrtoint ptr %subtype.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %subtype.i, align 2
  %init_termios.i = getelementptr inbounds %struct.tty_driver, ptr %call1.i, i32 0, i32 12
  %12 = call ptr @memcpy(ptr %init_termios.i, ptr @tty_std_termios, i32 44)
  %ops.i.i = getelementptr inbounds %struct.tty_driver, ptr %call1.i, i32 0, i32 20
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @goldfish_tty_ops, ptr %ops.i.i, align 4
  %call6.i = tail call i32 @tty_register_driver(ptr noundef %call1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %goldfish_tty_create_driver.exit.thread, label %err_tty_register_driver_failed.i

goldfish_tty_create_driver.exit.thread:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call1.i, ptr @goldfish_tty_driver, align 4
  br label %if.end32

err_tty_register_driver_failed.i:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_driver_kref_put(ptr noundef %call1.i) #11
  br label %goldfish_tty_create_driver.exit

goldfish_tty_create_driver.exit:                  ; preds = %err_tty_register_driver_failed.i, %if.then3.i
  %ret.0.i = phi i32 [ %7, %if.then3.i ], [ %call6.i, %err_tty_register_driver_failed.i ]
  %14 = load ptr, ptr @goldfish_ttys, align 4
  tail call void @kfree(ptr noundef %14) #11
  store ptr null, ptr @goldfish_ttys, align 4
  br label %err_unlock

if.end32:                                         ; preds = %goldfish_tty_create_driver.exit.thread, %if.end25.if.end32_crit_edge
  %15 = load i32, ptr @goldfish_tty_current_line_count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr @goldfish_tty_current_line_count, align 4
  %16 = load ptr, ptr @goldfish_ttys, align 4
  %arrayidx = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0
  %lock = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @goldfish_tty_probe.__key, i16 noundef signext 3) #11
  tail call void @tty_port_init(ptr noundef %arrayidx) #11
  %ops = getelementptr inbounds %struct.tty_port, ptr %arrayidx, i32 0, i32 3
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @goldfish_port_ops, ptr %ops, align 4
  %base38 = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0, i32 2
  %18 = ptrtoint ptr %base38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2, ptr %base38, align 4
  %irq39 = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0, i32 3
  %19 = ptrtoint ptr %irq39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call11, ptr %irq39, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dev40 = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0, i32 7
  %20 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %dev40, align 4
  %add.ptr = getelementptr i8, ptr %call2, i32 32
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !80
  %version = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0, i32 6
  %22 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp43.not = icmp eq i32 %21, 0
  br i1 %cmp43.not, label %if.end32.if.end61_crit_edge, label %if.then44

if.end32.if.end61_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then44:                                        ; preds = %if.end32
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %23 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_mask, align 8
  %tobool46.not = icmp eq ptr %24, null
  br i1 %tobool46.not, label %if.then47, label %if.then44.if.end51_crit_edge

if.then44.if.end51_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %25 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.then44.if.end51_crit_edge
  %call53 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end51.if.end61_crit_edge, label %do.end58

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #14
  br label %err_dec_line_count

if.end61:                                         ; preds = %if.end51.if.end61_crit_edge, %if.end32.if.end61_crit_edge
  %add.ptr62 = getelementptr i8, ptr %call2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 0) #11, !srcloc !79
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call11, ptr noundef nonnull @goldfish_tty_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %arrayidx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool64.not = icmp eq i32 %call.i, 0
  br i1 %tobool64.not, label %if.end71, label %do.end68

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %err_dec_line_count

if.end71:                                         ; preds = %if.end61
  %26 = load ptr, ptr @goldfish_tty_driver, align 4
  %call74 = tail call ptr @tty_port_register_device(ptr noundef %arrayidx, ptr noundef %26, i32 noundef %line.0, ptr noundef %dev) #11
  %cmp.i142 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %call74 to i32
  %call86 = tail call ptr @free_irq(i32 noundef %call11, ptr noundef %arrayidx) #11
  br label %err_dec_line_count

if.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %console = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0, i32 5
  %28 = call ptr @memcpy(ptr %console, ptr @.str.19, i32 6)
  %write = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0, i32 5, i32 1
  %29 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @goldfish_tty_console_write, ptr %write, align 4
  %device = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0, i32 5, i32 3
  %30 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @goldfish_tty_console_device, ptr %device, align 4
  %setup = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0, i32 5, i32 5
  %31 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @goldfish_tty_console_setup, ptr %setup, align 4
  %flags = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0, i32 5, i32 8
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %flags, align 4
  %conv = trunc i32 %line.0 to i16
  %index = getelementptr %struct.goldfish_tty, ptr %16, i32 %line.0, i32 5, i32 9
  %33 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv, ptr %index, align 2
  tail call void @register_console(ptr noundef %console) #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @goldfish_tty_lock) #11
  br label %cleanup

err_dec_line_count:                               ; preds = %if.then76, %do.end68, %do.end58
  %ret.0 = phi i32 [ %call53, %do.end58 ], [ %call.i, %do.end68 ], [ %27, %if.then76 ]
  %35 = load i32, ptr @goldfish_tty_current_line_count, align 4
  %dec = add i32 %35, -1
  store i32 %dec, ptr @goldfish_tty_current_line_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp87 = icmp eq i32 %dec, 0
  br i1 %cmp87, label %if.then89, label %err_dec_line_count.err_unlock_crit_edge

err_dec_line_count.err_unlock_crit_edge:          ; preds = %err_dec_line_count
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

if.then89:                                        ; preds = %err_dec_line_count
  call void @__sanitizer_cov_trace_pc() #13
  %36 = load ptr, ptr @goldfish_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %36) #11
  %37 = load ptr, ptr @goldfish_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %37) #11
  store ptr null, ptr @goldfish_tty_driver, align 4
  %38 = load ptr, ptr @goldfish_ttys, align 4
  tail call void @kfree(ptr noundef %38) #11
  store ptr null, ptr @goldfish_ttys, align 4
  br label %err_unlock

err_unlock:                                       ; preds = %if.then89, %err_dec_line_count.err_unlock_crit_edge, %goldfish_tty_create_driver.exit, %if.then27.err_unlock_crit_edge, %do.end22
  %ret.1 = phi i32 [ -12, %do.end22 ], [ %ret.0.i, %goldfish_tty_create_driver.exit ], [ %ret.0, %if.then89 ], [ %ret.0, %err_dec_line_count.err_unlock_crit_edge ], [ -12, %if.then27.err_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @goldfish_tty_lock) #11
  br label %err_unmap

err_unmap:                                        ; preds = %err_unlock, %if.end10.err_unmap_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_unlock ], [ %call11, %if.end10.err_unmap_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %err_unmap, %if.end78, %do.end7, %do.end
  %retval.0 = phi i32 [ %ret.2, %err_unmap ], [ 0, %if.end78 ], [ -12, %do.end7 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_tty_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @goldfish_tty_lock, i32 noundef 0) #11
  %console = getelementptr inbounds %struct.goldfish_tty, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @unregister_console(ptr noundef %console) #11
  %2 = load ptr, ptr @goldfish_tty_driver, align 4
  %index = getelementptr inbounds %struct.goldfish_tty, ptr %1, i32 0, i32 5, i32 9
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %index, align 2
  %conv = sext i16 %4 to i32
  tail call void @tty_unregister_device(ptr noundef %2, i32 noundef %conv) #11
  %base = getelementptr inbounds %struct.goldfish_tty, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %6) #11
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %base, align 4
  %irq = getelementptr inbounds %struct.goldfish_tty, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %pdev) #11
  %10 = load i32, ptr @goldfish_tty_current_line_count, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr @goldfish_tty_current_line_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = load ptr, ptr @goldfish_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %11) #11
  %12 = load ptr, ptr @goldfish_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %12) #11
  store ptr null, ptr @goldfish_tty_driver, align 4
  %13 = load ptr, ptr @goldfish_ttys, align 4
  tail call void @kfree(ptr noundef %13) #11
  store ptr null, ptr @goldfish_ttys, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @goldfish_tty_lock) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_tty_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  %buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.goldfish_tty, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !81
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call i32 @tty_prepare_flip_string(ptr noundef %dev_id, ptr noundef nonnull %buf, i32 noundef %3) #11
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call fastcc void @goldfish_tty_rw(ptr noundef %dev_id, i32 noundef %6, i32 noundef %call2, i32 noundef 0)
  call void @tty_flip_buffer_push(ptr noundef %dev_id) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goldfish_tty_console_write(ptr nocapture noundef readonly %co, ptr noundef %b, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %conv = sext i16 %1 to i32
  %2 = load ptr, ptr @goldfish_ttys, align 4
  %arrayidx.i = getelementptr %struct.goldfish_tty, ptr %2, i32 %conv
  %3 = ptrtoint ptr %b to i32
  tail call fastcc void @goldfish_tty_rw(ptr noundef %arrayidx.i, i32 noundef %3, i32 noundef %count, i32 noundef 1) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @goldfish_tty_console_device(ptr nocapture noundef readonly %c, ptr nocapture noundef writeonly %index) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.console, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index1, align 2
  %conv = sext i16 %1 to i32
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %index, align 4
  %3 = load ptr, ptr @goldfish_tty_driver, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @goldfish_tty_console_setup(ptr nocapture noundef readonly %co, ptr nocapture noundef readnone %options) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %1)
  %cmp = icmp ugt i16 %1, 7
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv6 = zext i16 %1 to i32
  %2 = load ptr, ptr @goldfish_ttys, align 4
  %base = getelementptr %struct.goldfish_tty, ptr %2, i32 %conv6, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %tobool.not = icmp eq ptr %4, null
  %. = select i1 %tobool.not, i32 -19, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_tty_open(ptr noundef %tty, ptr noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @goldfish_ttys, align 4
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.goldfish_tty, ptr %0, i32 %2
  %call = tail call i32 @tty_port_open(ptr noundef %arrayidx, ptr noundef %tty, ptr noundef %filp) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goldfish_tty_close(ptr noundef %tty, ptr noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 37
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  tail call void @tty_port_close(ptr noundef %1, ptr noundef %tty, ptr noundef %filp) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_tty_write(ptr nocapture noundef readonly %tty, ptr noundef %buf, i32 noundef returned %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = load ptr, ptr @goldfish_ttys, align 4
  %arrayidx.i = getelementptr %struct.goldfish_tty, ptr %2, i32 %1
  %3 = ptrtoint ptr %buf to i32
  tail call fastcc void @goldfish_tty_rw(ptr noundef %arrayidx.i, i32 noundef %3, i32 noundef %count, i32 noundef 1) #11
  ret i32 %count
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @goldfish_tty_write_room(ptr nocapture noundef readnone %tty) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 65536
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_tty_chars_in_buffer(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @goldfish_ttys, align 4
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %base1 = getelementptr %struct.goldfish_tty, ptr %0, i32 %2, i32 2
  %3 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base1, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !80
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goldfish_tty_hangup(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 37
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  tail call void @tty_port_hangup(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @goldfish_tty_rw(ptr noundef %qtty, i32 noundef %addr, i32 noundef %count, i32 noundef %is_write) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_write)
  %tobool.not = icmp eq i32 %is_write, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  %version = getelementptr inbounds %struct.goldfish_tty, ptr %qtty, i32 0, i32 6
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add = add i32 %count, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %addr)
  %cmp175 = icmp ugt i32 %add, %addr
  br i1 %cmp175, label %while.body.lr.ph, label %if.then.cleanup18_crit_edge

if.then.cleanup18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

while.body.lr.ph:                                 ; preds = %if.then
  %dev = getelementptr inbounds %struct.goldfish_tty, ptr %qtty, i32 0, i32 7
  %base1.i = getelementptr inbounds %struct.goldfish_tty, ptr %qtty, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.goldfish_tty, ptr %qtty, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %addr.addr.076 = phi i32 [ %addr, %while.body.lr.ph ], [ %3, %cleanup.while.body_crit_edge ]
  %2 = add i32 %addr.addr.076, 4096
  %add2 = and i32 %2, -4096
  %3 = tail call i32 @llvm.umin.i32(i32 %add2, i32 %add)
  %sub = sub i32 %3, %addr.addr.076
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = inttoptr i32 %addr.addr.076 to ptr
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %6) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %while.body
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !82

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %5) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %12, i32 noundef -1) #11
  br label %cleanup.thread

dma_map_single_attrs.exit:                        ; preds = %while.body
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef %6, i32 noundef %sub) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %addr.addr.076, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %addr.addr.076, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub, i32 noundef %cond, i32 noundef 0) #11
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup.thread_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup.thread_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %dma_map_single_attrs.exit.cleanup.thread_crit_edge, %dma_map_single_attrs.exit.thread
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.23) #14
  br label %cleanup18

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %18 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base1.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %add.ptr.i49 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %call41.i) #11, !srcloc !79
  %add.ptr7.i = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %sub) #11, !srcloc !79
  %add.ptr9.i = getelementptr i8, ptr %19, i32 8
  br i1 %tobool.not, label %if.else.i, label %if.then.i50

if.then.i50:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 2) #11, !srcloc !79
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 3) #11, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i50
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %call41.i, i32 noundef %sub, i32 noundef %cond, i32 noundef 0) #11
  %cmp1 = icmp ugt i32 %add, %add2
  br i1 %cmp1, label %cleanup.while.body_crit_edge, label %cleanup.cleanup18_crit_edge

cleanup.cleanup18_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.else:                                          ; preds = %entry
  %base1.i51 = getelementptr inbounds %struct.goldfish_tty, ptr %qtty, i32 0, i32 2
  %22 = ptrtoint ptr %base1.i51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base1.i51, align 4
  %lock.i52 = getelementptr inbounds %struct.goldfish_tty, ptr %qtty, i32 0, i32 1
  %call3.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i52) #11
  %add.ptr.i54 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %addr) #11, !srcloc !79
  %add.ptr7.i55 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i55, i32 %count) #11, !srcloc !79
  %add.ptr9.i57 = getelementptr i8, ptr %23, i32 8
  br i1 %tobool.not, label %if.else.i59, label %if.then.i58

if.then.i58:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i57, i32 2) #11, !srcloc !79
  br label %do_rw_io.exit60

if.else.i59:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i57, i32 3) #11, !srcloc !79
  br label %do_rw_io.exit60

do_rw_io.exit60:                                  ; preds = %if.else.i59, %if.then.i58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i52, i32 noundef %call3.i53) #11
  br label %cleanup18

cleanup18:                                        ; preds = %do_rw_io.exit60, %cleanup.cleanup18_crit_edge, %cleanup.thread, %if.then.cleanup18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goldfish_tty_shutdown(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.goldfish_tty, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #11, !srcloc !79
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_tty_activate(ptr nocapture noundef readonly %port, ptr nocapture noundef readnone %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.goldfish_tty, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 1) #11, !srcloc !79
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_prepare_flip_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__UNIQUE_ID___earlycon_early_gf_tty234, !1, !"__UNIQUE_ID___earlycon_early_gf_tty234", i1 false, i1 false}
!1 = !{!"../drivers/tty/goldfish.c", i32 459, i32 1}
!2 = !{ptr @__initcall__kmod_goldfish__235_478_goldfish_tty_platform_driver_init6, !3, !"__initcall__kmod_goldfish__235_478_goldfish_tty_platform_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/tty/goldfish.c", i32 478, i32 1}
!4 = !{ptr @__exitcall_goldfish_tty_platform_driver_exit, !3, !"__exitcall_goldfish_tty_platform_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_file236, !6, !"__UNIQUE_ID_file236", i1 false, i1 false}
!6 = !{!"../drivers/tty/goldfish.c", i32 480, i32 1}
!7 = !{ptr @__UNIQUE_ID_license237, !6, !"__UNIQUE_ID_license237", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/tty/goldfish.c", i32 473, i32 11}
!10 = !{ptr @goldfish_tty_platform_driver, !11, !"goldfish_tty_platform_driver", i1 false, i1 false}
!11 = !{!"../drivers/tty/goldfish.c", i32 469, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/goldfish.c", i32 306, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @goldfish_tty_probe._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @goldfish_tty_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/goldfish.c", i32 312, i32 3}
!20 = !{ptr @goldfish_tty_probe._entry.4, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @goldfish_tty_probe._entry_ptr.6, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tty/goldfish.c", i32 330, i32 3}
!24 = !{ptr @goldfish_tty_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @goldfish_tty_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @goldfish_tty_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/tty/goldfish.c", i32 344, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/tty/goldfish.c", i32 372, i32 4}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @goldfish_tty_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @goldfish_tty_probe._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/goldfish.c", i32 382, i32 3}
!37 = !{ptr @goldfish_tty_probe._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @goldfish_tty_probe._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/goldfish.c", i32 393, i32 29}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/goldfish.c", i32 47, i32 8}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @goldfish_tty_lock, !42, !"goldfish_tty_lock", i1 false, i1 false}
!45 = !{ptr @goldfish_tty_current_line_count, !46, !"goldfish_tty_current_line_count", i1 false, i1 false}
!46 = !{!"../drivers/tty/goldfish.c", i32 50, i32 12}
!47 = distinct !{null, !48, !"goldfish_tty_line_count", i1 false, i1 false}
!48 = !{!"../drivers/tty/goldfish.c", i32 49, i32 12}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/goldfish.c", i32 263, i32 21}
!51 = !{ptr @goldfish_tty_ops, !52, !"goldfish_tty_ops", i1 false, i1 false}
!52 = !{!"../drivers/tty/goldfish.c", i32 235, i32 36}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/goldfish.c", i32 106, i32 5}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @goldfish_tty_rw._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @goldfish_tty_rw._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @goldfish_ttys, !63, !"goldfish_ttys", i1 false, i1 false}
!63 = !{!"../drivers/tty/goldfish.c", i32 51, i32 29}
!64 = !{ptr @goldfish_port_ops, !65, !"goldfish_port_ops", i1 false, i1 false}
!65 = !{!"../drivers/tty/goldfish.c", i32 230, i32 41}
!66 = !{ptr @goldfish_tty_driver, !67, !"goldfish_tty_driver", i1 false, i1 false}
!67 = !{!"../drivers/tty/goldfish.c", i32 48, i32 27}
!68 = !{ptr @goldfish_tty_of_match, !69, !"goldfish_tty_of_match", i1 false, i1 false}
!69 = !{!"../drivers/tty/goldfish.c", i32 462, i32 34}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 4215612}
!80 = !{i64 4216030}
!81 = !{!"auto-init"}
!82 = !{!"branch_weights", i32 2000, i32 1}
