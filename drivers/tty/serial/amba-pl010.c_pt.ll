; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/amba-pl010.c_pt.bc'
source_filename = "../drivers/tty/serial/amba-pl010.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.uart_amba_port = type { %struct.uart_port, ptr, ptr, ptr, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.40, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.40 = type { ptr }
%struct.llist_head = type { ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.41, %struct.anon.42, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.41 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.42 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@pl010_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl010_dev_pm_ops, ptr null, ptr null }, ptr @pl010_probe, ptr @pl010_remove, ptr null, ptr @pl010_ids }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_amba_pl010__288_826_pl010_init6 = internal global ptr @pl010_init, section ".initcall6.init", align 4
@__exitcall_pl010_exit = internal global ptr @pl010_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"amba_pl010.author=ARM Ltd/Deep Blue Solutions Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [51 x i8] c"amba_pl010.description=ARM AMBA serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [46 x i8] c"amba_pl010.file=drivers/tty/serial/amba-pl010\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"amba_pl010.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart-pl010\00", [21 x i8] zeroinitializer }, align 32
@pl010_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pl010_suspend, ptr @pl010_resume, ptr @pl010_suspend, ptr @pl010_resume, ptr @pl010_suspend, ptr @pl010_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pl010_ids = internal constant { [2 x %struct.amba_id], [40 x i8] } { [2 x %struct.amba_id] [%struct.amba_id { i32 266256, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@amba_reg = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.1, ptr @.str.1, i32 204, i32 16, i32 8, ptr @amba_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyAM\00", [26 x i8] zeroinitializer }, align 32
@amba_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyAM\00\00\00\00\00\00\00\00\00\00\00", ptr @pl010_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @pl010_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @amba_reg, ptr null }, [60 x i8] zeroinitializer }, align 32
@amba_ports = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@amba_pl010_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @pl010_tx_empty, ptr @pl010_set_mctrl, ptr @pl010_get_mctrl, ptr @pl010_stop_tx, ptr @pl010_start_tx, ptr null, ptr null, ptr null, ptr @pl010_stop_rx, ptr @pl010_enable_ms, ptr @pl010_break_ctl, ptr @pl010_startup, ptr @pl010_shutdown, ptr null, ptr @pl010_set_termios, ptr @pl010_set_ldisc, ptr null, ptr @pl010_type, ptr @pl010_release_port, ptr @pl010_request_port, ptr @pl010_config_port, ptr @pl010_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@amba_reg_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @amba_reg_lock, i64 52), ptr getelementptr (i8, ptr @amba_reg_lock, i64 52) }, ptr @amba_reg_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pl010_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 739, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register AMBA-PL010 driver\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pl010_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/tty/serial/amba-pl010.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl010_probe._entry_ptr = internal global ptr @pl010_probe._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AMBA\00", [27 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amba_reg_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amba_reg_lock\00", [18 x i8] zeroinitializer }, align 32
@pl010_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016Serial: AMBA driver\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl010_init\00", [21 x i8] zeroinitializer }, align 32
@pl010_init._entry_ptr = internal global ptr @pl010_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"pl010_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 804, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 806, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"pl010_dev_pm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 792, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"pl010_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 794, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"amba_reg\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 679, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 681, i32 18 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"amba_console\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 663, i32 23 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"amba_ports\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 555, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"amba_pl010_pops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 535, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"amba_reg_lock\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 738, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 489, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 678, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [35 x i8] c"../drivers/tty/serial/amba-pl010.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 816, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pl010_exit, ptr @__initcall__kmod_amba_pl010__288_826_pl010_init6, ptr @pl010_exit, ptr @pl010_init._entry, ptr @pl010_init._entry_ptr, ptr @pl010_probe._entry, ptr @pl010_probe._entry_ptr, ptr @pl010_driver, ptr @.str, ptr @pl010_dev_pm_ops, ptr @pl010_ids, ptr @amba_reg, ptr @.str.1, ptr @amba_console, ptr @amba_ports, ptr @amba_pl010_pops, ptr @amba_reg_lock, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl010_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl010_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl010_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_reg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_ports to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_pl010_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_reg_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl010_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl010_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pl010_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl010_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl010_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  %call1 = tail call i32 @amba_driver_register(ptr noundef nonnull @pl010_driver) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl010_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @amba_ports, align 4
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %cmp1.1 = icmp eq ptr %1, null
  br i1 %cmp1.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %2 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %cmp1.2 = icmp eq ptr %2, null
  br i1 %cmp1.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %cmp1.3 = icmp eq ptr %3, null
  br i1 %cmp1.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.3

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc.3:                                        ; preds = %for.inc.2
  %4 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %cmp1.4 = icmp eq ptr %4, null
  br i1 %cmp1.4, label %for.inc.3.if.end4_crit_edge, label %for.inc.4

for.inc.3.if.end4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc.4:                                        ; preds = %for.inc.3
  %5 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %cmp1.5 = icmp eq ptr %5, null
  br i1 %cmp1.5, label %for.inc.4.if.end4_crit_edge, label %for.inc.5

for.inc.4.if.end4_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc.5:                                        ; preds = %for.inc.4
  %6 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %cmp1.6 = icmp eq ptr %6, null
  br i1 %cmp1.6, label %for.inc.5.if.end4_crit_edge, label %for.inc.6

for.inc.5.if.end4_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc.6:                                        ; preds = %for.inc.5
  %7 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %cmp1.7 = icmp eq ptr %7, null
  br i1 %cmp1.7, label %for.inc.6.if.end4_crit_edge, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.6.if.end4_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %for.inc.6.if.end4_crit_edge, %for.inc.5.if.end4_crit_edge, %for.inc.4.if.end4_crit_edge, %for.inc.3.if.end4_crit_edge, %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i.0103.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ], [ 4, %for.inc.3.if.end4_crit_edge ], [ 5, %for.inc.4.if.end4_crit_edge ], [ 6, %for.inc.5.if.end4_crit_edge ], [ 7, %for.inc.6.if.end4_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 376, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %res = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %res, align 8
  %end.i = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %9
  %add.i = add i32 %sub.i, %11
  %call11 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %9, i32 noundef %add.i) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call16, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %dev24 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %14 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev24, align 4
  %15 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %res, align 8
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %17 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mapbase, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call11, ptr %membase, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %19 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %iotype, align 2
  %irq = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 7
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 8
  %irq32 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %22 = ptrtoint ptr %irq32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %irq32, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 23
  %23 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %fifosize, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 48
  %24 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %has_sysrq, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @amba_pl010_pops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 33
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 268435456, ptr %flags, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %27 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.0103.lcssa, ptr %line, align 4
  %dev38 = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %dev38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %dev38, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %29 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %platform_data.i, align 8
  %data = getelementptr inbounds %struct.uart_amba_port, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %data, align 4
  %arrayidx41 = getelementptr [8 x ptr], ptr @amba_ports, i32 0, i32 %i.0103.lcssa
  %32 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %arrayidx41, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %33 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @amba_reg_lock, i32 noundef 0) #8
  %34 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @amba_reg, i32 0, i32 7), align 4
  %tobool43.not = icmp eq ptr %34, null
  br i1 %tobool43.not, label %if.then44, label %if.end22.if.end51_crit_edge

if.end22.if.end51_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then44:                                        ; preds = %if.end22
  %call45 = tail call i32 @uart_register_driver(ptr noundef nonnull @amba_reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.then44.if.end51_crit_edge

if.then44.if.end51_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @amba_reg_lock) #8
  %35 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end51:                                         ; preds = %if.then44.if.end51_crit_edge, %if.end22.if.end51_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @amba_reg_lock) #8
  %call53 = tail call i32 @uart_add_one_port(ptr noundef nonnull @amba_reg, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end51.cleanup_crit_edge, label %if.then55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end51.cleanup_crit_edge, %if.then47, %if.then19, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then19 ], [ %call45, %if.then47 ], [ -12, %if.end4.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call53, %if.then55 ], [ 0, %if.end51.cleanup_crit_edge ], [ -16, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @amba_reg, ptr noundef %1) #8
  %2 = load ptr, ptr @amba_ports, align 4
  %cmp3 = icmp eq ptr %2, %1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr @amba_ports, align 4
  br label %for.inc

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp ne ptr %2, null
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %busy.1.off0 = phi i1 [ false, %if.then ], [ %tobool.not, %if.else ]
  %3 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  %cmp3.1 = icmp eq ptr %3, %1
  br i1 %cmp3.1, label %if.then.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not.1 = icmp ne ptr %3, null
  %spec.select.1 = select i1 %tobool.not.1, i1 true, i1 %busy.1.off0
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 1), align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %if.else.1
  %busy.1.off0.1 = phi i1 [ %busy.1.off0, %if.then.1 ], [ %spec.select.1, %if.else.1 ]
  %4 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  %cmp3.2 = icmp eq ptr %4, %1
  br i1 %cmp3.2, label %if.then.2, label %if.else.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not.2 = icmp ne ptr %4, null
  %spec.select.2 = select i1 %tobool.not.2, i1 true, i1 %busy.1.off0.1
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 2), align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %if.else.2
  %busy.1.off0.2 = phi i1 [ %busy.1.off0.1, %if.then.2 ], [ %spec.select.2, %if.else.2 ]
  %5 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  %cmp3.3 = icmp eq ptr %5, %1
  br i1 %cmp3.3, label %if.then.3, label %if.else.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not.3 = icmp ne ptr %5, null
  %spec.select.3 = select i1 %tobool.not.3, i1 true, i1 %busy.1.off0.2
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 3), align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %if.else.3
  %busy.1.off0.3 = phi i1 [ %busy.1.off0.2, %if.then.3 ], [ %spec.select.3, %if.else.3 ]
  %6 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  %cmp3.4 = icmp eq ptr %6, %1
  br i1 %cmp3.4, label %if.then.4, label %if.else.4

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not.4 = icmp ne ptr %6, null
  %spec.select.4 = select i1 %tobool.not.4, i1 true, i1 %busy.1.off0.3
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 4), align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %if.else.4
  %busy.1.off0.4 = phi i1 [ %busy.1.off0.3, %if.then.4 ], [ %spec.select.4, %if.else.4 ]
  %7 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  %cmp3.5 = icmp eq ptr %7, %1
  br i1 %cmp3.5, label %if.then.5, label %if.else.5

if.else.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not.5 = icmp ne ptr %7, null
  %spec.select.5 = select i1 %tobool.not.5, i1 true, i1 %busy.1.off0.4
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 5), align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %if.else.5
  %busy.1.off0.5 = phi i1 [ %busy.1.off0.4, %if.then.5 ], [ %spec.select.5, %if.else.5 ]
  %8 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  %cmp3.6 = icmp eq ptr %8, %1
  br i1 %cmp3.6, label %if.then.6, label %if.else.6

if.else.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not.6 = icmp ne ptr %8, null
  %spec.select.6 = select i1 %tobool.not.6, i1 true, i1 %busy.1.off0.5
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 6), align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %if.else.6
  %busy.1.off0.6 = phi i1 [ %busy.1.off0.5, %if.then.6 ], [ %spec.select.6, %if.else.6 ]
  %9 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  %cmp3.7 = icmp eq ptr %9, %1
  br i1 %cmp3.7, label %if.then.7, label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @amba_ports, i32 0, i32 7), align 4
  br i1 %busy.1.off0.6, label %if.then.7.if.end10_crit_edge, label %if.then.7.if.then9_crit_edge

if.then.7.if.then9_crit_edge:                     ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then.7.if.end10_crit_edge:                     ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.inc.7:                                        ; preds = %for.inc.6
  %tobool.not.7 = icmp ne ptr %9, null
  %spec.select.7 = select i1 %tobool.not.7, i1 true, i1 %busy.1.off0.6
  br i1 %spec.select.7, label %for.inc.7.if.end10_crit_edge, label %for.inc.7.if.then9_crit_edge

for.inc.7.if.then9_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

for.inc.7.if.end10_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %for.inc.7.if.then9_crit_edge, %if.then.7.if.then9_crit_edge
  tail call void @uart_unregister_driver(ptr noundef nonnull @amba_reg) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.inc.7.if.end10_crit_edge, %if.then.7.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl010_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @amba_reg, ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl010_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @amba_reg, ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @amba_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %clk = getelementptr inbounds %struct.uart_amba_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %5) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 20
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #8, !srcloc !60
  tail call void @uart_console_write(ptr noundef %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @pl010_console_putchar) #8
  br label %do.body7

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %entry
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 24
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %14 = and i8 %13, 8
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %do.body19, label %do.body7.do.body7_crit_edge

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

do.body19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %15 = shl nuw i32 %conv, 24
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr24 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %15) #8, !srcloc !60
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl010_console_setup(ptr noundef %co, ptr noundef %options) #0 section ".init.text" align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #8
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 38400, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #8
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #8
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #8
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %5)
  %cmp = icmp sgt i16 %5, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %index, align 2
  %idxprom = sext i16 %8 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @amba_ports, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %clk = getelementptr inbounds %struct.uart_amba_port, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_prepare(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call10 = tail call i32 @clk_get_rate(ptr noundef %14) #8
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 22
  %15 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10, ptr %uartclk, align 4
  %tobool11.not = icmp eq ptr %options, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #8
  br label %if.end13

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @pl010_console_get_options(ptr noundef nonnull %10, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %16 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %baud, align 4
  %18 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %parity, align 4
  %20 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits, align 4
  %22 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flow, align 4
  %call15 = call i32 @uart_set_options(ptr noundef nonnull %10, ptr noundef %co, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end13 ], [ -19, %if.end.cleanup_crit_edge ], [ %call, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %3 = and i8 %2, 32
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %do.body6, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %ch)
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !60
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl010_console_get_options(ptr nocapture noundef readonly %uap, ptr nocapture noundef writeonly %baud, ptr nocapture noundef writeonly %parity, ptr nocapture noundef writeonly %bits) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end42_crit_edge, label %if.then

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %conv10 = zext i8 %6 to i32
  %and11 = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %and14 = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %.52 = select i1 %tobool15.not, i32 111, i32 101
  %storemerge = select i1 %tobool12.not, i32 110, i32 %.52
  %7 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %parity, align 4
  %and18 = and i32 %conv10, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and18)
  %cmp = icmp eq i32 %and18, 64
  %. = select i1 %cmp, i32 7, i32 8
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %., ptr %bits, align 4
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr27 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %conv31 = zext i8 %11 to i32
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr36 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr36) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %conv40 = zext i8 %14 to i32
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %uap, i32 0, i32 22
  %15 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %uartclk, align 4
  %17 = shl nuw nsw i32 %conv40, 12
  %18 = shl nuw nsw i32 %conv31, 4
  %add = add nuw nsw i32 %18, 16
  %mul = add nuw nsw i32 %add, %17
  %div = udiv i32 %16, %mul
  %19 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %baud, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then, %entry.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl010_tx_empty(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %3 = lshr i8 %2, 3
  %.lobit = and i8 %3, 1
  %4 = xor i8 %.lobit, 1
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  tail call void %3(ptr noundef %5, ptr noundef %7, i32 noundef %mctrl) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl010_get_mctrl(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %conv = zext i8 %2 to i32
  %and = shl nuw nsw i32 %conv, 4
  %3 = and i32 %and, 64
  %and5 = shl nuw nsw i32 %conv, 7
  %4 = and i32 %and5, 256
  %5 = or i32 %4, %3
  %and10 = shl nuw nsw i32 %conv, 5
  %6 = and i32 %and10, 32
  %7 = or i32 %5, %6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_stop_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 20
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %3 = and i8 %2, -33
  %and = zext i8 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %4 = shl nuw i32 %and, 24
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #8, !srcloc !60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_start_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 20
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %3 = or i8 %2, 32
  %or = zext i8 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %4 = shl nuw i32 %or, 24
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #8, !srcloc !60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_stop_rx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 20
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  %3 = and i8 %2, -81
  %and = zext i8 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %4 = shl nuw i32 %and, 24
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #8, !srcloc !60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_enable_ms(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 20
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %3 = or i8 %2, 8
  %or = zext i8 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %4 = shl nuw i32 %or, 24
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #8, !srcloc !60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_break_ctl(ptr noundef %port, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %conv12 = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp13 = icmp eq i32 %break_state, -1
  %or = or i32 %conv12, 1
  %and = and i32 %conv12, 254
  %lcr_h.0 = select i1 %cmp13, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %3 = shl nuw i32 %lcr_h.0, 24
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %3) #8, !srcloc !60
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl010_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %4 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %uartclk, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i30 = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @pl010_int, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool7.not = icmp eq i32 %call.i30, 0
  br i1 %tobool7.not, label %if.end9, label %clk_dis

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 24
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  %10 = and i8 %9, 7
  %and = zext i8 %10 to i32
  %old_status = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 4
  %11 = ptrtoint ptr %old_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %old_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 1358954496) #8, !srcloc !60
  br label %cleanup

clk_dis:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %clk_dis, %if.end9, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call.i30, %clk_dis ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %port) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %7 = and i8 %6, -18
  %and = zext i8 %7 to i32
  %8 = shl nuw i32 %and, 24
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr15 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %8) #8, !srcloc !60
  %clk = getelementptr inbounds %struct.uart_amba_port, ptr %port, i32 0, i32 1
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  tail call void @clk_unprepare(ptr noundef %12) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uartclk, align 4
  %div171 = lshr i32 %1, 4
  %call = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div171) #8
  %call2 = tail call i32 @uart_get_divisor(ptr noundef %port, i32 noundef %call) #8
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %and = and i32 %3, 48
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 16, label %sw.bb3
    i32 32, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %lcr_h.0 = phi i32 [ 96, %sw.default ], [ 64, %sw.bb4 ], [ 32, %sw.bb3 ], [ %and, %entry.sw.epilog_crit_edge ]
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %5 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fifosize, align 4
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #8
  %7 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %8, i32 noundef %call) #8
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %9 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %read_status_mask, align 4
  %10 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %termios, align 4
  %and33 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %spec.store.select174 = select i1 %tobool34.not, i32 8, i32 11
  %12 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select174, ptr %read_status_mask, align 4
  %13 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %termios, align 4
  %and41 = and i32 %14, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %sw.epilog.if.end47_crit_edge, label %if.then43

sw.epilog.if.end47_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or46 = or i32 %spec.store.select174, 4
  %15 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or46, ptr %read_status_mask, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %sw.epilog.if.end47_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %16 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ignore_status_mask, align 4
  %17 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %termios, align 4
  %and50 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %spec.store.select = select i1 %tobool51.not, i32 0, i32 3
  %19 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select, ptr %ignore_status_mask, align 4
  %20 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %termios, align 4
  %and58 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end47.if.end72_crit_edge, label %if.then60

if.end47.if.end72_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then60:                                        ; preds = %if.end47
  %or63 = or i32 %spec.store.select, 4
  %22 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or63, ptr %ignore_status_mask, align 4
  %23 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %termios, align 4
  %and65 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.then60.if.end72_crit_edge, label %if.then67

if.then60.if.end72_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then67:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %or70 = or i32 %spec.store.select, 12
  %25 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or70, ptr %ignore_status_mask, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.then60.if.end72_crit_edge, %if.end47.if.end72_crit_edge
  %26 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_cflag, align 4
  %and74 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %cmp75 = icmp eq i32 %and74, 0
  br i1 %cmp75, label %if.then77, label %if.end72.if.end81_crit_edge

if.end72.if.end81_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ignore_status_mask, align 4
  %or80 = or i32 %29, 256
  store i32 %or80, ptr %ignore_status_mask, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end72.if.end81_crit_edge
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %30 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase, align 4
  %add.ptr83 = getelementptr i8, ptr %31, i32 20
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr83) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  %33 = and i8 %32, -9
  %and88 = zext i8 %33 to i32
  %flags89 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %34 = ptrtoint ptr %flags89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags89, align 4
  %and90 = and i32 %35, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %lor.lhs.false, label %if.end81.if.then99_crit_edge

if.end81.if.then99_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

lor.lhs.false:                                    ; preds = %if.end81
  %36 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %c_cflag, align 4
  %38 = and i32 %37, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %38)
  %.not = icmp eq i32 %38, 2048
  br i1 %.not, label %lor.lhs.false.if.end101_crit_edge, label %lor.lhs.false.if.then99_crit_edge

lor.lhs.false.if.then99_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

lor.lhs.false.if.end101_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then99:                                        ; preds = %lor.lhs.false.if.then99_crit_edge, %if.end81.if.then99_crit_edge
  %or100 = or i32 %and88, 8
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %lor.lhs.false.if.end101_crit_edge
  %old_cr.0 = phi i32 [ %or100, %if.then99 ], [ %and88, %lor.lhs.false.if.end101_crit_edge ]
  %and8 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %and6 = lshr i32 %3, 3
  %39 = and i32 %and6, 8
  %40 = or i32 %lcr_h.0, %39
  %and13 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select172.v = select i1 %tobool14.not, i32 6, i32 2
  %spec.select172 = select i1 %tobool9.not, i32 0, i32 %spec.select172.v
  %lcr_h.2 = or i32 %40, %spec.select172
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  %sub = add i32 %call2, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %41 = shl i32 %sub, 16
  %42 = and i32 %41, 251658240
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %add.ptr108 = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %42) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %and112 = shl i32 %sub, 24
  %45 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase, align 4
  %add.ptr115 = getelementptr i8, ptr %46, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %and112) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %47 = shl nuw nsw i32 %lcr_h.2, 24
  %48 = or i32 %47, 268435456
  %49 = select i1 %cmp, i32 %48, i32 %47
  %50 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase, align 4
  %add.ptr121 = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %49) #8, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %old_cr.0)
  %53 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase, align 4
  %add.ptr127 = getelementptr i8, ptr %54, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %52) #8, !srcloc !60
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call28) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_set_ldisc(ptr noundef %port, ptr nocapture noundef readonly %termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %c_line = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 4
  %0 = ptrtoint ptr %c_line to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %c_line, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %1)
  %cmp = icmp eq i8 %1, 18
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %3, 2048
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %flags, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %port) #8
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %6, i32 20
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %8 = or i8 %7, 8
  %or.i = zext i8 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %9 = shl nuw i32 %or.i, 24
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %9) #8, !srcloc !60
  br label %if.end15.sink.split

if.else:                                          ; preds = %entry
  %and = and i32 %3, -2049
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %flags, align 4
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %13 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %c_cflag, align 4
  %15 = and i32 %14, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %15)
  %.not = icmp eq i32 %15, 2048
  br i1 %.not, label %if.then12, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock_irq(ptr noundef %port) #8
  %membase.i26 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i26, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 20
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %19 = and i8 %18, -9
  %and.i = zext i8 %19 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %20 = shl nuw i32 %and.i, 24
  %21 = ptrtoint ptr %membase.i26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i26, align 4
  %add.ptr5.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %20) #8, !srcloc !60
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then12, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %port) #8
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else.if.end15_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pl010_type(ptr nocapture noundef readonly %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp eq i32 %1, 32
  %cond = select i1 %cmp, ptr @.str.7, ptr null
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_release_port(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %0 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mapbase, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef 64) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl010_request_port(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %0 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mapbase, align 4
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef 64, ptr noundef nonnull @.str, i32 noundef 0) #8
  %cmp.not = icmp eq ptr %call, null
  %cond = select i1 %cmp.not, i32 -16, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl010_config_port(ptr nocapture noundef %port, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %type, align 4
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %1 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mapbase.i, align 4
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef 64, ptr noundef nonnull @.str, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pl010_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readonly %ser) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 3
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3 = icmp slt i32 %1, 0
  br i1 %cmp3, label %entry.if.then6_crit_edge, label %lor.lhs.false

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ser, align 4
  %switch.and = and i32 %3, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %4 = select i1 %switch.selectcmp, i32 0, i32 -22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %5 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp5.not = icmp slt i32 %1, %5
  br i1 %cmp5.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %entry.if.then6_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false.if.end7_crit_edge
  %ret.1 = phi i32 [ -22, %if.then6 ], [ %4, %lor.lhs.false.if.end7_crit_edge ]
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 7
  %6 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baud_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600, i32 %7)
  %cmp8 = icmp slt i32 %7, 9600
  %spec.select = select i1 %cmp8, i32 -22, i32 %ret.1
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl010_int(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #8
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %do.body.preheader

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.body.preheader:                                ; preds = %entry
  %conv = zext i8 %2 to i32
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %state1.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %handle_break.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %cons.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %line.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  %old_status.i = getelementptr inbounds %struct.uart_amba_port, ptr %dev_id, i32 0, i32 4
  %dsr.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 1
  %x_char.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 24
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 5
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 35
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 23
  br label %do.body

do.body:                                          ; preds = %if.end15.do.body_crit_edge, %do.body.preheader
  %pass_counter.0 = phi i32 [ %dec, %if.end15.do.body_crit_edge ], [ 256, %do.body.preheader ]
  %status.0 = phi i32 [ %conv24, %if.end15.do.body_crit_edge ], [ %conv, %do.body.preheader ]
  %and = and i32 %status.0, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.if.end_crit_edge, label %if.then4

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %do.body
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 24
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp130.i = icmp eq i8 %6, 0
  br i1 %cmp130.i, label %if.then4.land.rhs.i_crit_edge, label %if.then4.pl010_rx_chars.exit_crit_edge

if.then4.pl010_rx_chars.exit_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %pl010_rx_chars.exit

if.then4.land.rhs.i_crit_edge:                    ; preds = %if.then4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %ignore_char.i.land.rhs.i_crit_edge, %if.then4.land.rhs.i_crit_edge
  %max_count.0131.i = phi i32 [ %dec.i, %ignore_char.i.land.rhs.i_crit_edge ], [ 256, %if.then4.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %max_count.0131.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_count.0131.i)
  %tobool.not.i = icmp eq i32 %max_count.0131.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.pl010_rx_chars.exit_crit_edge, label %while.body.i

land.rhs.i.pl010_rx_chars.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pl010_rx_chars.exit

while.body.i:                                     ; preds = %land.rhs.i
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %conv11.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr17.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr17.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv21.i = zext i8 %14 to i32
  %or.i = or i32 %conv21.i, 256
  %and22.i = and i32 %conv21.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %while.body.i.if.end79.i_crit_edge, label %do.body.i, !prof !99

while.body.i.if.end79.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

do.body.i:                                        ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %add.ptr28.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 0) #8, !srcloc !60
  %and29.i = and i32 %conv21.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %do.body.i
  %and32.i = and i32 %or.i, 508
  %17 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brk.i, align 4
  %inc35.i = add i32 %18, 1
  store i32 %inc35.i, ptr %brk.i, align 4
  %19 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state1.i, align 4
  %21 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i58 = icmp eq ptr %22, null
  br i1 %tobool.not.i58, label %if.then31.i.if.end.i59_crit_edge, label %if.then.i

if.then31.i.if.end.i59_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i59

if.then.i:                                        ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %22(ptr noundef %dev_id) #8
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.then.i, %if.then31.i.if.end.i59_crit_edge
  %23 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool3.not.i = icmp eq i8 %24, 0
  br i1 %tobool3.not.i, label %if.end.i59.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i59.if.end15.i_crit_edge:                  ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i59
  %25 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %28 to i32
  %29 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv7.i)
  %cmp.i60 = icmp eq i32 %30, %conv7.i
  br i1 %cmp.i60, label %if.then9.i, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %31 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool10.not.i = icmp eq i32 %32, 0
  br i1 %tobool10.not.i, label %uart_handle_break.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i59.if.end15.i_crit_edge
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i62 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool16.not.i = icmp eq i32 %and.i62, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end55.i_crit_edge, label %if.then17.i

if.end15.i.if.end55.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %20, i32 0, i32 1
  %36 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tty.i, align 4
  tail call void @do_SAK(ptr noundef %37) #8
  br label %if.end55.i

uart_handle_break.exit:                           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add.i61 = add i32 %38, 500
  %39 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i61, ptr %sysrq.i.i, align 4
  br label %ignore_char.i

if.else.i:                                        ; preds = %do.body.i
  %and40.i = and i32 %conv21.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.else46.i, label %if.else.i.if.end55.sink.split.i_crit_edge

if.else.i.if.end55.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.sink.split.i

if.else46.i:                                      ; preds = %if.else.i
  %and47.i = and i32 %conv21.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.else46.i.if.end55.i_crit_edge, label %if.else46.i.if.end55.sink.split.i_crit_edge

if.else46.i.if.end55.sink.split.i_crit_edge:      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.sink.split.i

if.else46.i.if.end55.i_crit_edge:                 ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.end55.sink.split.i:                            ; preds = %if.else46.i.if.end55.sink.split.i_crit_edge, %if.else.i.if.end55.sink.split.i_crit_edge
  %parity.sink132.i = phi ptr [ %parity.i, %if.else.i.if.end55.sink.split.i_crit_edge ], [ %frame.i, %if.else46.i.if.end55.sink.split.i_crit_edge ]
  %40 = ptrtoint ptr %parity.sink132.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %parity.sink132.i, align 4
  %inc45.i = add i32 %41, 1
  store i32 %inc45.i, ptr %parity.sink132.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end55.sink.split.i, %if.else46.i.if.end55.i_crit_edge, %if.then17.i, %if.end15.i.if.end55.i_crit_edge
  %rsr.0.i = phi i32 [ %or.i, %if.else46.i.if.end55.i_crit_edge ], [ %or.i, %if.end55.sink.split.i ], [ %and32.i, %if.then17.i ], [ %and32.i, %if.end15.i.if.end55.i_crit_edge ]
  %and56.i = and i32 %rsr.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end55.i.if.end62.i_crit_edge, label %if.then58.i

if.end55.i.if.end62.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %overrun.i, align 4
  %inc61.i = add i32 %43, 1
  store i32 %inc61.i, ptr %overrun.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then58.i, %if.end55.i.if.end62.i_crit_edge
  %44 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %read_status_mask.i, align 4
  %and64.i = and i32 %45, %rsr.0.i
  %and65.i = and i32 %and64.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.else68.i, label %if.end62.i.if.end79.i_crit_edge

if.end62.i.if.end79.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

if.else68.i:                                      ; preds = %if.end62.i
  %and69.i = and i32 %and64.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.else72.i, label %if.else68.i.if.end79.i_crit_edge

if.else68.i.if.end79.i_crit_edge:                 ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

if.else72.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #10
  %and73.i = shl i32 %and64.i, 1
  %46 = and i32 %and73.i, 2
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else72.i, %if.else68.i.if.end79.i_crit_edge, %if.end62.i.if.end79.i_crit_edge, %while.body.i.if.end79.i_crit_edge
  %rsr.1.i = phi i32 [ %or.i, %while.body.i.if.end79.i_crit_edge ], [ %and64.i, %if.end62.i.if.end79.i_crit_edge ], [ %and64.i, %if.else68.i.if.end79.i_crit_edge ], [ %and64.i, %if.else72.i ]
  %flag.0.i = phi i32 [ 0, %while.body.i.if.end79.i_crit_edge ], [ 1, %if.end62.i.if.end79.i_crit_edge ], [ 3, %if.else68.i.if.end79.i_crit_edge ], [ %46, %if.else72.i ]
  %47 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i, label %if.end79.i.if.end84.i_crit_edge, label %if.end.i.i

if.end79.i.if.end84.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84.i

if.end.i.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.uart_handle_sysrq_char.exit.thread127.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.uart_handle_sysrq_char.exit.thread127.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread127.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %49, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread127.i_crit_edge

land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread127.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread127.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 @sysrq_mask() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %conv11.i) #8
  br i1 %call8.i.i, label %if.end7.i.i.ignore_char.i_crit_edge, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread127.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread127.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_handle_sysrq_char.exit.thread127.i

if.end7.i.i.ignore_char.i_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ignore_char.i

uart_handle_sysrq_char.exit.thread127.i:          ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread127.i_crit_edge, %land.lhs.true.i.i.uart_handle_sysrq_char.exit.thread127.i_crit_edge, %if.end.i.i.uart_handle_sysrq_char.exit.thread127.i_crit_edge
  %50 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end84.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @handle_sysrq(i32 noundef %conv11.i) #8
  %51 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %ignore_char.i

if.end84.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread127.i, %if.end79.i.if.end84.i_crit_edge
  tail call void @uart_insert_char(ptr noundef %dev_id, i32 noundef %rsr.1.i, i32 noundef 8, i32 noundef %conv11.i, i32 noundef %flag.0.i) #8
  br label %ignore_char.i

ignore_char.i:                                    ; preds = %if.end84.i, %uart_handle_sysrq_char.exit.i, %if.end7.i.i.ignore_char.i_crit_edge, %uart_handle_break.exit
  %52 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase, align 4
  %add.ptr90.i = getelementptr i8, ptr %53, i32 24
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr90.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %55 = and i8 %54, 16
  %cmp.i = icmp eq i8 %55, 0
  br i1 %cmp.i, label %ignore_char.i.land.rhs.i_crit_edge, label %ignore_char.i.pl010_rx_chars.exit_crit_edge

ignore_char.i.pl010_rx_chars.exit_crit_edge:      ; preds = %ignore_char.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pl010_rx_chars.exit

ignore_char.i.land.rhs.i_crit_edge:               ; preds = %ignore_char.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

pl010_rx_chars.exit:                              ; preds = %ignore_char.i.pl010_rx_chars.exit_crit_edge, %land.rhs.i.pl010_rx_chars.exit_crit_edge, %if.then4.pl010_rx_chars.exit_crit_edge
  %56 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %state1.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %57) #8
  br label %if.end

if.end:                                           ; preds = %pl010_rx_chars.exit, %do.body.if.end_crit_edge
  %and5 = and i32 %status.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase, align 4
  %add.ptr.i42 = getelementptr i8, ptr %59, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 0) #8, !srcloc !60
  %60 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase, align 4
  %add.ptr3.i = getelementptr i8, ptr %61, i32 24
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %63 = and i8 %62, 7
  %and.i = zext i8 %63 to i32
  %64 = ptrtoint ptr %old_status.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %old_status.i, align 4
  %xor.i = xor i32 %65, %and.i
  store i32 %and.i, ptr %old_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool.not.i43 = icmp eq i32 %xor.i, 0
  br i1 %tobool.not.i43, label %if.then7.if.end8_crit_edge, label %if.end.i

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.i:                                         ; preds = %if.then7
  %and6.i = and i32 %xor.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then8.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and10.i = and i32 %and.i, 4
  tail call void @uart_handle_dcd_change(ptr noundef %dev_id, i32 noundef %and10.i) #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i.if.end11.i_crit_edge
  %and12.i = and i32 %xor.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end16.i_crit_edge, label %if.then14.i

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dsr.i, align 4
  %inc.i44 = add i32 %67, 1
  store i32 %inc.i44, ptr %dsr.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end16.i_crit_edge
  %and17.i = and i32 %xor.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end22.i_crit_edge, label %if.then19.i

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %and21.i = and i32 %and.i, 1
  tail call void @uart_handle_cts_change(ptr noundef %dev_id, i32 noundef %and21.i) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end22.i_crit_edge
  %68 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %state1.i, align 4
  %delta_msr_wait.i = getelementptr inbounds %struct.tty_port, ptr %69, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end22.i, %if.then7.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %and9 = and i32 %status.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %70 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %state1.i, align 4
  %xmit1.i = getelementptr inbounds %struct.uart_state, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i47 = icmp eq i8 %73, 0
  br i1 %tobool.not.i47, label %if.end.i52, label %do.body.i50

do.body.i50:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %x_char.i, align 4
  %conv.i = zext i8 %75 to i32
  %76 = shl nuw i32 %conv.i, 24
  %77 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #8, !srcloc !60
  %79 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx.i, align 4
  %inc.i49 = add i32 %80, 1
  store i32 %inc.i49, ptr %tx.i, align 4
  %81 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %x_char.i, align 4
  br label %if.end12

if.end.i52:                                       ; preds = %if.then11
  %head.i = getelementptr inbounds %struct.uart_state, ptr %71, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %71, i32 0, i32 2, i32 2
  %84 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp.i51 = icmp eq i32 %83, %85
  br i1 %cmp.i51, label %if.end.i52.if.then12.i_crit_edge, label %lor.lhs.false.i

if.end.i52.if.then12.i_crit_edge:                 ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %if.end.i52
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %71, i32 0, i32 1
  %86 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i53 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i53, label %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i54

lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit.i

land.lhs.true.i.i54:                              ; preds = %lor.lhs.false.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %87, i32 0, i32 19, i32 1
  %88 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %stopped.i.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool3.not.i.i = icmp eq i8 %89, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i54.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i.i54.if.then12.i_crit_edge

land.lhs.true.i.i54.if.then12.i_crit_edge:        ; preds = %land.lhs.true.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

land.lhs.true.i.i54.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %land.lhs.true.i.i54.uart_tx_stopped.exit.i_crit_edge, %lor.lhs.false.i.uart_tx_stopped.exit.i_crit_edge
  %90 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool4.not.i.not.i = icmp eq i32 %91, 0
  br i1 %tobool4.not.i.not.i, label %if.end14.i, label %uart_tx_stopped.exit.i.if.then12.i_crit_edge

uart_tx_stopped.exit.i.if.then12.i_crit_edge:     ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.then12.i:                                      ; preds = %uart_tx_stopped.exit.i.if.then12.i_crit_edge, %land.lhs.true.i.i54.if.then12.i_crit_edge, %if.end.i52.if.then12.i_crit_edge
  %92 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %93, i32 20
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %95 = and i8 %94, -33
  %and.i.i = zext i8 %95 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %96 = shl nuw i32 %and.i.i, 24
  %97 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %98, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %96) #8, !srcloc !60
  br label %if.end12

if.end14.i:                                       ; preds = %uart_tx_stopped.exit.i
  %99 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %fifosize.i, align 4
  %shr.i = lshr i32 %100, 1
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.body16.i.do.body16.i_crit_edge, %if.end14.i
  %count.0.i = phi i32 [ %shr.i, %if.end14.i ], [ %dec.i57, %do.body16.i.do.body16.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %101 = ptrtoint ptr %xmit1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %xmit1.i, align 4
  %103 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tail.i, align 4
  %arrayidx.i = getelementptr i8, ptr %102, i32 %104
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i, align 1
  %conv21.i55 = zext i8 %106 to i32
  %107 = shl nuw i32 %conv21.i55, 24
  %108 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #8, !srcloc !60
  %110 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %111, 1
  %and.i56 = and i32 %add.i, 4095
  store i32 %and.i56, ptr %tail.i, align 4
  %112 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx.i, align 4
  %inc30.i = add i32 %113, 1
  store i32 %inc30.i, ptr %tx.i, align 4
  %114 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %head.i, align 4
  %116 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %116)
  %cmp33.i = icmp ne i32 %115, %116
  %dec.i57 = add nsw i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.0.i)
  %cmp38.i = icmp ugt i32 %count.0.i, 1
  %or.cond.i = select i1 %cmp33.i, i1 %cmp38.i, i1 false
  br i1 %or.cond.i, label %do.body16.i.do.body16.i_crit_edge, label %do.end40.i

do.body16.i.do.body16.i_crit_edge:                ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16.i

do.end40.i:                                       ; preds = %do.body16.i
  %sub.i = sub i32 %115, %116
  %and43.i = and i32 %sub.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %cmp44.i = icmp eq i32 %and43.i, 0
  br i1 %cmp44.i, label %if.then46.i, label %do.end40.i.if.end48.i_crit_edge

do.end40.i.if.end48.i_crit_edge:                  ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then46.i:                                      ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @uart_write_wakeup(ptr noundef %dev_id) #8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %do.end40.i.if.end48.i_crit_edge
  %117 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %head.i, align 4
  %119 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp51.i = icmp eq i32 %118, %120
  br i1 %cmp51.i, label %if.then53.i, label %if.end48.i.if.end12_crit_edge

if.end48.i.if.end12_crit_edge:                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then53.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %membase, align 4
  %add.ptr2.i81.i = getelementptr i8, ptr %122, i32 20
  %123 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i81.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %124 = and i8 %123, -33
  %and.i82.i = zext i8 %124 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %125 = shl nuw i32 %and.i82.i, 24
  %126 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %membase, align 4
  %add.ptr7.i83.i = getelementptr i8, ptr %127, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i83.i, i32 %125) #8, !srcloc !60
  br label %if.end12

if.end12:                                         ; preds = %if.then53.i, %if.end48.i.if.end12_crit_edge, %if.then12.i, %do.body.i50, %if.end8.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass_counter.0)
  %cmp = icmp eq i32 %pass_counter.0, 0
  br i1 %cmp, label %if.end12.if.end27_crit_edge, label %if.end15

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end15:                                         ; preds = %if.end12
  %dec = add nsw i32 %pass_counter.0, -1
  %128 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %membase, align 4
  %add.ptr20 = getelementptr i8, ptr %129, i32 28
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %conv24 = zext i8 %130 to i32
  %and25 = and i32 %conv24, 14
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end15.if.end27_crit_edge, label %if.end15.do.body_crit_edge

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %if.end15.if.end27_crit_edge, %if.end12.if.end27_crit_edge, %entry.if.end27_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #8
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !39, !40, !41, !43, !45, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_amba_pl010__288_826_pl010_init6, !1, !"__initcall__kmod_amba_pl010__288_826_pl010_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/amba-pl010.c", i32 826, i32 1}
!2 = !{ptr @__exitcall_pl010_exit, !3, !"__exitcall_pl010_exit", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/amba-pl010.c", i32 827, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/amba-pl010.c", i32 829, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/amba-pl010.c", i32 830, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/amba-pl010.c", i32 831, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/amba-pl010.c", i32 806, i32 11}
!13 = !{ptr @pl010_driver, !14, !"pl010_driver", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/amba-pl010.c", i32 804, i32 27}
!15 = !{ptr @pl010_dev_pm_ops, !16, !"pl010_dev_pm_ops", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/amba-pl010.c", i32 792, i32 8}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/amba-pl010.c", i32 681, i32 18}
!19 = !{ptr @amba_reg, !20, !"amba_reg", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/amba-pl010.c", i32 679, i32 27}
!21 = !{ptr @amba_console, !22, !"amba_console", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/amba-pl010.c", i32 663, i32 23}
!23 = !{ptr @amba_ports, !24, !"amba_ports", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/amba-pl010.c", i32 555, i32 31}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/amba-pl010.c", i32 738, i32 4}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pl010_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @pl010_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @amba_pl010_pops, !34, !"amba_pl010_pops", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/amba-pl010.c", i32 535, i32 30}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/amba-pl010.c", i32 489, i32 35}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/amba-pl010.c", i32 678, i32 8}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @amba_reg_lock, !38, !"amba_reg_lock", i1 false, i1 false}
!41 = !{ptr @pl010_ids, !42, !"pl010_ids", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/amba-pl010.c", i32 794, i32 29}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/amba-pl010.c", i32 816, i32 2}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pl010_init._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @pl010_init._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 5864781}
!58 = !{i64 2155207864}
!59 = !{i64 2155208100}
!60 = !{i64 5864583}
!61 = !{i64 2155208542}
!62 = !{i64 2155208626}
!63 = !{i64 2155208815}
!64 = !{i64 2155207127}
!65 = !{i64 2155207211}
!66 = !{i64 2155207434}
!67 = !{i64 2155209449}
!68 = !{i64 2155209707}
!69 = !{i64 2155209973}
!70 = !{i64 2155210224}
!71 = !{i64 2155191112}
!72 = !{i64 2155192567}
!73 = !{i64 2155178590}
!74 = !{i64 2155178822}
!75 = !{i64 2155180445}
!76 = !{i64 2155180677}
!77 = !{i64 2155182300}
!78 = !{i64 2155182539}
!79 = !{i64 2155184824}
!80 = !{i64 2155185056}
!81 = !{i64 2155195602}
!82 = !{i64 2155195840}
!83 = !{i64 2155197472}
!84 = !{i64 2155197805}
!85 = !{i64 2155199467}
!86 = !{i64 2155200320}
!87 = !{i64 2155201039}
!88 = !{i64 2155203082}
!89 = !{i64 2155203569}
!90 = !{i64 2155204033}
!91 = !{i64 2155204467}
!92 = !{i64 2155204884}
!93 = !{i64 2155182969}
!94 = !{i64 2155183201}
!95 = !{i64 2155189343}
!96 = !{i64 2155185486}
!97 = !{i64 2155185781}
!98 = !{i64 2155186034}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2155186407}
!101 = !{i64 2155186890}
!102 = !{i64 2155188467}
!103 = !{i64 2155188894}
!104 = !{i64 2155187129}
!105 = !{i8 0, i8 2}
!106 = !{i64 2155187635}
!107 = !{i64 2155189614}
