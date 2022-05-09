; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/fsl_linflexuart.c_pt.bc'
source_filename = "../drivers/tty/serial/fsl_linflexuart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__UNIQUE_ID___earlycon_linflex227 = internal constant %struct.earlycon_id { [15 x i8] c"linflex\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,s32v234-linflexuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @linflex_early_console_setup }, section "__earlycon_table", align 4
@linflex_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @linflex_probe, ptr @linflex_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @linflex_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @linflex_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@linflex_reg = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.1, ptr @.str.12, i32 0, i32 0, i32 4, ptr @linflex_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_fsl_linflexuart__228_929_linflex_serial_init6 = internal global ptr @linflex_serial_init, section ".initcall6.init", align 4
@__exitcall_linflex_serial_exit = internal global ptr @linflex_serial_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [66 x i8] c"fsl_linflexuart.description=Freescale LINFlexD serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [56 x i8] c"fsl_linflexuart.file=drivers/tty/serial/fsl_linflexuart\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [31 x i8] c"fsl_linflexuart.license=GPL v2\00", section ".modinfo", align 1
@earlycon_port = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@linflex_earlycon_same_instance = internal global { i1, [31 x i8] } zeroinitializer, align 32
@init_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@during_init = internal global { i1, [31 x i8] } zeroinitializer, align 32
@earlycon_buf.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@earlycon_buf.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@earlycon_buf.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl-linflexuart\00", [16 x i8] zeroinitializer }, align 32
@linflex_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,s32v234-linflexuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@linflex_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @linflex_suspend, ptr @linflex_resume, ptr @linflex_suspend, ptr @linflex_resume, ptr @linflex_suspend, ptr @linflex_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@linflex_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 832, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get alias id, errno %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"linflex_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/tty/serial/fsl_linflexuart.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@linflex_probe._entry_ptr = internal global ptr @linflex_probe._entry, section ".printk_index", align 4
@linflex_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 837, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"driver limited to %d serial ports\0A\00", [61 x i8] zeroinitializer }, align 32
@linflex_probe._entry_ptr.10 = internal global ptr @linflex_probe._entry.8, section ".printk_index", align 4
@linflex_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @linflex_tx_empty, ptr @linflex_set_mctrl, ptr @linflex_get_mctrl, ptr @linflex_stop_tx, ptr @linflex_start_tx, ptr null, ptr null, ptr null, ptr @linflex_stop_rx, ptr null, ptr @linflex_break_ctl, ptr @linflex_startup, ptr @linflex_shutdown, ptr null, ptr @linflex_set_termios, ptr null, ptr null, ptr @linflex_type, ptr @linflex_release_port, ptr @linflex_request_port, ptr @linflex_config_port, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@linflex_ports = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FSL_LINFLEX\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyLF\00", [26 x i8] zeroinitializer }, align 32
@linflex_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyLF\00\00\00\00\00\00\00\00\00\00\00", ptr @linflex_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @linflex_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @linflex_reg, ptr null }, [60 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 48]
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"linflex_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 898, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"linflex_reg\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 811, i32 27 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"earlycon_port\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 132, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant [31 x i8] c"linflex_earlycon_same_instance\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"init_lock\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [12 x i8] c"during_init\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"earlycon_buf.0\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"earlycon_buf.1\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"earlycon_buf.2\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 134, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 902, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"linflex_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 123, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"linflex_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 896, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 830, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 832, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 836, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"linflex_pops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 548, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"linflex_ports\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 565, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 528, i32 9 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 814, i32 14 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"linflex_console\00", align 1
@___asan_gen_.82 = private constant [40 x i8] c"../drivers/tty/serial/fsl_linflexuart.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 773, i32 23 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID___earlycon_linflex227, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_linflex_serial_exit, ptr @__initcall__kmod_fsl_linflexuart__228_929_linflex_serial_init6, ptr @linflex_probe._entry, ptr @linflex_probe._entry.8, ptr @linflex_probe._entry_ptr, ptr @linflex_probe._entry_ptr.10, ptr @linflex_serial_exit, ptr @linflex_driver, ptr @linflex_reg, ptr @earlycon_port, ptr @linflex_earlycon_same_instance, ptr @init_lock, ptr @during_init, ptr @earlycon_buf.0, ptr @earlycon_buf.1, ptr @earlycon_buf.2, ptr @.str, ptr @.str.1, ptr @linflex_dt_ids, ptr @linflex_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @linflex_pops, ptr @linflex_ports, ptr @.str.11, ptr @.str.12, ptr @linflex_console], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linflex_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linflex_reg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @earlycon_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linflex_earlycon_same_instance to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @during_init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @earlycon_buf.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @earlycon_buf.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @earlycon_buf.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linflex_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linflex_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linflex_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linflex_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linflex_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linflex_ports to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linflex_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @linflex_early_console_setup(ptr noundef %device, ptr nocapture noundef readnone %options) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %port = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @linflex_earlycon_write, ptr %write, align 4
  store ptr %port, ptr @earlycon_port, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @linflex_serial_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @linflex_driver) #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @linflex_reg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @linflex_serial_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @linflex_reg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @linflex_driver, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @uart_unregister_driver(ptr noundef nonnull @linflex_reg) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linflex_earlycon_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @linflex_earlycon_putchar) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linflex_earlycon_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b39 = load i1, ptr @linflex_earlycon_same_instance, align 1
  br i1 %.b39, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @linflex_console_putchar(ptr noundef %port, i32 noundef %ch)
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @init_lock) #12
  %.b3840 = load i1, ptr @during_init, align 1
  br i1 %.b3840, label %if.end7, label %outside_init

if.end7:                                          ; preds = %do.body1
  %0 = load i32, ptr @earlycon_buf.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %0)
  %cmp8 = icmp ugt i32 %0, 131071
  br i1 %cmp8, label %if.end7.init_release_crit_edge, label %if.end11

if.end7.init_release_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_release

if.end11:                                         ; preds = %if.end7
  %1 = load i32, ptr @earlycon_buf.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool12.not = icmp eq i32 %1, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 8) #15
  store ptr %call7.i, ptr @earlycon_buf.0, align 4
  %tobool15.not = icmp eq ptr %call7.i, null
  %cond = select i1 %tobool15.not, i32 0, i32 8
  br label %if.end25.sink.split

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp16 = icmp eq i32 %0, %1
  br i1 %cmp16, label %if.then18, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then18:                                        ; preds = %if.else
  %3 = load ptr, ptr @earlycon_buf.0, align 4
  %shl = shl nuw nsw i32 %0, 1
  %call19 = tail call noalias ptr @krealloc(ptr noundef %3, i32 noundef %shl, i32 noundef 2592) #16
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then18.if.end25_crit_edge, label %if.then21

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call19, ptr @earlycon_buf.0, align 4
  %4 = load i32, ptr @earlycon_buf.2, align 4
  %shl22 = shl i32 %4, 1
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.then21, %if.then13
  %shl22.sink = phi i32 [ %shl22, %if.then21 ], [ %cond, %if.then13 ]
  store i32 %shl22.sink, ptr @earlycon_buf.2, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.then18.if.end25_crit_edge, %if.else.if.end25_crit_edge
  %5 = load i32, ptr @earlycon_buf.1, align 4
  %6 = load i32, ptr @earlycon_buf.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp26 = icmp ult i32 %5, %6
  br i1 %cmp26, label %if.then28, label %if.end25.init_release_crit_edge

if.end25.init_release_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_release

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %conv29 = trunc i32 %ch to i8
  %7 = load ptr, ptr @earlycon_buf.0, align 4
  %inc = add nuw i32 %5, 1
  store i32 %inc, ptr @earlycon_buf.1, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv29, ptr %arrayidx, align 1
  br label %init_release

outside_init:                                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @linflex_console_putchar(ptr noundef %port, i32 noundef %ch)
  br label %init_release

init_release:                                     ; preds = %outside_init, %if.then28, %if.end25.init_release_crit_edge, %if.end7.init_release_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @init_lock, i32 noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %init_release, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linflex_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !67
  tail call void @arm_heavy_mb() #12
  %conv = trunc i32 %ch to i8
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3, i8 %conv) #12, !srcloc !68
  %5 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.while.cond_crit_edge, label %entry.while.cond13_crit_edge

entry.while.cond13_crit_edge:                     ; preds = %entry
  br label %while.cond13

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry.while.cond_crit_edge
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !69
  %9 = and i32 %8, 33554432
  %cmp.not.not = icmp eq i32 %9, 0
  br i1 %cmp.not.not, label %while.cond.while.cond_crit_edge, label %while.cond.if.end_crit_edge

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.cond13:                                     ; preds = %while.cond13.while.cond13_crit_edge, %entry.while.cond13_crit_edge
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !70
  %13 = and i32 %12, 33554432
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %while.cond13.if.end_crit_edge, label %while.cond13.while.cond13_crit_edge

while.cond13.while.cond13_crit_edge:              ; preds = %while.cond13
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond13

while.cond13.if.end_crit_edge:                    ; preds = %while.cond13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %while.cond13.if.end_crit_edge, %while.cond.if.end_crit_edge
  br i1 %tobool.not, label %do.body28, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.body28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !71
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr34 = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !72
  %17 = or i32 %16, 33554432
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr39 = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %17) #12, !srcloc !73
  br label %if.end40

if.end40:                                         ; preds = %do.body28, %if.end.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linflex_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 360, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call2) #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2)
  %cmp6 = icmp ugt i32 %call2, 3
  br i1 %cmp6, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 4) #17
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %line, align 4
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %3 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call13, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %5 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mapbase, align 4
  %call18 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call13) #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %dev26 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %8 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev26, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 122, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %10 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %iotype, align 2
  %call27 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  %irq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call27, ptr %irq, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @linflex_pops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 33
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 268435456, ptr %flags, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 48
  %14 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %has_sysrq, align 4
  %15 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %line, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @linflex_ports, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call29 = tail call i32 @uart_add_one_port(ptr noundef nonnull @linflex_reg, ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then21, %if.end12.cleanup_crit_edge, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -12, %do.end10 ], [ %7, %if.then21 ], [ %call29, %if.end24 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linflex_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @linflex_reg, ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linflex_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !74
  %3 = lshr i32 %2, 25
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @linflex_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @linflex_get_mctrl(ptr nocapture noundef readnone %port) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linflex_stop_tx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !75
  %3 = and i32 %2, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !76
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #12, !srcloc !73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linflex_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @linflex_transmit_buffer(ptr noundef %port)
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !78
  tail call void @arm_heavy_mb() #12
  %3 = or i32 %2, 33554432
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #12, !srcloc !73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linflex_stop_rx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %3 = and i32 %2, -67108865
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #12, !srcloc !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @linflex_break_ctl(ptr nocapture noundef %port, i32 noundef %break_state) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linflex_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  tail call fastcc void @linflex_setup_watermark(ptr noundef %port)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %3, ptr noundef nonnull @linflex_int, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %port) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linflex_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !81
  %3 = and i32 %2, -100663297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !82
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %3) #12, !srcloc !73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %7, i32 noundef %9, ptr noundef %port) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linflex_set_termios(ptr noundef %port, ptr nocapture noundef %termios, ptr noundef readonly %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, 48
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %and, %cond.true ], [ 48, %entry.cond.end_crit_edge ]
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !83
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !84
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !85
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #12, !srcloc !73
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %cond.end
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !86
  %14 = and i32 %13, 15728640
  %cmp.not = icmp eq i32 %14, 1048576
  br i1 %cmp.not, label %while.cond19.preheader, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.cond19.preheader:                           ; preds = %while.cond
  %15 = tail call i32 @llvm.bswap.i32(i32 %4)
  %c_cflag20 = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %16 = ptrtoint ptr %c_cflag20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %c_cflag20.promoted = load i32, ptr %c_cflag20, align 4
  br label %while.cond19

while.cond19:                                     ; preds = %while.body26, %while.cond19.preheader
  %or30192 = phi i32 [ %or30, %while.body26 ], [ %c_cflag20.promoted, %while.cond19.preheader ]
  %old_csize.0 = phi i32 [ 48, %while.body26 ], [ %cond, %while.cond19.preheader ]
  %and21 = and i32 %or30192, 48
  %17 = zext i32 %and21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and21, label %while.body26 [
    i32 48, label %while.cond19.while.end31_crit_edge
    i32 32, label %while.cond19.while.end31_crit_edge193
  ]

while.cond19.while.end31_crit_edge193:            ; preds = %while.cond19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end31

while.cond19.while.end31_crit_edge:               ; preds = %while.cond19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end31

while.body26:                                     ; preds = %while.cond19
  call void @__sanitizer_cov_trace_pc() #14
  %and28 = and i32 %or30192, -49
  %or30 = or i32 %and28, %old_csize.0
  %18 = ptrtoint ptr %c_cflag20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or30, ptr %c_cflag20, align 4
  br label %while.cond19

while.end31:                                      ; preds = %while.cond19.while.end31_crit_edge, %while.cond19.while.end31_crit_edge193
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and21)
  %cmp34 = icmp eq i32 %and21, 32
  %and36 = and i32 %15, -131
  %spec.select = select i1 %cmp34, i32 %and36, i32 %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and21)
  %cmp39 = icmp eq i32 %and21, 48
  %and42 = or i32 %and36, 2
  %cr.1 = select i1 %cmp39, i32 %and42, i32 %spec.select
  %and45 = and i32 %or30192, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %while.end31.if.end58_crit_edge, label %if.then47

while.end31.if.end58_crit_edge:                   ; preds = %while.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then47:                                        ; preds = %while.end31
  br i1 %cmp39, label %if.then47.if.end56_crit_edge, label %if.then51

if.then47.if.end56_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %or55 = or i32 %or30192, 48
  %19 = ptrtoint ptr %c_cflag20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or55, ptr %c_cflag20, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.then47.if.end56_crit_edge
  %or57 = or i32 %cr.1, 2
  br label %if.end58

if.end58:                                         ; preds = %if.end56, %while.end31.if.end58_crit_edge
  %cr.2 = phi i32 [ %or57, %if.end56 ], [ %cr.1, %while.end31.if.end58_crit_edge ]
  %20 = ptrtoint ptr %c_cflag20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %c_cflag20, align 4
  %and60 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end58.if.end65_crit_edge, label %if.then62

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %and64 = and i32 %21, -65
  %22 = ptrtoint ptr %c_cflag20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and64, ptr %c_cflag20, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end58.if.end65_crit_edge
  %23 = ptrtoint ptr %c_cflag20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %c_cflag20, align 4
  %and67 = and i32 %24, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and67)
  %cmp68 = icmp eq i32 %and67, 32
  br i1 %cmp68, label %if.then69, label %if.end65.if.end72_crit_edge

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %or71 = or i32 %24, 256
  %25 = ptrtoint ptr %c_cflag20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or71, ptr %c_cflag20, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end65.if.end72_crit_edge
  %26 = ptrtoint ptr %c_cflag20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_cflag20, align 4
  %and74 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else86, label %if.then76

if.then76:                                        ; preds = %if.end72
  %and79 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %or77 = and i32 %cr.2, -77
  br i1 %tobool80.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %and83 = or i32 %or77, 12
  br label %do.body90

if.else:                                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %and84 = or i32 %or77, 4
  br label %do.body90

if.else86:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %and87 = and i32 %cr.2, -5
  br label %do.body90

do.body90:                                        ; preds = %if.else86, %if.else, %if.then81
  %cr.3 = phi i32 [ %and83, %if.then81 ], [ %and84, %if.else ], [ %and87, %if.else86 ]
  %call94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %28 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %read_status_mask, align 4
  %29 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %termios, align 4
  %and99 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %spec.store.select = select i1 %tobool100.not, i32 0, i32 15616
  %31 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %32 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %termios, align 4
  %and106 = and i32 %33, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.body90.if.end111_crit_edge, label %if.then108

do.body90.if.end111_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then108:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #14
  %or110 = or i32 %spec.store.select, 256
  %34 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or110, ptr %read_status_mask, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %do.body90.if.end111_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %35 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ignore_status_mask, align 4
  %36 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %termios, align 4
  %and113 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  %spec.store.select190 = select i1 %tobool114.not, i32 0, i32 15360
  %38 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.store.select190, ptr %ignore_status_mask, align 4
  %39 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %termios, align 4
  %and120 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end111.do.body133_crit_edge, label %if.then122

if.end111.do.body133_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body133

if.then122:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 15360, ptr %ignore_status_mask, align 4
  %42 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %termios, align 4
  %and126 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  %spec.store.select191 = select i1 %tobool127.not, i32 15360, i32 15488
  %44 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.store.select191, ptr %ignore_status_mask, align 4
  br label %do.body133

do.body133:                                       ; preds = %if.then122, %if.end111.do.body133_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !87
  tail call void @arm_heavy_mb() #12
  %45 = tail call i32 @llvm.bswap.i32(i32 %cr.3)
  %46 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase, align 4
  %add.ptr137 = getelementptr i8, ptr %47, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 %45) #12, !srcloc !73
  %48 = and i32 %7, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @arm_heavy_mb() #12
  %49 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #12, !srcloc !73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call94) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @linflex_type(ptr nocapture noundef readnone %port) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @linflex_release_port(ptr nocapture noundef %port) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @linflex_request_port(ptr nocapture noundef readnone %port) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @linflex_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 122, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @linflex_transmit_buffer(ptr noundef %sport) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not44 = icmp eq i32 %3, %5
  br i1 %cmp.not44, label %entry.if.end_crit_edge, label %while.body.lr.ph

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body.lr.ph:                                 ; preds = %entry
  %membase = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %tx = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 5
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %5, %while.body.lr.ph ], [ %27, %while.end.while.body_crit_edge ]
  %7 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xmit1, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 %6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %10) #12, !srcloc !68
  br label %while.cond3

while.cond3:                                      ; preds = %while.cond3.while.cond3_crit_edge, %while.body
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #12, !srcloc !65
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !90
  %and = and i32 %16, 2
  %cmp7.not.not = icmp eq i32 %and, 0
  br i1 %cmp7.not.not, label %while.cond3.while.cond3_crit_edge, label %while.end

while.cond3.while.cond3_crit_edge:                ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond3

while.end:                                        ; preds = %while.cond3
  %17 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail, align 4
  %add = add i32 %18, 1
  %and10 = and i32 %add, 4095
  store i32 %and10, ptr %tail, align 4
  %19 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %tx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !91
  tail call void @arm_heavy_mb() #12
  %or = or i32 %16, 2
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %21) #12, !srcloc !73
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %head, align 4
  %26 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail, align 4
  %cmp.not = icmp eq i32 %25, %27
  br i1 %cmp.not, label %while.end.if.end_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %while.end.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @uart_write_wakeup(ptr noundef %sport) #12
  %28 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %head, align 4
  %30 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp24 = icmp eq i32 %29, %31
  br i1 %cmp24, label %if.then25, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !75
  %35 = and i32 %34, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !76
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %35) #12, !srcloc !73
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @linflex_setup_watermark(ptr nocapture noundef readonly %sport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %3 = and i32 %2, -100663297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !93
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #12, !srcloc !73
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  %9 = and i32 %8, -805306369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !95
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %9) #12, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 -1862270976) #12, !srcloc !73
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !97
  %17 = and i32 %16, 15728640
  %cmp.not = icmp eq i32 %17, 1048576
  br i1 %cmp.not, label %do.body30, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

do.body30:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !98
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr34 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 16777216) #12, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !99
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr39 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 855638016) #12, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 -1879048192) #12, !srcloc !73
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr49 = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  %27 = or i32 %26, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase, align 4
  %add.ptr58 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %27) #12, !srcloc !73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linflex_int(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !65
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #12
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !65
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !104
  %and14.i = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool.not15.i = icmp eq i32 %and14.i, 0
  br i1 %tobool.not15.i, label %if.then.linflex_rxint.exit_crit_edge, label %while.body.lr.ph.i

if.then.linflex_rxint.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %linflex_rxint.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %rx16.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %brk30.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %sysrq.i2.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %5, i32 0, i32 8
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %status.016.i = phi i32 [ %9, %while.body.lr.ph.i ], [ %27, %while.cond.backedge.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr12.i = getelementptr i8, ptr %11, i32 60
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i) #12, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !106
  %13 = ptrtoint ptr %rx16.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx16.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %rx16.i, align 4
  %and17.i = and i32 %status.016.i, 15744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %while.body.i.do.body43.i_crit_edge, label %if.then.i

while.body.i.do.body43.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43.i

if.then.i:                                        ; preds = %while.body.i
  %and19.i = and i32 %status.016.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then21.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then21.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %overrun.i, align 4
  %inc23.i = add i32 %16, 1
  store i32 %inc23.i, ptr %overrun.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then21.i, %if.then.i.if.end.i_crit_edge
  %and24.i = and i32 %status.016.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end.i.if.end35.i_crit_edge, label %if.then26.i

if.end.i.if.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool27.not.i = icmp eq i8 %12, 0
  %brk30.frame.i = select i1 %tobool27.not.i, ptr %brk30.i, ptr %frame.i
  %17 = ptrtoint ptr %brk30.frame.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brk30.frame.i, align 4
  %inc31.i = add i32 %18, 1
  store i32 %inc31.i, ptr %brk30.frame.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then26.i, %if.end.i.if.end35.i_crit_edge
  %brk.0.i = phi i1 [ false, %if.end.i.if.end35.i_crit_edge ], [ %tobool27.not.i, %if.then26.i ]
  %and36.i = and i32 %status.016.i, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end35.i.do.body43.i_crit_edge, label %if.then38.i

if.end35.i.do.body43.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %parity.i, align 4
  %inc40.i = add i32 %20, 1
  store i32 %inc40.i, ptr %parity.i, align 4
  br label %do.body43.i

do.body43.i:                                      ; preds = %if.then38.i, %if.end35.i.do.body43.i_crit_edge, %while.body.i.do.body43.i_crit_edge
  %brk.1.off0.i = phi i1 [ %brk.0.i, %if.then38.i ], [ %brk.0.i, %if.end35.i.do.body43.i_crit_edge ], [ false, %while.body.i.do.body43.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !107
  tail call void @arm_heavy_mb() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %status.016.i) #12
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr47.i = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 %21) #12, !srcloc !73
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr51.i = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i) #12, !srcloc !65
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  br i1 %brk.1.off0.i, label %if.then56.i, label %if.else58.i

if.then56.i:                                      ; preds = %do.body43.i
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state.i, align 4
  %30 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.then56.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then56.i.if.end.i.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %31(ptr noundef %dev_id) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then56.i.if.end.i.i_crit_edge
  %32 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool3.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %34 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %35, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %37 to i32
  %38 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv7.i.i)
  %cmp.i.i = icmp eq i32 %39, %conv7.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.i_crit_edge

land.lhs.true5.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %40 = ptrtoint ptr %sysrq.i2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sysrq.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool10.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %42, 500
  %43 = ptrtoint ptr %sysrq.i2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i.i, ptr %sysrq.i2.i, align 4
  br label %while.cond.backedge.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %sysrq.i2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %sysrq.i2.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %land.lhs.true5.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  %45 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.while.cond.backedge.i_crit_edge, label %if.then17.i.i

if.end15.i.i.while.cond.backedge.i_crit_edge:     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %29, i32 0, i32 1
  %47 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tty.i.i, align 4
  tail call void @do_SAK(ptr noundef %48) #12
  br label %while.cond.backedge.i

if.else58.i:                                      ; preds = %do.body43.i
  %conv59.i = zext i8 %12 to i32
  %49 = ptrtoint ptr %sysrq.i2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sysrq.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i3.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i3.i, label %if.else58.i.if.end63.i_crit_edge, label %if.end.i4.i

if.else58.i.if.end63.i_crit_edge:                 ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.i

if.end.i4.i:                                      ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i.i, label %if.end.i4.i.uart_handle_sysrq_char.exit.thread19.i_crit_edge, label %land.lhs.true.i6.i

if.end.i4.i.uart_handle_sysrq_char.exit.thread19.i_crit_edge: ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread19.i

land.lhs.true.i6.i:                               ; preds = %if.end.i4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %51, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i5.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i5.i, label %if.then3.i.i, label %land.lhs.true.i6.i.uart_handle_sysrq_char.exit.thread19.i_crit_edge

land.lhs.true.i6.i.uart_handle_sysrq_char.exit.thread19.i_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread19.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i6.i
  %call.i.i = tail call i32 @sysrq_mask() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i7.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i7.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %conv59.i) #12
  br i1 %call8.i.i, label %if.end7.i.i.while.cond.backedge.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread19.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread19.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread19.i

if.end7.i.i.while.cond.backedge.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i

uart_handle_sysrq_char.exit.thread19.i:           ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread19.i_crit_edge, %land.lhs.true.i6.i.uart_handle_sysrq_char.exit.thread19.i_crit_edge, %if.end.i4.i.uart_handle_sysrq_char.exit.thread19.i_crit_edge
  %52 = ptrtoint ptr %sysrq.i2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %sysrq.i2.i, align 4
  br label %if.end63.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @handle_sysrq(i32 noundef %conv59.i) #12
  %53 = ptrtoint ptr %sysrq.i2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %sysrq.i2.i, align 4
  br label %while.cond.backedge.i

if.end63.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread19.i, %if.else58.i.if.end63.i_crit_edge
  %54 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %55, i32 0, i32 2
  %58 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp3.i.i = icmp slt i32 %57, %59
  br i1 %cmp3.i.i, label %if.then.i10.i, label %if.end12.i.i

if.then.i10.i:                                    ; preds = %if.end63.i
  %flags.i8.i = getelementptr inbounds %struct.tty_buffer, ptr %55, i32 0, i32 5
  %60 = ptrtoint ptr %flags.i8.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i8.i, align 4
  %and.i9.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i)
  %tobool7.not.not.i.i = icmp eq i32 %and.i9.i, 0
  br i1 %tobool7.not.not.i.i, label %if.then8.i.i, label %if.then.i10.i.if.end.i11.i_crit_edge

if.then.i10.i.if.end.i11.i_crit_edge:             ; preds = %if.then.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i11.i

if.then8.i.i:                                     ; preds = %if.then.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %55, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %57
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %59
  %62 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i11.i

if.end.i11.i:                                     ; preds = %if.then8.i.i, %if.then.i10.i.if.end.i11.i_crit_edge
  %63 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %64, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %55, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %64
  %65 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %12, ptr %add.ptr.i1.i.i, align 1
  br label %while.cond.backedge.i

if.end12.i.i:                                     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %5, i8 noundef zeroext %12, i8 noundef zeroext 0) #12
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end12.i.i, %if.end.i11.i, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.while.cond.backedge.i_crit_edge, %if.then17.i.i, %if.end15.i.i.while.cond.backedge.i_crit_edge, %if.then11.i.i
  %and.i = and i32 %27, 512
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.linflex_rxint.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.cond.backedge.i.linflex_rxint.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %linflex_rxint.exit

linflex_rxint.exit:                               ; preds = %while.cond.backedge.i.linflex_rxint.exit_crit_edge, %if.then.linflex_rxint.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call3.i) #12
  tail call void @tty_flip_buffer_push(ptr noundef %5) #12
  br label %if.end

if.end:                                           ; preds = %linflex_rxint.exit, %entry.if.end_crit_edge
  %and3 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %state.i12 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %66 = ptrtoint ptr %state.i12 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %state.i12, align 4
  %call3.i13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #12
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 24
  %68 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i14 = icmp eq i8 %69, 0
  br i1 %tobool.not.i14, label %if.end.i18, label %do.body6.i

do.body6.i:                                       ; preds = %if.then5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !109
  tail call void @arm_heavy_mb() #12
  %70 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %x_char.i, align 4
  %72 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase, align 4
  %add.ptr.i16 = getelementptr i8, ptr %73, i32 56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16, i8 %71) #12, !srcloc !68
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body6.i
  %74 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase, align 4
  %add.ptr11.i = getelementptr i8, ptr %75, i32 20
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !65
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !110
  %and.i17 = and i32 %77, 2
  %cmp15.not.not.i = icmp eq i32 %and.i17, 0
  br i1 %cmp15.not.not.i, label %while.cond.i.while.cond.i_crit_edge, label %do.body17.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.body17.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !111
  tail call void @arm_heavy_mb() #12
  %or.i = or i32 %77, 2
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %79 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase, align 4
  %add.ptr21.i = getelementptr i8, ptr %80, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %78) #12, !srcloc !73
  br label %linflex_txint.exit

if.end.i18:                                       ; preds = %if.then5
  %head.i = getelementptr inbounds %struct.uart_state, ptr %67, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %67, i32 0, i32 2, i32 2
  %83 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp22.i = icmp eq i32 %82, %84
  br i1 %cmp22.i, label %if.end.i18.if.then26.i22_crit_edge, label %lor.lhs.false.i

if.end.i18.if.then26.i22_crit_edge:               ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i22

lor.lhs.false.i:                                  ; preds = %if.end.i18
  %85 = ptrtoint ptr %state.i12 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %state.i12, align 4
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i19 = icmp eq ptr %88, null
  br i1 %tobool.not.i.i19, label %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i21

lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_tx_stopped.exit.i

land.lhs.true.i.i21:                              ; preds = %lor.lhs.false.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %88, i32 0, i32 19, i32 1
  %89 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %stopped.i.i, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool3.not.i.i20 = icmp eq i8 %90, 0
  br i1 %tobool3.not.i.i20, label %land.lhs.true.i.i21.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i21.if.then26.i22_crit_edge

land.lhs.true.i.i21.if.then26.i22_crit_edge:      ; preds = %land.lhs.true.i.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i22

land.lhs.true.i.i21.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %land.lhs.true.i.i21.uart_tx_stopped.exit.i_crit_edge, %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 35
  %91 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool4.not.i.not.i = icmp eq i32 %92, 0
  br i1 %tobool4.not.i.not.i, label %if.end27.i, label %uart_tx_stopped.exit.i.if.then26.i22_crit_edge

uart_tx_stopped.exit.i.if.then26.i22_crit_edge:   ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i22

if.then26.i22:                                    ; preds = %uart_tx_stopped.exit.i.if.then26.i22_crit_edge, %land.lhs.true.i.i21.if.then26.i22_crit_edge, %if.end.i18.if.then26.i22_crit_edge
  %93 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %membase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %94, i32 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !75
  %96 = and i32 %95, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !76
  tail call void @arm_heavy_mb() #12
  %97 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %98, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %96) #12, !srcloc !73
  br label %linflex_txint.exit

if.end27.i:                                       ; preds = %uart_tx_stopped.exit.i
  tail call fastcc void @linflex_transmit_buffer(ptr noundef %dev_id) #12
  %99 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %head.i, align 4
  %101 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %100, %102
  %and30.i = and i32 %sub.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %cmp31.i = icmp eq i32 %and30.i, 0
  br i1 %cmp31.i, label %if.then33.i, label %if.end27.i.linflex_txint.exit_crit_edge

if.end27.i.linflex_txint.exit_crit_edge:          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %linflex_txint.exit

if.then33.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @uart_write_wakeup(ptr noundef %dev_id) #12
  br label %linflex_txint.exit

linflex_txint.exit:                               ; preds = %if.then33.i, %if.end27.i.linflex_txint.exit_crit_edge, %if.then26.i22, %do.body17.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call3.i13) #12
  br label %if.end7

if.end7:                                          ; preds = %linflex_txint.exit, %if.end.if.end7_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linflex_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @linflex_reg, ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linflex_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @linflex_reg, ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linflex_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @linflex_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end68_crit_edge

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %6 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %do.body54, label %do.body3

do.body3:                                         ; preds = %if.else
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !113
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %do.end15, label %do.end15.thread

do.end15:                                         ; preds = %do.body3
  tail call void @trace_hardirqs_off() #12
  %call18 = tail call i32 @_raw_spin_trylock(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then29, label %do.end15.if.end68_crit_edge

do.end15.if.end68_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

do.end15.thread:                                  ; preds = %do.body3
  %call1881 = tail call i32 @_raw_spin_trylock(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1881)
  %tobool19.not82 = icmp eq i32 %call1881, 0
  br i1 %tobool19.not82, label %do.end15.thread.do.body31_crit_edge, label %do.end15.thread.if.end68_crit_edge

do.end15.thread.if.end68_crit_edge:               ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

do.end15.thread.do.body31_crit_edge:              ; preds = %do.end15.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body31

if.then29:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body31

do.body31:                                        ; preds = %if.then29, %do.end15.thread.do.body31_crit_edge
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !114
  %and.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool39.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool39.not, label %if.then43, label %do.body31.do.end46_crit_edge, !prof !115

do.body31.do.end46_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body31.do.end46_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #12, !srcloc !116
  br label %if.end68

do.body54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  br label %if.end68

if.end68:                                         ; preds = %do.body54, %do.end46, %do.end15.thread.if.end68_crit_edge, %do.end15.if.end68_crit_edge, %entry.if.end68_crit_edge
  %tobool69.not = phi i1 [ false, %do.end15.thread.if.end68_crit_edge ], [ true, %do.end46 ], [ false, %do.end15.if.end68_crit_edge ], [ true, %entry.if.end68_crit_edge ], [ false, %do.body54 ]
  %flags.0 = phi i32 [ %7, %do.end15.thread.if.end68_crit_edge ], [ %7, %do.end46 ], [ %7, %do.end15.if.end68_crit_edge ], [ -1, %entry.if.end68_crit_edge ], [ %call62, %do.body54 ]
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !117
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !75
  %15 = and i32 %14, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !76
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %15) #12, !srcloc !73
  %18 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !118
  %21 = or i32 %20, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !119
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %21) #12, !srcloc !73
  tail call void @uart_console_write(ptr noundef %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @linflex_console_putchar) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %11) #12, !srcloc !73
  br i1 %tobool69.not, label %if.end68.if.end72_crit_edge, label %if.then70

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %flags.0) #12
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end68.if.end72_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @linflex_console_setup(ptr noundef %co, ptr noundef %options) #1 section ".init.text" align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #12
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 115200, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #12
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #12
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #12
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp4 = icmp ugt i16 %5, 3
  br i1 %cmp4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %index, align 2
  %idxprom = sext i16 %8 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @linflex_ports, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %tobool10.not = icmp eq ptr %options, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #12
  br label %if.end12

if.else:                                          ; preds = %if.end9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !121
  %14 = and i32 %13, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.else.if.end12_crit_edge, label %if.end.i

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 110, ptr %parity, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end.i, %if.else.if.end12_crit_edge, %if.then11
  %16 = load ptr, ptr @earlycon_port, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.end12.if.end24_crit_edge, label %land.lhs.true

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end12
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 43
  %17 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mapbase, align 4
  %mapbase14 = getelementptr inbounds %struct.uart_port, ptr %16, i32 0, i32 43
  %19 = ptrtoint ptr %mapbase14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mapbase14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp15 = icmp eq i32 %18, %20
  br i1 %cmp15, label %if.then17, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @linflex_earlycon_same_instance, align 1
  %call21 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @init_lock) #12
  store i1 true, ptr @during_init, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @init_lock, i32 noundef %call21) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 429496000) #12
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %land.lhs.true.if.end24_crit_edge, %if.end12.if.end24_crit_edge
  call fastcc void @linflex_setup_watermark(ptr noundef nonnull %10)
  %22 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %baud, align 4
  %24 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %parity, align 4
  %26 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bits, align 4
  %28 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flow, align 4
  %call25 = call i32 @uart_set_options(ptr noundef nonnull %10, ptr noundef %co, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #12
  %.b69 = load i1, ptr @linflex_earlycon_same_instance, align 1
  br i1 %.b69, label %do.body30, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body30:                                        ; preds = %if.end24
  %call37 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @init_lock) #12
  %30 = load i32, ptr @earlycon_buf.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool42.not = icmp eq i32 %30, 0
  br i1 %tobool42.not, label %do.body30.if.end48_crit_edge, label %for.cond.preheader

do.body30.if.end48_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

for.cond.preheader:                               ; preds = %do.body30
  %31 = load i32, ptr @earlycon_buf.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4470.not = icmp eq i32 %31, 0
  br i1 %cmp4470.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %32 = load ptr, ptr @earlycon_port, align 4
  %33 = load ptr, ptr @earlycon_buf.0, align 4
  %arrayidx46 = getelementptr i8, ptr %33, i32 %i.071
  %34 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %35 to i32
  call void @linflex_console_putchar(ptr noundef %32, i32 noundef %conv47)
  %inc = add nuw i32 %i.071, 1
  %36 = load i32, ptr @earlycon_buf.1, align 4
  %cmp44 = icmp ult i32 %inc, %36
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %37 = load ptr, ptr @earlycon_buf.0, align 4
  call void @kfree(ptr noundef %37) #12
  store i32 0, ptr @earlycon_buf.1, align 4
  br label %if.end48

if.end48:                                         ; preds = %for.end, %do.body30.if.end48_crit_edge
  store i1 false, ptr @during_init, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @init_lock, i32 noundef %call37) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call25, %if.end48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__UNIQUE_ID___earlycon_linflex227, !1, !"__UNIQUE_ID___earlycon_linflex227", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 803, i32 1}
!2 = !{ptr @__initcall__kmod_fsl_linflexuart__228_929_linflex_serial_init6, !3, !"__initcall__kmod_fsl_linflexuart__228_929_linflex_serial_init6", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 929, i32 1}
!4 = !{ptr @__exitcall_linflex_serial_exit, !5, !"__exitcall_linflex_serial_exit", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 930, i32 1}
!6 = !{ptr @__UNIQUE_ID_description229, !7, !"__UNIQUE_ID_description229", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 932, i32 1}
!8 = !{ptr @__UNIQUE_ID_file230, !9, !"__UNIQUE_ID_file230", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 933, i32 1}
!10 = !{ptr @__UNIQUE_ID_license231, !9, !"__UNIQUE_ID_license231", i1 false, i1 false}
!11 = distinct !{null, !12, !"linflex_earlycon_same_instance", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 133, i32 13}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 134, i32 8}
!15 = !{ptr @init_lock, !14, !"init_lock", i1 false, i1 false}
!16 = distinct !{null, !17, !"during_init", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 135, i32 13}
!18 = distinct !{null, !19, !"earlycon_buf", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 140, i32 3}
!20 = !{ptr @earlycon_port, !21, !"earlycon_port", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 132, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 902, i32 11}
!24 = !{ptr @linflex_driver, !25, !"linflex_driver", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 898, i32 31}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 830, i32 28}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 832, i32 3}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @linflex_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @linflex_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 836, i32 3}
!38 = !{ptr @linflex_probe._entry.8, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @linflex_probe._entry_ptr.10, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @linflex_pops, !41, !"linflex_pops", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 548, i32 30}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 528, i32 9}
!44 = !{ptr @linflex_ports, !45, !"linflex_ports", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 565, i32 26}
!46 = !{ptr @linflex_dt_ids, !47, !"linflex_dt_ids", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 123, i32 34}
!48 = !{ptr @linflex_pm_ops, !49, !"linflex_pm_ops", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 896, i32 8}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 814, i32 14}
!52 = !{ptr @linflex_reg, !53, !"linflex_reg", i1 false, i1 false}
!53 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 811, i32 27}
!54 = !{ptr @linflex_console, !55, !"linflex_console", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/fsl_linflexuart.c", i32 773, i32 23}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 1130861}
!66 = !{i64 2154171952}
!67 = !{i64 2154172177}
!68 = !{i64 1130246}
!69 = !{i64 2154172829}
!70 = !{i64 2154173506}
!71 = !{i64 2154174774}
!72 = !{i64 2154175759}
!73 = !{i64 1130443}
!74 = !{i64 2154157196}
!75 = !{i64 2154145549}
!76 = !{i64 2154145857}
!77 = !{i64 2154149805}
!78 = !{i64 2154150143}
!79 = !{i64 2154146550}
!80 = !{i64 2154146890}
!81 = !{i64 2154164860}
!82 = !{i64 2154165250}
!83 = !{i64 2154165959}
!84 = !{i64 2154166472}
!85 = !{i64 2154166780}
!86 = !{i64 2154167473}
!87 = !{i64 2154170759}
!88 = !{i64 2154171244}
!89 = !{i64 2154147601}
!90 = !{i64 2154148175}
!91 = !{i64 2154148751}
!92 = !{i64 2154157800}
!93 = !{i64 2154158191}
!94 = !{i64 2154158889}
!95 = !{i64 2154159279}
!96 = !{i64 2154159930}
!97 = !{i64 2154160628}
!98 = !{i64 2154161057}
!99 = !{i64 2154161864}
!100 = !{i64 2154162351}
!101 = !{i64 2154163049}
!102 = !{i64 2154163440}
!103 = !{i64 2154156519}
!104 = !{i64 2154153512}
!105 = !{i64 1130641}
!106 = !{i64 2154153845}
!107 = !{i64 2154155295}
!108 = !{i64 2154156002}
!109 = !{i64 2154151006}
!110 = !{i64 2154151592}
!111 = !{i64 2154152098}
!112 = !{i8 0, i8 2}
!113 = !{i64 599862, i64 599923}
!114 = !{i64 602594}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{i64 602879}
!117 = !{i64 2154177011}
!118 = !{i64 2154177528}
!119 = !{i64 2154177836}
!120 = !{i64 2154178241}
!121 = !{i64 2154181293}
