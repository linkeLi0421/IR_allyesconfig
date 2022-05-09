; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/st-asc.c_pt.bc'
source_filename = "../drivers/tty/serial/st-asc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asc_port = type { %struct.uart_port, ptr, ptr, ptr, [2 x ptr], i8 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.35, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.35 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.36, %struct.anon.37, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.36 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.37 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@asc_serial_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asc_serial_probe, ptr @asc_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @asc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @asc_serial_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@asc_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.2, i32 0, i32 0, i32 8, ptr @asc_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_st_asc__228_1000_asc_init6 = internal global ptr @asc_init, section ".initcall6.init", align 4
@__exitcall_asc_exit = internal global ptr @asc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias229 = internal constant [29 x i8] c"st_asc.alias=platform:st-asc\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [47 x i8] c"st_asc.author=STMicroelectronics (R&D) Limited\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [61 x i8] c"st_asc.description=STMicroelectronics ASC serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [38 x i8] c"st_asc.file=drivers/tty/serial/st-asc\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [19 x i8] c"st_asc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st-asc\00", [25 x i8] zeroinitializer }, align 32
@asc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,asc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@asc_serial_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @asc_serial_suspend, ptr @asc_serial_resume, ptr @asc_serial_suspend, ptr @asc_serial_resume, ptr @asc_serial_suspend, ptr @asc_serial_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyAS\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/tty/serial/st-asc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uart-has-rtscts\00", [16 x i8] zeroinitializer }, align 32
@asc_ports = internal global { [8 x %struct.asc_port], [768 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,force_m1\00", [20 x i8] zeroinitializer }, align 32
@asc_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @asc_tx_empty, ptr @asc_set_mctrl, ptr @asc_get_mctrl, ptr @asc_stop_tx, ptr @asc_start_tx, ptr null, ptr null, ptr null, ptr @asc_stop_rx, ptr null, ptr @asc_break_ctl, ptr @asc_startup, ptr @asc_shutdown, ptr null, ptr @asc_set_termios, ptr null, ptr @asc_pm, ptr @asc_type, ptr @asc_release_port, ptr @asc_request_port, ptr @asc_config_port, ptr @asc_verify_port, ptr null, ptr null, ptr @asc_put_poll_char, ptr @asc_get_poll_char }, [56 x i8] zeroinitializer }, align 32
@asc_init_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@asc_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 750, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get Pinctrl: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"asc_init_port\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@asc_init_port._entry_ptr = internal global ptr @asc_init_port._entry, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@asc_init_port._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 759, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to look up Pinctrl state 'default': %d\0A\00", [49 x i8] zeroinitializer }, align 32
@asc_init_port._entry_ptr.14 = internal global ptr @asc_init_port._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no-hw-flowctrl\00", [17 x i8] zeroinitializer }, align 32
@asc_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 460, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot allocate irq.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"asc_startup\00", [20 x i8] zeroinitializer }, align 32
@asc_startup._entry_ptr = internal global ptr @asc_startup._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rts\00", [28 x i8] zeroinitializer }, align 32
@asc_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyAS\00\00\00\00\00\00\00\00\00\00\00", ptr @asc_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @asc_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @asc_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@asc_init.banner = internal constant [45 x i8] c"\016STMicroelectronics ASC driver initialized\0A\00", section ".init.rodata", align 1
@asc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.19, ptr @.str.3, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asc_init\00", [23 x i8] zeroinitializer }, align 32
@asc_init._entry_ptr = internal global ptr @asc_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"asc_serial_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 965, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"asc_uart_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 951, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 969, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"asc_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 800, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"asc_serial_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 961, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 780, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 782, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 787, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 791, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"asc_ports\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 46, i32 24 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 792, i32 54 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"asc_uart_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 691, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 735, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 750, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 755, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 758, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 765, i32 42 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 460, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 568, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"asc_console\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 935, i32 23 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [31 x i8] c"../drivers/tty/serial/st-asc.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 981, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_asc_exit, ptr @__initcall__kmod_st_asc__228_1000_asc_init6, ptr @asc_exit, ptr @asc_init._entry, ptr @asc_init._entry_ptr, ptr @asc_init_port._entry, ptr @asc_init_port._entry.12, ptr @asc_init_port._entry_ptr, ptr @asc_init_port._entry_ptr.14, ptr @asc_startup._entry, ptr @asc_startup._entry_ptr, ptr @asc_serial_driver, ptr @asc_uart_driver, ptr @.str, ptr @asc_match, ptr @asc_serial_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @asc_ports, ptr @.str.5, ptr @asc_uart_ops, ptr @asc_init_port.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @asc_console, ptr @.str.19], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_serial_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_serial_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_ports to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_init_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_init_port._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @asc_serial_driver) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @asc_uart_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @asc_init.banner) #12
  %call1 = tail call i32 @uart_register_driver(ptr noundef nonnull @asc_uart_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @asc_serial_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_unregister_driver(ptr noundef nonnull @asc_uart_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call4, %if.then6 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc_serial_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %id.0.i = phi i32 [ %call2.i, %if.then1.i ], [ %call.i, %if.end.i.if.end3.i_crit_edge ]
  %2 = tail call i32 @llvm.smax.i32(i32 %id.0.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp7.i = icmp ugt i32 %2, 7
  br i1 %cmp7.i, label %do.end.i, label %asc_of_get_asc_port.exit, !prof !79

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 787, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

asc_of_get_asc_port.exit:                         ; preds = %if.end3.i
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef null) #9
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  %arrayidx.i = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %2
  %hw_flow_control.i = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %2, i32 5
  %3 = ptrtoint ptr %hw_flow_control.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %hw_flow_control.i, align 4
  %bf.shl.i = select i1 %tobool.i.not.i, i8 0, i8 -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %hw_flow_control.i, align 4
  %call.i59.i = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %tobool.i60.not.i = icmp eq ptr %call.i59.i, null
  %4 = ptrtoint ptr %hw_flow_control.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load36.i = load i8, ptr %hw_flow_control.i, align 4
  %bf.shl38.i = select i1 %tobool.i60.not.i, i8 0, i8 64
  %bf.clear39.i = and i8 %bf.load36.i, -65
  %bf.set40.i = or i8 %bf.clear39.i, %bf.shl38.i
  store i8 %bf.set40.i, ptr %hw_flow_control.i, align 4
  %line.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 41
  %5 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %line.i, align 4
  %rts.i = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %2, i32 1
  %6 = ptrtoint ptr %rts.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rts.i, align 4
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %asc_of_get_asc_port.exit.cleanup_crit_edge, label %if.end

asc_of_get_asc_port.exit.cleanup_crit_edge:       ; preds = %asc_of_get_asc_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %asc_of_get_asc_port.exit
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 26
  %7 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %iotype.i, align 2
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 33
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 268435456, ptr %flags.i, align 4
  %ops.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 39
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @asc_uart_ops, ptr %ops.i, align 4
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 23
  %10 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %fifosize.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dev2.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 45
  %11 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev.i, ptr %dev2.i, align 4
  %call.i19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 20
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i19, ptr %irq.i, align 4
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 48
  %13 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %has_sysrq.i, align 4
  %call3.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call5.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev.i, ptr noundef %call3.i) #9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i, ptr %membase.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i20

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call5.i to i32
  br label %cleanup

if.end.i20:                                       ; preds = %if.end
  %16 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call3.i, align 4
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 43
  %18 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mapbase.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %arrayidx.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @asc_init_port.__key, i16 noundef signext 3) #9
  %call12.i = tail call ptr @devm_clk_get(ptr noundef %dev.i, ptr noundef null) #9
  %clk.i = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %2, i32 2
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call12.i, ptr %clk.i, align 4
  %cmp.i160.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160.i, label %asc_init_port.exit.thread28, label %if.end40.i, !prof !79

asc_init_port.exit.thread28:                      ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 739, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end40.i:                                       ; preds = %if.end.i20
  %call.i.i21 = tail call i32 @clk_prepare(ptr noundef %call12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %tobool.not.i.i = icmp eq i32 %call.i.i21, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end40.i.clk_prepare_enable.exit.i_crit_edge

if.end40.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end40.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call12.i) #9
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, %if.end40.i.clk_prepare_enable.exit.i_crit_edge
  %20 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk.i, align 4
  %call44.i = tail call i32 @clk_get_rate(ptr noundef %21) #9
  %uartclk.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 22
  %22 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call44.i, ptr %uartclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp.i22 = icmp eq i32 %call44.i, 0
  br i1 %cmp.i22, label %do.end64.i, label %clk_prepare_enable.exit.i.if.end70.i_crit_edge, !prof !79

clk_prepare_enable.exit.i.if.end70.i_crit_edge:   ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i

do.end64.i:                                       ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 744, i32 noundef 9, ptr noundef null) #9
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.end64.i, %clk_prepare_enable.exit.i.if.end70.i_crit_edge
  %23 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %24) #9
  tail call void @clk_unprepare(ptr noundef %24) #9
  %call80.i = tail call ptr @devm_pinctrl_get(ptr noundef %dev.i) #9
  %pinctrl.i = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %2, i32 3
  %25 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call80.i, ptr %pinctrl.i, align 4
  %cmp.i161.i = icmp ugt ptr %call80.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161.i, label %if.then83.i, label %if.end90.i

if.then83.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call80.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, i32 noundef %26) #12
  br label %cleanup

if.end90.i:                                       ; preds = %if.end70.i
  %call92.i = tail call ptr @pinctrl_lookup_state(ptr noundef %call80.i, ptr noundef nonnull @.str.11) #9
  %states.i = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %2, i32 4
  %27 = ptrtoint ptr %states.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call92.i, ptr %states.i, align 4
  %cmp.i162.i = icmp ugt ptr %call92.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162.i, label %if.then96.i, label %asc_init_port.exit.thread

if.then96.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %call92.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %28) #12
  br label %cleanup

asc_init_port.exit.thread:                        ; preds = %if.end90.i
  %29 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pinctrl.i, align 4
  %call106.i = tail call ptr @pinctrl_lookup_state(ptr noundef %30, ptr noundef nonnull @.str.15) #9
  %arrayidx108.i = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %2, i32 4, i32 1
  %cmp.i163.i = icmp ugt ptr %call106.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i163.i, ptr null, ptr %call106.i
  %31 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %spec.store.select.i, ptr %arrayidx108.i, align 4
  %call5 = tail call i32 @uart_add_one_port(ptr noundef nonnull @asc_uart_driver, ptr noundef nonnull %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %asc_init_port.exit.thread.cleanup_crit_edge

asc_init_port.exit.thread.cleanup_crit_edge:      ; preds = %asc_init_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %asc_init_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %asc_init_port.exit.thread.cleanup_crit_edge, %if.then96.i, %if.then83.i, %asc_init_port.exit.thread28, %if.then.i, %asc_of_get_asc_port.exit.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -19, %asc_of_get_asc_port.exit.cleanup_crit_edge ], [ %call5, %asc_init_port.exit.thread.cleanup_crit_edge ], [ -22, %asc_init_port.exit.thread28 ], [ -19, %do.end.i ], [ -19, %entry.cleanup_crit_edge ], [ %15, %if.then.i ], [ %26, %if.then83.i ], [ %28, %if.then96.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc_serial_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @asc_uart_driver, ptr noundef %1) #9
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc_tx_empty(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !80
  %3 = lshr i32 %2, 25
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asc_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rts = getelementptr inbounds %struct.asc_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rts, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !80
  %5 = and i32 %4, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rts, align 4
  %and6 = and i32 %mctrl, 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef %and6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @asc_get_mctrl(ptr nocapture noundef readnone %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 352
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asc_stop_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !80
  %3 = and i32 %2, -67108865
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %3) #9, !srcloc !81
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #9, !srcloc !80
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asc_start_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !80
  %9 = or i32 %8, 67108864
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %9) #9, !srcloc !81
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asc_stop_rx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !80
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %3) #9, !srcloc !81
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #9, !srcloc !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @asc_break_ctl(ptr nocapture noundef %port, i32 noundef %break_state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -16
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @asc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %5, ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16) #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @asc_transmit_chars(ptr noundef %port)
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !80
  %11 = or i32 %10, 16777216
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %11) #9, !srcloc !81
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asc_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !80
  %3 = and i32 %2, -67108865
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %3) #9, !srcloc !81
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #9, !srcloc !80
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #9, !srcloc !80
  %12 = and i32 %11, -16777217
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i5.i6 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i6, i32 %12) #9, !srcloc !81
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i7.i7 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i7) #9, !srcloc !80
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %19, ptr noundef %port) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asc_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_flow_control = getelementptr inbounds %struct.asc_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %hw_flow_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %hw_flow_control, align 4
  %1 = and i8 %bf.load, -128
  %2 = zext i8 %1 to i32
  %3 = shl nuw i32 %2, 24
  %neg468 = or i32 %3, 1073741823
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %and = and i32 %neg468, %5
  store i32 %and, ptr %c_cflag, align 4
  %clk = getelementptr inbounds %struct.asc_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %7) #9
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %8 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call1, ptr %uartclk, align 4
  %div469 = lshr i32 %call1, 4
  %call3 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div469) #9
  %9 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_cflag, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !80
  %14 = and i32 %13, 2147483647
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr.i474 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i474, i32 %14) #9, !srcloc !81
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr.i476 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i476, i32 16777216) #9, !srcloc !81
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr.i478 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i478, i32 16777216) #9, !srcloc !81
  %and12 = and i32 %10, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 32
  %and16 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or19 = select i1 %tobool17.not, i32 1281, i32 1287
  %ctrl_val.0 = select i1 %cmp13, i32 1283, i32 %or19
  %and20 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond22 = select i1 %tobool21.not, i32 8, i32 24
  %and24 = lshr i32 %10, 4
  %21 = and i32 %and24, 32
  %or23 = or i32 %cond22, %21
  %22 = or i32 %or23, %ctrl_val.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool30.not = icmp sgt i32 %10, -1
  br i1 %tobool30.not, label %if.else39, label %if.then31

if.then31:                                        ; preds = %entry
  %or32 = or i32 %22, 2048
  %rts = getelementptr inbounds %struct.asc_port, ptr %port, i32 0, i32 1
  %23 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rts, align 4
  %tobool33.not = icmp eq ptr %24, null
  br i1 %tobool33.not, label %if.then31.if.end59_crit_edge, label %if.then34

if.then31.if.end59_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void @devm_gpiod_put(ptr noundef %26, ptr noundef nonnull %24) #9
  %27 = ptrtoint ptr %rts to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rts, align 4
  %pinctrl = getelementptr inbounds %struct.asc_port, ptr %port, i32 0, i32 3
  %28 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pinctrl, align 4
  %states = getelementptr inbounds %struct.asc_port, ptr %port, i32 0, i32 4
  %30 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %states, align 4
  %call37 = tail call i32 @pinctrl_select_state(ptr noundef %29, ptr noundef %31) #9
  br label %if.end59

if.else39:                                        ; preds = %entry
  %rts40 = getelementptr inbounds %struct.asc_port, ptr %port, i32 0, i32 1
  %32 = ptrtoint ptr %rts40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rts40, align 4
  %tobool41.not = icmp eq ptr %33, null
  br i1 %tobool41.not, label %land.lhs.true, label %if.else39.if.end59_crit_edge

if.else39.if.end59_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true:                                    ; preds = %if.else39
  %arrayidx43 = getelementptr %struct.asc_port, ptr %port, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx43, align 4
  %tobool44.not = icmp eq ptr %35, null
  br i1 %tobool44.not, label %land.lhs.true.if.end59_crit_edge, label %if.then45

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then45:                                        ; preds = %land.lhs.true
  %pinctrl46 = getelementptr inbounds %struct.asc_port, ptr %port, i32 0, i32 3
  %36 = ptrtoint ptr %pinctrl46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pinctrl46, align 4
  %call49 = tail call i32 @pinctrl_select_state(ptr noundef %37, ptr noundef nonnull %35) #9
  %dev50 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %38 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev50, align 4
  %call51 = tail call ptr @devm_gpiod_get(ptr noundef %39, ptr noundef nonnull @.str.18, i32 noundef 3) #9
  %cmp.i = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45.if.end59_crit_edge, label %if.then53

if.then45.if.end59_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then53:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev50, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call55 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call51, ptr noundef %45) #9
  %46 = ptrtoint ptr %rts40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call51, ptr %rts40, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.then45.if.end59_crit_edge, %land.lhs.true.if.end59_crit_edge, %if.else39.if.end59_crit_edge, %if.then34, %if.then31.if.end59_crit_edge
  %ctrl_val.2 = phi i32 [ %or32, %if.then34 ], [ %or32, %if.then31.if.end59_crit_edge ], [ %22, %if.else39.if.end59_crit_edge ], [ %22, %if.then45.if.end59_crit_edge ], [ %22, %if.then53 ], [ %22, %land.lhs.true.if.end59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200, i32 %call3)
  %cmp60 = icmp ult i32 %call3, 19200
  br i1 %cmp60, label %land.lhs.true62, label %if.end59.if.else70_crit_edge

if.end59.if.else70_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else70

land.lhs.true62:                                  ; preds = %if.end59
  %47 = ptrtoint ptr %hw_flow_control to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load63 = load i8, ptr %hw_flow_control, align 4
  %48 = and i8 %bf.load63, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool66.not = icmp eq i8 %48, 0
  br i1 %tobool66.not, label %if.then67, label %land.lhs.true62.if.else70_crit_edge

land.lhs.true62.if.else70_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else70

if.then67:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %uartclk, align 4
  %mul = shl nuw nsw i32 %call3, 4
  %div69 = udiv i32 %50, %mul
  %51 = tail call i32 @llvm.bswap.i32(i32 %div69) #9
  %52 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #9, !srcloc !81
  br label %if.end272

if.else70:                                        ; preds = %land.lhs.true62.if.else70_crit_edge, %if.end59.if.else70_crit_edge
  %conv71 = zext i32 %call3 to i64
  %mul72 = shl nuw nsw i64 %conv71, 16
  %54 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %uartclk, align 4
  %div74470 = lshr i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call3)
  %cmp254 = icmp ult i32 %call3, 65536
  br i1 %cmp254, label %if.then258, label %if.else264, !prof !82

if.then258:                                       ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #11
  %conv259 = trunc i64 %mul72 to i32
  %div262 = udiv i32 %conv259, %div74470
  br label %if.end268

if.else264:                                       ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #11
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div74470, i64 %mul72) #13, !srcloc !83
  %asmresult1.i = extractvalue { i64, i64 } %56, 1
  %extract.t509 = trunc i64 %asmresult1.i to i32
  br label %if.end268

if.end268:                                        ; preds = %if.else264, %if.then258
  %dividend.0.off0 = phi i32 [ %div262, %if.then258 ], [ %extract.t509, %if.else264 ]
  %57 = tail call i32 @llvm.bswap.i32(i32 %dividend.0.off0) #9
  %58 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #9, !srcloc !81
  %or271 = or i32 %ctrl_val.2, 4096
  br label %if.end272

if.end272:                                        ; preds = %if.end268, %if.then67
  %ctrl_val.3 = phi i32 [ %or271, %if.end268 ], [ %ctrl_val.2, %if.then67 ]
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %10, i32 noundef %call3) #9
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %60 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 262144, ptr %read_status_mask, align 4
  %61 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %termios, align 4
  %and274 = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  %spec.store.select = select i1 %tobool275.not, i32 262144, i32 262912
  %63 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %64 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %termios, align 4
  %and282 = and i32 %65, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282)
  %tobool283.not = icmp eq i32 %and282, 0
  br i1 %tobool283.not, label %if.end272.if.end288_crit_edge, label %if.then284

if.end272.if.end288_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end288

if.then284:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #11
  %or287 = or i32 %spec.store.select, 131072
  %66 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or287, ptr %read_status_mask, align 4
  br label %if.end288

if.end288:                                        ; preds = %if.then284, %if.end272.if.end288_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %67 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %ignore_status_mask, align 4
  %68 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %termios, align 4
  %and291 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  %spec.store.select472 = select i1 %tobool292.not, i32 0, i32 768
  %70 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.store.select472, ptr %ignore_status_mask, align 4
  %71 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %termios, align 4
  %and299 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299)
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %if.end288.if.end313_crit_edge, label %if.then301

if.end288.if.end313_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end313

if.then301:                                       ; preds = %if.end288
  %or304 = or i32 %spec.store.select472, 131072
  %73 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or304, ptr %ignore_status_mask, align 4
  %74 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %termios, align 4
  %and306 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306)
  %tobool307.not = icmp eq i32 %and306, 0
  br i1 %tobool307.not, label %if.then301.if.end313_crit_edge, label %if.then308

if.then301.if.end313_crit_edge:                   ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end313

if.then308:                                       ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #11
  %or311 = or i32 %spec.store.select472, 393216
  %76 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or311, ptr %ignore_status_mask, align 4
  br label %if.end313

if.end313:                                        ; preds = %if.then308, %if.then301.if.end313_crit_edge, %if.end288.if.end313_crit_edge
  %77 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %c_cflag, align 4
  %and315 = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315)
  %tobool316.not = icmp eq i32 %and315, 0
  br i1 %tobool316.not, label %if.then317, label %if.end313.if.end321_crit_edge

if.end313.if.end321_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end321

if.then317:                                       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ignore_status_mask, align 4
  %or320 = or i32 %80, 65536
  store i32 %or320, ptr %ignore_status_mask, align 4
  br label %if.end321

if.end321:                                        ; preds = %if.then317, %if.end313.if.end321_crit_edge
  %81 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i, align 4
  %add.ptr.i483 = getelementptr i8, ptr %82, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i483, i32 335544320) #9, !srcloc !81
  %or322 = or i32 %ctrl_val.3, 128
  %83 = tail call i32 @llvm.bswap.i32(i32 %or322) #9
  %84 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase.i, align 4
  %add.ptr.i485 = getelementptr i8, ptr %85, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i485, i32 %83) #9, !srcloc !81
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asc_pm(ptr noundef %port, i32 noundef %state, i32 noundef %oldstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %do.body3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %clk = getelementptr inbounds %struct.asc_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call i32 @clk_enable(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.sw.epilog.sink.split_crit_edge

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !80
  %6 = and i32 %5, 2147483647
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %6) #9, !srcloc !81
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call5) #9
  %clk10 = getelementptr inbounds %struct.asc_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %clk10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk10, align 4
  tail call void @clk_disable(ptr noundef %10) #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.body3, %if.end.i.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %10, %do.body3 ], [ %2, %if.end.i.sw.epilog.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @asc_type(ptr nocapture noundef readonly %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %1)
  %cmp = icmp eq i32 %1, 105
  %cond = select i1 %cmp, ptr @.str, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @asc_release_port(ptr nocapture noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @asc_request_port(ptr nocapture noundef readnone %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @asc_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 105, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @asc_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readnone %ser) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asc_put_poll_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #9, !srcloc !80
  %3 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not7 = icmp eq i32 %3, 0
  br i1 %tobool.not7, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !85
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !80
  %7 = and i32 %6, 67108864
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %conv = zext i8 %c to i32
  %8 = shl nuw i32 %conv, 24
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #9, !srcloc !81
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc_get_poll_char(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !80
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #9, !srcloc !80
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ 16711680, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc_interrupt(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %ptr) #9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !80
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 30
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !80
  %9 = lshr i32 %8, 24
  %and.i = and i32 %9, 7
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 20
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  %call3.i = tail call ptr @irq_get_irq_data(i32 noundef %11) #9
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call3.i, i32 0, i32 3
  %12 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and.i.i = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.if.end6.i_crit_edge, label %if.then5.i

if.then.if.end6.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tty.i, align 4
  %dev.i = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %19, i32 noundef 0, i1 noundef zeroext false) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.then.if.end6.i_crit_edge
  %20 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i, align 4
  %add.ptr.i102117.i = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102117.i) #9, !srcloc !80
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %and8118.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8118.i)
  %tobool.not119.i = icmp eq i32 %and8118.i, 0
  br i1 %tobool.not119.i, label %if.end6.i.asc_receive_chars.exit_crit_edge, label %while.body.lr.ph.i

if.end6.i.asc_receive_chars.exit_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asc_receive_chars.exit

while.body.lr.ph.i:                               ; preds = %if.end6.i
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 31, i32 4
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 31, i32 6
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 31, i32 9
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 17
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 48
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 41
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 46
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 33
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 31, i32 8
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 31, i32 7
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %ptr, i32 0, i32 28
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %24 = phi i32 [ %23, %while.body.lr.ph.i ], [ %72, %while.cond.backedge.i.while.body.i_crit_edge ]
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104.i) #9, !srcloc !80
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %or.i = or i32 %28, 65536
  %29 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %and10.i = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %and13.i = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %or.cond.i = select i1 %tobool11.not.i, i1 %tobool14.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false15.i, label %while.body.i.if.then19.i_crit_edge

while.body.i.if.then19.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i

lor.lhs.false15.i:                                ; preds = %while.body.i
  %.fr.i = freeze i32 %28
  %and16.i = and i32 %.fr.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %lor.lhs.false15.i.if.end65.i_crit_edge, label %switch.early.test.i

lor.lhs.false15.i.if.end65.i_crit_edge:           ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

switch.early.test.i:                              ; preds = %lor.lhs.false15.i
  %31 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and.i, label %switch.early.test.i.if.then19.i_crit_edge [
    i32 7, label %switch.early.test.i.if.end65.i_crit_edge
    i32 1, label %switch.early.test.i.if.end65.i_crit_edge17
  ]

switch.early.test.i.if.end65.i_crit_edge17:       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

switch.early.test.i.if.end65.i_crit_edge:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

switch.early.test.i.if.then19.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i

if.then19.i:                                      ; preds = %switch.early.test.i.if.then19.i_crit_edge, %while.body.i.if.then19.i_crit_edge
  br i1 %tobool14.not.i, label %if.else35.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 66048, i32 %or.i)
  %cmp23.i = icmp eq i32 %or.i, 66048
  br i1 %cmp23.i, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %if.then22.i
  %32 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %brk.i, align 4
  %inc26.i = add i32 %33, 1
  store i32 %inc26.i, ptr %brk.i, align 4
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state.i, align 4
  %36 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.then24.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then24.i.if.end.i.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %37(ptr noundef %ptr) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then24.i.if.end.i.i_crit_edge
  %38 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool3.not.i.i = icmp eq i8 %39, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %40 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %41, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %43 to i32
  %44 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv7.i.i)
  %cmp.i.i = icmp eq i32 %45, %conv7.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.i_crit_edge

land.lhs.true5.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %46 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool10.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool10.not.i.i, label %uart_handle_break.exit.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %land.lhs.true5.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  %49 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i.i, align 4
  %and.i105.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105.i)
  %tobool16.not.i.i = icmp eq i32 %and.i105.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end42.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end42.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %35, i32 0, i32 1
  %51 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tty.i.i, align 4
  tail call void @do_SAK(ptr noundef %52) #9
  br label %if.end42.i

uart_handle_break.exit.i:                         ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %53, 500
  %54 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i.i, ptr %sysrq.i.i, align 4
  br label %while.cond.backedge.i

if.else.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %frame.i, align 4
  %inc33.i = add i32 %56, 1
  store i32 %inc33.i, ptr %frame.i, align 4
  br label %if.end42.i

if.else35.i:                                      ; preds = %if.then19.i
  %and36.i = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.else35.i.if.end42.i_crit_edge, label %if.then38.i

if.else35.i.if.end42.i_crit_edge:                 ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %parity.i, align 4
  %inc40.i = add i32 %58, 1
  store i32 %inc40.i, ptr %parity.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.else35.i.if.end42.i_crit_edge, %if.else.i, %if.then17.i.i, %if.end15.i.i.if.end42.i_crit_edge
  %c.0.i = phi i32 [ %or.i, %if.else.i ], [ %or.i, %if.then38.i ], [ %or.i, %if.else35.i.if.end42.i_crit_edge ], [ 197120, %if.then17.i.i ], [ 197120, %if.end15.i.i.if.end42.i_crit_edge ]
  br i1 %tobool11.not.i, label %if.end42.i.if.end49.i_crit_edge, label %if.then45.i

if.end42.i.if.end49.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %overrun.i, align 4
  %inc47.i = add i32 %60, 1
  store i32 %inc47.i, ptr %overrun.i, align 4
  %or48.i = or i32 %c.0.i, 262144
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then45.i, %if.end42.i.if.end49.i_crit_edge
  %c.1.i = phi i32 [ %or48.i, %if.then45.i ], [ %c.0.i, %if.end42.i.if.end49.i_crit_edge ]
  %61 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %read_status_mask.i, align 4
  %and50.i = and i32 %62, %c.1.i
  %and51.i = and i32 %and50.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.else54.i, label %if.end49.i.if.end65.i_crit_edge

if.end49.i.if.end65.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.else54.i:                                      ; preds = %if.end49.i
  %and55.i = and i32 %and50.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.else58.i, label %if.else54.i.if.end65.i_crit_edge

if.else54.i.if.end65.i_crit_edge:                 ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.else58.i:                                      ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #11
  %and59.i = lshr i32 %and50.i, 8
  %63 = and i32 %and59.i, 2
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else58.i, %if.else54.i.if.end65.i_crit_edge, %if.end49.i.if.end65.i_crit_edge, %switch.early.test.i.if.end65.i_crit_edge, %switch.early.test.i.if.end65.i_crit_edge17, %lor.lhs.false15.i.if.end65.i_crit_edge
  %c.2.i = phi i32 [ %or.i, %switch.early.test.i.if.end65.i_crit_edge ], [ %and50.i, %if.end49.i.if.end65.i_crit_edge ], [ %and50.i, %if.else54.i.if.end65.i_crit_edge ], [ %and50.i, %if.else58.i ], [ %or.i, %lor.lhs.false15.i.if.end65.i_crit_edge ], [ %or.i, %switch.early.test.i.if.end65.i_crit_edge17 ]
  %flag.0.i = phi i32 [ 0, %switch.early.test.i.if.end65.i_crit_edge ], [ 1, %if.end49.i.if.end65.i_crit_edge ], [ 3, %if.else54.i.if.end65.i_crit_edge ], [ %63, %if.else58.i ], [ 0, %lor.lhs.false15.i.if.end65.i_crit_edge ], [ 0, %switch.early.test.i.if.end65.i_crit_edge17 ]
  %and66.i = and i32 %c.2.i, 255
  %64 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i107.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i107.i, label %if.end65.i.if.end70.i_crit_edge, label %if.end.i108.i

if.end65.i.if.end70.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i

if.end.i108.i:                                    ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool1.not.i.i = icmp eq i32 %and66.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i108.i.uart_handle_sysrq_char.exit.thread122.i_crit_edge, label %land.lhs.true.i110.i

if.end.i108.i.uart_handle_sysrq_char.exit.thread122.i_crit_edge: ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread122.i

land.lhs.true.i110.i:                             ; preds = %if.end.i108.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %66, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i109.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i109.i, label %if.then3.i.i, label %land.lhs.true.i110.i.uart_handle_sysrq_char.exit.thread122.i_crit_edge

land.lhs.true.i110.i.uart_handle_sysrq_char.exit.thread122.i_crit_edge: ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread122.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i110.i
  %call.i.i = tail call i32 @sysrq_mask() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i111.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i111.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %ptr, i32 noundef %and66.i) #9
  br i1 %call8.i.i, label %if.end7.i.i.while.cond.backedge.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread122.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread122.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread122.i

if.end7.i.i.while.cond.backedge.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge.i

uart_handle_sysrq_char.exit.thread122.i:          ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread122.i_crit_edge, %land.lhs.true.i110.i.uart_handle_sysrq_char.exit.thread122.i_crit_edge, %if.end.i108.i.uart_handle_sysrq_char.exit.thread122.i_crit_edge
  %67 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end70.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @handle_sysrq(i32 noundef %and66.i) #9
  %68 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %while.cond.backedge.i

if.end70.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread122.i, %if.end65.i.if.end70.i_crit_edge
  tail call void @uart_insert_char(ptr noundef %ptr, i32 noundef %c.2.i, i32 noundef 262144, i32 noundef %and66.i, i32 noundef %flag.0.i) #9
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end70.i, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.while.cond.backedge.i_crit_edge, %uart_handle_break.exit.i
  %69 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %70, i32 20
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102.i) #9, !srcloc !80
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #9
  %and8.i = and i32 %72, 1
  %tobool.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.asc_receive_chars.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.backedge.i.asc_receive_chars.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asc_receive_chars.exit

asc_receive_chars.exit:                           ; preds = %while.cond.backedge.i.asc_receive_chars.exit_crit_edge, %if.end6.i.asc_receive_chars.exit_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %asc_receive_chars.exit, %entry.if.end_crit_edge
  %and1 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %73 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %74, i32 16
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #9, !srcloc !80
  %76 = and i32 %75, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool5.not = icmp eq i32 %76, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %if.then6

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @asc_transmit_chars(ptr noundef %ptr)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ptr) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asc_transmit_chars(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !80
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %6 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifosize.i, align 4
  %div7.i = lshr i32 %7, 1
  br label %asc_hw_txroom.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i = lshr i32 %5, 9
  %and1.lobit.i = and i32 %and1.i, 1
  %8 = xor i32 %and1.lobit.i, 1
  br label %asc_hw_txroom.exit

asc_hw_txroom.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %div7.i, %if.then.i ], [ %8, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp.not, label %asc_hw_txroom.exit.if.end_crit_edge, label %land.lhs.true

asc_hw_txroom.exit.if.end_crit_edge:              ; preds = %asc_hw_txroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %asc_hw_txroom.exit
  %x_char = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %9 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %x_char, align 4
  %12 = shl nuw i32 %conv, 24
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #9, !srcloc !81
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %15 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %tx, align 4
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %18, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i76) #9, !srcloc !80
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %and.i77 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i78 = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i78, label %if.else.i84, label %if.then.i81

if.then.i81:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %fifosize.i79 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %21 = ptrtoint ptr %fifosize.i79 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fifosize.i79, align 4
  %div7.i80 = lshr i32 %22, 1
  br label %if.end

if.else.i84:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i82 = lshr i32 %20, 9
  %and1.lobit.i83 = and i32 %and1.i82, 1
  %23 = xor i32 %and1.lobit.i83, 1
  br label %if.end

if.end:                                           ; preds = %if.else.i84, %if.then.i81, %land.lhs.true.if.end_crit_edge, %asc_hw_txroom.exit.if.end_crit_edge
  %txroom.0 = phi i32 [ %retval.0.i, %land.lhs.true.if.end_crit_edge ], [ 0, %asc_hw_txroom.exit.if.end_crit_edge ], [ %div7.i80, %if.then.i81 ], [ %23, %if.else.i84 ]
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i87 = icmp eq ptr %27, null
  br i1 %tobool.not.i87, label %if.end.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

if.end.uart_tx_stopped.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %if.end
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %27, i32 0, i32 19, i32 1
  %28 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %stopped.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool3.not.i = icmp eq i8 %29, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then8_crit_edge

land.lhs.true.i.if.then8_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %if.end.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %30 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not.i.not = icmp eq i32 %31, 0
  br i1 %tobool4.not.i.not, label %if.end9, label %uart_tx_stopped.exit.if.then8_crit_edge

uart_tx_stopped.exit.if.then8_crit_edge:          ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %uart_tx_stopped.exit.if.then8_crit_edge, %land.lhs.true.i.if.then8_crit_edge
  %32 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i90 = getelementptr i8, ptr %33, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i90) #9, !srcloc !80
  %35 = and i32 %34, -67108865
  %36 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %35) #9, !srcloc !81
  %38 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %39, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #9, !srcloc !80
  br label %cleanup

if.end9:                                          ; preds = %uart_tx_stopped.exit
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp10 = icmp eq i32 %42, %44
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i92 = getelementptr i8, ptr %46, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92) #9, !srcloc !80
  %48 = and i32 %47, -67108865
  %49 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i5.i93 = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i93, i32 %48) #9, !srcloc !81
  %51 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i7.i94 = getelementptr i8, ptr %52, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i94) #9, !srcloc !80
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txroom.0)
  %cmp14 = icmp eq i32 %txroom.0, 0
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %do.body.preheader

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader:                                ; preds = %if.end13
  %tx23 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %do.body.preheader
  %txroom.1 = phi i32 [ %dec, %land.rhs.do.body_crit_edge ], [ %txroom.0, %do.body.preheader ]
  %54 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xmit1, align 4
  %56 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx, align 1
  %add = add i32 %57, 1
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %conv21 = zext i8 %59 to i32
  %60 = shl nuw i32 %conv21, 24
  %61 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %60) #9, !srcloc !81
  %63 = ptrtoint ptr %tx23 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx23, align 4
  %inc24 = add i32 %64, 1
  store i32 %inc24, ptr %tx23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %txroom.1)
  %cmp25 = icmp sgt i32 %txroom.1, 1
  br i1 %cmp25, label %land.rhs, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %txroom.1, -1
  %65 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %head, align 4
  %67 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tail, align 4
  %cmp29.not = icmp eq i32 %66, %68
  br i1 %cmp29.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  %69 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %head, align 4
  %71 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tail, align 4
  %sub = sub i32 %70, %72
  %and33 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %cmp34 = icmp eq i32 %and33, 0
  br i1 %cmp34, label %if.then36, label %do.end.if.end37_crit_edge

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_write_wakeup(ptr noundef %port) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %do.end.if.end37_crit_edge
  %73 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %head, align 4
  %75 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp40 = icmp eq i32 %74, %76
  br i1 %cmp40, label %if.then42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %78, i32 16
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i98) #9, !srcloc !80
  %80 = and i32 %79, -67108865
  %81 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i5.i99 = getelementptr i8, ptr %82, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i99, i32 %80) #9, !srcloc !81
  %83 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i7.i100 = getelementptr i8, ptr %84, i32 16
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i100) #9, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end37.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then12, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc_serial_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @asc_uart_driver, ptr noundef %1) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc_serial_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @asc_uart_driver, ptr noundef %1) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asc_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %idxprom
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 46
  %2 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end69_crit_edge

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %4 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %do.body55, label %do.body4

do.body4:                                         ; preds = %if.else
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !87
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not = icmp eq i32 %and.i, 0
  br i1 %tobool13.not, label %do.end16, label %do.end16.thread

do.end16:                                         ; preds = %do.body4
  tail call void @trace_hardirqs_off() #9
  %call19 = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then30, label %do.end16.if.end69_crit_edge

do.end16.if.end69_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

do.end16.thread:                                  ; preds = %do.body4
  %call19101 = tail call i32 @_raw_spin_trylock(ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19101)
  %tobool20.not102 = icmp eq i32 %call19101, 0
  br i1 %tobool20.not102, label %do.end16.thread.do.body32_crit_edge, label %do.end16.thread.if.end69_crit_edge

do.end16.thread.if.end69_crit_edge:               ; preds = %do.end16.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

do.end16.thread.do.body32_crit_edge:              ; preds = %do.end16.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.then30:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body32

do.body32:                                        ; preds = %if.then30, %do.end16.thread.do.body32_crit_edge
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !88
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool40.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool40.not, label %if.then44, label %do.body32.do.end47_crit_edge, !prof !79

do.body32.do.end47_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body32.do.end47_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #9, !srcloc !89
  br label %if.end69

do.body55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #9
  br label %if.end69

if.end69:                                         ; preds = %do.body55, %do.end47, %do.end16.thread.if.end69_crit_edge, %do.end16.if.end69_crit_edge, %entry.if.end69_crit_edge
  %tobool77.not = phi i1 [ false, %do.end16.thread.if.end69_crit_edge ], [ true, %do.end47 ], [ false, %do.end16.if.end69_crit_edge ], [ true, %entry.if.end69_crit_edge ], [ false, %do.body55 ]
  %flags.0 = phi i32 [ %5, %do.end16.thread.if.end69_crit_edge ], [ %5, %do.end47 ], [ %5, %do.end16.if.end69_crit_edge ], [ -1, %entry.if.end69_crit_edge ], [ %call63, %do.body55 ]
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !80
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 0) #9, !srcloc !81
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #9, !srcloc !80
  tail call void @uart_console_write(ptr noundef %arrayidx, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @asc_console_putchar) #9
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end69
  %dec103 = phi i32 [ 999999, %if.end69 ], [ %dec, %while.body.land.rhs_crit_edge ]
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !80
  %18 = and i32 %17, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool74.not = icmp eq i32 %18, 0
  br i1 %tobool74.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #9
  %dec = add nsw i32 %dec103, -1
  %tobool72.not = icmp eq i32 %dec, 0
  br i1 %tobool72.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %20 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %9) #9, !srcloc !81
  br i1 %tobool77.not, label %while.end.if.end80_crit_edge, label %if.then78

while.end.if.end80_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then78:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %flags.0) #9
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %while.end.if.end80_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc_console_setup(ptr noundef %co, ptr noundef %options) #2 align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #9
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 115200, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #9
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #9
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #9
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %5)
  %cmp = icmp sgt i16 %5, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i16 %5 to i32
  %arrayidx = getelementptr [8 x %struct.asc_port], ptr @asc_ports, i32 0, i32 %conv
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 43
  %6 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mapbase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 2
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %cmp6 = icmp eq ptr %9, null
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %if.end9.if.end11_crit_edge, label %if.then10

if.end9.if.end11_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end9.if.end11_crit_edge
  %10 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %baud, align 4
  %12 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parity, align 4
  %14 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits, align 4
  %16 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flow, align 4
  %call = call i32 @uart_set_options(ptr noundef %arrayidx, ptr noundef %co, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end11 ], [ -19, %entry.cleanup_crit_edge ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asc_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %dec3 = phi i32 [ 999999, %entry ], [ %dec, %while.body.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !80
  %3 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #9
  %dec = add nsw i32 %dec3, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %5 = tail call i32 @llvm.bswap.i32(i32 %ch) #9
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #9, !srcloc !81
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_st_asc__228_1000_asc_init6, !1, !"__initcall__kmod_st_asc__228_1000_asc_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/st-asc.c", i32 1000, i32 1}
!2 = !{ptr @__exitcall_asc_exit, !3, !"__exitcall_asc_exit", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/st-asc.c", i32 1001, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias229, !5, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/st-asc.c", i32 1003, i32 1}
!6 = !{ptr @__UNIQUE_ID_author230, !7, !"__UNIQUE_ID_author230", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/st-asc.c", i32 1004, i32 1}
!8 = !{ptr @__UNIQUE_ID_description231, !9, !"__UNIQUE_ID_description231", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/st-asc.c", i32 1005, i32 1}
!10 = !{ptr @__UNIQUE_ID_file232, !11, !"__UNIQUE_ID_file232", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/st-asc.c", i32 1006, i32 1}
!12 = !{ptr @__UNIQUE_ID_license233, !11, !"__UNIQUE_ID_license233", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/st-asc.c", i32 969, i32 11}
!15 = !{ptr @asc_serial_driver, !16, !"asc_serial_driver", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/st-asc.c", i32 965, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/st-asc.c", i32 780, i32 27}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/st-asc.c", i32 782, i32 28}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/st-asc.c", i32 787, i32 6}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/st-asc.c", i32 791, i32 8}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/st-asc.c", i32 792, i32 54}
!27 = !{ptr @asc_ports, !28, !"asc_ports", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/st-asc.c", i32 46, i32 24}
!29 = !{ptr @asc_init_port.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/st-asc.c", i32 735, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/tty/serial/st-asc.c", i32 750, i32 3}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @asc_init_port._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @asc_init_port._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/st-asc.c", i32 755, i32 42}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/st-asc.c", i32 758, i32 3}
!43 = !{ptr @asc_init_port._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @asc_init_port._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/st-asc.c", i32 765, i32 42}
!47 = !{ptr @asc_uart_ops, !48, !"asc_uart_ops", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/st-asc.c", i32 691, i32 30}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/st-asc.c", i32 460, i32 3}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @asc_startup._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @asc_startup._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/st-asc.c", i32 568, i32 38}
!56 = !{ptr @asc_match, !57, !"asc_match", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/st-asc.c", i32 800, i32 34}
!58 = !{ptr @asc_serial_pm_ops, !59, !"asc_serial_pm_ops", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/st-asc.c", i32 961, i32 32}
!60 = !{ptr @asc_uart_driver, !61, !"asc_uart_driver", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/st-asc.c", i32 951, i32 27}
!62 = !{ptr @asc_console, !63, !"asc_console", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/st-asc.c", i32 935, i32 23}
!64 = !{ptr @asc_init.banner, !65, !"banner", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/st-asc.c", i32 978, i32 20}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/st-asc.c", i32 981, i32 2}
!68 = !{ptr @asc_init._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @asc_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 5590290}
!81 = !{i64 5589872}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2148208977, i64 2148209257, i64 2148209591, i64 2148209925}
!84 = !{i64 2154258116}
!85 = !{i64 2154257958}
!86 = !{i8 0, i8 2}
!87 = !{i64 766253, i64 766314}
!88 = !{i64 768985}
!89 = !{i64 769270}
