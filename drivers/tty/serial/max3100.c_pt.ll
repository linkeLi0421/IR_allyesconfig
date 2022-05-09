; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/max3100.c_pt.bc'
source_filename = "../drivers/tty/serial/max3100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max3100_port = type { %struct.uart_port, ptr, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, i32, i32, ptr, i32, %struct.timer_list }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.plat_max3100 = type { i32, i32, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_max3100__259_901_max3100_driver_init6 = internal global ptr @max3100_driver_init, section ".initcall6.init", align 4
@max3100_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @max3100_probe, ptr @max3100_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max3100_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_max3100_driver_exit = internal global ptr @max3100_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description260 = internal constant [35 x i8] c"max3100.description=MAX3100 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [59 x i8] c"max3100.author=Christian Pellegrin <chripell@evolware.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [40 x i8] c"max3100.file=drivers/tty/serial/max3100\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [20 x i8] c"max3100.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias264 = internal constant [26 x i8] c"max3100.alias=spi:max3100\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max3100\00", [24 x i8] zeroinitializer }, align 32
@max3100_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max3100_suspend, ptr @max3100_resume, ptr @max3100_suspend, ptr @max3100_resume, ptr @max3100_suspend, ptr @max3100_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max3100s_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @max3100s_lock, i64 52), ptr getelementptr (i8, ptr @max3100s_lock, i64 52) }, ptr @max3100s_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@uart_driver_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@max3100_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.21, ptr @.str.21, i32 204, i32 209, i32 4, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@max3100_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Couldn't register max3100 uart driver\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max3100_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/tty/serial/max3100.c\00", [35 x i8] zeroinitializer }, align 32
@max3100_probe._entry_ptr = internal global ptr @max3100_probe._entry, section ".printk_index", align 4
@max3100s = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@max3100_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 756, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"too many MAX3100 chips\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max3100_probe._entry_ptr.8 = internal global ptr @max3100_probe._entry.4, section ".printk_index", align 4
@max3100_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 764, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"kmalloc for max3100 structure %d failed!\0A\00", [54 x i8] zeroinitializer }, align 32
@max3100_probe._entry_ptr.11 = internal global ptr @max3100_probe._entry.9, section ".printk_index", align 4
@max3100_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&max3100s[i]->conf_lock\00", [40 x i8] zeroinitializer }, align 32
@max3100_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&max3100s[i]->timer)\00", [42 x i8] zeroinitializer }, align 32
@max3100_probe.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: adding port %d\0A\00", [44 x i8] zeroinitializer }, align 32
@max3100_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @max3100_tx_empty, ptr @max3100_set_mctrl, ptr @max3100_get_mctrl, ptr @max3100_stop_tx, ptr @max3100_start_tx, ptr null, ptr null, ptr null, ptr @max3100_stop_rx, ptr @max3100_enable_ms, ptr @max3100_break_ctl, ptr @max3100_startup, ptr @max3100_shutdown, ptr null, ptr @max3100_set_termios, ptr null, ptr null, ptr @max3100_type, ptr @max3100_release_port, ptr @max3100_request_port, ptr @max3100_config_port, ptr @max3100_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max3100_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 795, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"uart_add_one_port failed for line %d with error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@max3100_probe._entry_ptr.18 = internal global ptr @max3100_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max3100s_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max3100s_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyMAX\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@max3100_tx_empty.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max3100_tx_empty\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@max3100_set_mctrl.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.23, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max3100_set_mctrl\00", [46 x i8] zeroinitializer }, align 32
@max3100_get_mctrl.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.23, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max3100_get_mctrl\00", [46 x i8] zeroinitializer }, align 32
@max3100_stop_tx.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.23, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max3100_stop_tx\00", [16 x i8] zeroinitializer }, align 32
@max3100_start_tx.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.23, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max3100_start_tx\00", [47 x i8] zeroinitializer }, align 32
@max3100_stop_rx.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.23, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max3100_stop_rx\00", [16 x i8] zeroinitializer }, align 32
@max3100_enable_ms.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.23, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max3100_enable_ms\00", [46 x i8] zeroinitializer }, align 32
@max3100_break_ctl.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.23, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max3100_break_ctl\00", [46 x i8] zeroinitializer }, align 32
@max3100_startup.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.23, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max3100_startup\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"max3100-%d\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@max3100_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.3, i32 598, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot create workqueue\0A\00", [39 x i8] zeroinitializer }, align 32
@max3100_startup._entry_ptr = internal global ptr @max3100_startup._entry, section ".printk_index", align 4
@max3100_startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(work_completion)(&s->work)\00", [36 x i8] zeroinitializer }, align 32
@max3100_startup._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.31, ptr @.str.3, i32 605, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot allocate irq %d\0A\00", [40 x i8] zeroinitializer }, align 32
@max3100_startup._entry_ptr.38 = internal global ptr @max3100_startup._entry.36, section ".printk_index", align 4
@max3100_work.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.23, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max3100_work\00", [19 x i8] zeroinitializer }, align 32
@max3100_handlerx.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.23, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max3100_handlerx\00", [47 x i8] zeroinitializer }, align 32
@max3100_irq.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.23, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max3100_irq\00", [20 x i8] zeroinitializer }, align 32
@max3100_shutdown.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.23, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max3100_shutdown\00", [47 x i8] zeroinitializer }, align 32
@max3100_set_termios.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.23, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max3100_set_termios\00", [44 x i8] zeroinitializer }, align 32
@max3100_type.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.23, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max3100_type\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MAX3100\00", [24 x i8] zeroinitializer }, align 32
@max3100_release_port.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.23, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max3100_release_port\00", [43 x i8] zeroinitializer }, align 32
@max3100_request_port.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.23, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max3100_request_port\00", [43 x i8] zeroinitializer }, align 32
@max3100_config_port.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.23, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max3100_config_port\00", [44 x i8] zeroinitializer }, align 32
@max3100_verify_port.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.23, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max3100_verify_port\00", [44 x i8] zeroinitializer }, align 32
@max3100_sr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 207, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error while calling spi_sync\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"max3100_sr\00", [21 x i8] zeroinitializer }, align 32
@max3100_sr._entry_ptr = internal global ptr @max3100_sr._entry, section ".printk_index", align 4
@max3100_sr.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%04x - %04x\0A\00", [19 x i8] zeroinitializer }, align 32
@max3100_remove.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max3100_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: removing port %d\0A\00", [42 x i8] zeroinitializer }, align 32
@max3100_remove.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.55, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"removing max3100 driver\0A\00", [39 x i8] zeroinitializer }, align 32
@max3100_suspend.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.23, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max3100_suspend\00", [16 x i8] zeroinitializer }, align 32
@max3100_resume.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.23, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max3100_resume\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 300, i64 600, i64 1200, i64 2400, i64 4800, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200, i64 230400]
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"max3100_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 892, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 894, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"max3100_pm_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 885, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"max3100s_lock\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"uart_driver_registered\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"max3100_uart_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 724, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 746, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [9 x i8] c"max3100s\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 136, i32 29 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 756, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 763, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 770, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 780, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 782, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"max3100_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 705, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 793, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 137, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 726, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 378, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 406, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 391, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 683, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 351, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 362, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 342, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 702, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 582, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 595, i32 13 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 596, i32 17 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 598, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 601, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 605, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 264, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 222, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 328, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 546, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 430, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 636, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 638, i32 40 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 647, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 692, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 656, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 670, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 207, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 212, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 818, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 833, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 846, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [32 x i8] c"../drivers/tty/serial/max3100.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 869, i32 2 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_alias264, ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__exitcall_max3100_driver_exit, ptr @__initcall__kmod_max3100__259_901_max3100_driver_init6, ptr @max3100_driver_exit, ptr @max3100_probe._entry, ptr @max3100_probe._entry.16, ptr @max3100_probe._entry.4, ptr @max3100_probe._entry.9, ptr @max3100_probe._entry_ptr, ptr @max3100_probe._entry_ptr.11, ptr @max3100_probe._entry_ptr.18, ptr @max3100_probe._entry_ptr.8, ptr @max3100_sr._entry, ptr @max3100_sr._entry_ptr, ptr @max3100_startup._entry, ptr @max3100_startup._entry.36, ptr @max3100_startup._entry_ptr, ptr @max3100_startup._entry_ptr.38, ptr @max3100_driver, ptr @.str, ptr @max3100_pm_ops, ptr @max3100s_lock, ptr @uart_driver_registered, ptr @max3100_uart_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @max3100s, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @max3100_probe.__key, ptr @.str.12, ptr @max3100_probe.__key.13, ptr @.str.14, ptr @.str.15, ptr @max3100_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @max3100_startup.__key, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100s_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_driver_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100s to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_startup._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3100_sr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max3100_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max3100_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max3100_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max3100_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3100_probe(ptr noundef %spi) #2 align 64 {
entry:
  %rx = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rx) #8
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %rx, align 2, !annotation !167
  tail call void @mutex_lock_nested(ptr noundef nonnull @max3100s_lock, i32 noundef 0) #8
  %.b = load i1, ptr @uart_driver_registered, align 4
  br i1 %.b, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  store i1 true, ptr @uart_driver_registered, align 4
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @max3100_uart_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %1 = load ptr, ptr @max3100s, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %if.end5.if.end14_crit_edge, label %for.inc

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc:                                          ; preds = %if.end5
  %2 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 1), align 4
  %tobool6.not.1 = icmp eq ptr %2, null
  br i1 %tobool6.not.1, label %for.inc.if.end14_crit_edge, label %for.inc.1

for.inc.if.end14_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.1:                                        ; preds = %for.inc
  %3 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 2), align 4
  %tobool6.not.2 = icmp eq ptr %3, null
  br i1 %tobool6.not.2, label %for.inc.1.if.end14_crit_edge, label %for.inc.2

for.inc.1.if.end14_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.2:                                        ; preds = %for.inc.1
  %4 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 3), align 4
  %tobool6.not.3 = icmp eq ptr %4, null
  br i1 %tobool6.not.3, label %for.inc.2.if.end14_crit_edge, label %do.end13

for.inc.2.if.end14_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.end13:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end14:                                         ; preds = %for.inc.2.if.end14_crit_edge, %for.inc.1.if.end14_crit_edge, %for.inc.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %i.0182.lcssa = phi i32 [ 0, %if.end5.if.end14_crit_edge ], [ 1, %for.inc.if.end14_crit_edge ], [ 2, %for.inc.1.if.end14_crit_edge ], [ 3, %for.inc.2.if.end14_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 572) #12
  %arrayidx16 = getelementptr [4 x ptr], ptr @max3100s, i32 0, i32 %i.0182.lcssa
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %arrayidx16, align 4
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.10, i32 noundef %i.0182.lcssa) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %spi26 = getelementptr inbounds %struct.max3100_port, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %spi26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi, ptr %spi26, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq28 = getelementptr inbounds %struct.max3100_port, ptr %call7.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %irq28 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq28, align 4
  %conf_lock = getelementptr inbounds %struct.max3100_port, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %conf_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @max3100_probe.__key, i16 noundef signext 3) #8
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx16, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %14 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i, align 8
  %crystal = getelementptr inbounds %struct.plat_max3100, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crystal, align 4
  %crystal38 = getelementptr inbounds %struct.max3100_port, ptr %12, i32 0, i32 14
  %18 = ptrtoint ptr %crystal38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %crystal38, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %15, align 4
  %loopback40 = getelementptr inbounds %struct.max3100_port, ptr %12, i32 0, i32 15
  %21 = ptrtoint ptr %loopback40 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %loopback40, align 4
  %poll_time = getelementptr inbounds %struct.plat_max3100, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %poll_time to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %poll_time, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %23) #8
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx16, align 4
  %poll_time43 = getelementptr inbounds %struct.max3100_port, ptr %25, i32 0, i32 21
  %26 = ptrtoint ptr %poll_time43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call2.i, ptr %poll_time43, align 4
  %27 = ptrtoint ptr %poll_time to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %poll_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp45 = icmp sgt i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp48 = icmp eq i32 %call2.i, 0
  %or.cond = select i1 %cmp45, i1 %cmp48, i1 false
  %spec.store.select = select i1 %or.cond, i32 1, i32 %call2.i
  %29 = ptrtoint ptr %poll_time43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.store.select, ptr %poll_time43, align 4
  %max3100_hw_suspend = getelementptr inbounds %struct.plat_max3100, ptr %15, i32 0, i32 2
  %30 = ptrtoint ptr %max3100_hw_suspend to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %max3100_hw_suspend, align 4
  %max3100_hw_suspend54 = getelementptr inbounds %struct.max3100_port, ptr %25, i32 0, i32 20
  %32 = ptrtoint ptr %max3100_hw_suspend54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %max3100_hw_suspend54, align 4
  %minor = getelementptr inbounds %struct.max3100_port, ptr %25, i32 0, i32 13
  %33 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.0182.lcssa, ptr %minor, align 4
  %timer = getelementptr inbounds %struct.max3100_port, ptr %25, i32 0, i32 22
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @max3100_timeout, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @max3100_probe.__key.13) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_probe.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_probe, %if.then66)) #8
          to label %do.end70 [label %if.then66], !srcloc !168

if.then66:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_probe.__UNIQUE_ID_ddebug254, ptr noundef %spi, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef %i.0182.lcssa) #8
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %if.end24
  %34 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx16, align 4
  %irq72 = getelementptr inbounds %struct.max3100_port, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %irq72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq72, align 4
  %irq74 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 20
  %38 = ptrtoint ptr %irq74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %irq74, align 4
  %crystal76 = getelementptr inbounds %struct.max3100_port, ptr %35, i32 0, i32 14
  %39 = ptrtoint ptr %crystal76 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %crystal76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool77.not = icmp eq i32 %40, 0
  %cond = select i1 %tobool77.not, i32 1843200, i32 3686400
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 22
  %41 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond, ptr %uartclk, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 23
  %42 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %fifosize, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 39
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @max3100_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 33
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 268435520, ptr %flags, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 41
  %45 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %i.0182.lcssa, ptr %line, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 38
  %46 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 86, ptr %type, align 4
  %dev93 = getelementptr inbounds %struct.uart_port, ptr %35, i32 0, i32 45
  %47 = ptrtoint ptr %dev93 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %spi, ptr %dev93, align 4
  %call96 = tail call i32 @uart_add_one_port(ptr noundef nonnull @max3100_uart_driver, ptr noundef %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %do.end101, label %do.end70.if.end103_crit_edge

do.end70.if.end103_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

do.end101:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.17, i32 noundef %i.0182.lcssa, i32 noundef %call96) #11
  br label %if.end103

if.end103:                                        ; preds = %do.end101, %do.end70.if.end103_crit_edge
  %48 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx16, align 4
  %max3100_hw_suspend105 = getelementptr inbounds %struct.max3100_port, ptr %49, i32 0, i32 20
  %50 = ptrtoint ptr %max3100_hw_suspend105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %max3100_hw_suspend105, align 4
  %tobool106.not = icmp eq ptr %51, null
  br i1 %tobool106.not, label %if.else, label %if.then107

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %51(i32 noundef 1) #8
  br label %cleanup

if.else:                                          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @max3100_sr(ptr noundef %49, i16 noundef zeroext -12288, ptr noundef nonnull %rx)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then107, %do.end22, %do.end13, %do.end
  %retval.0 = phi i32 [ -12, %do.end13 ], [ -12, %do.end22 ], [ %call, %do.end ], [ 0, %if.else ], [ 0, %if.then107 ]
  tail call void @mutex_unlock(ptr noundef nonnull @max3100s_lock) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3100_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @max3100s_lock, i32 noundef 0) #8
  %2 = load ptr, ptr @max3100s, align 4
  %cmp1 = icmp eq ptr %2, %1
  br i1 %cmp1, label %entry.do.body_crit_edge, label %for.inc

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.inc.2.do.body_crit_edge, %for.inc.1.do.body_crit_edge, %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %i.087.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ 1, %for.inc.do.body_crit_edge ], [ 2, %for.inc.1.do.body_crit_edge ], [ 3, %for.inc.2.do.body_crit_edge ]
  %arrayidx.lcssa = phi ptr [ @max3100s, %entry.do.body_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 1), %for.inc.do.body_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 2), %for.inc.1.do.body_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 3), %for.inc.2.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_remove.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_remove, %if.then5)) #8
          to label %for.end.thread [label %if.then5], !srcloc !168

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_remove.__UNIQUE_ID_ddebug255, ptr noundef %spi, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef %i.087.lcssa) #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.then5, %do.body
  %3 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.lcssa, align 4
  %call7 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @max3100_uart_driver, ptr noundef %4) #8
  %5 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.lcssa, align 4
  tail call void @kfree(ptr noundef %6) #8
  %7 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.lcssa, align 4
  br label %if.end33

for.inc:                                          ; preds = %entry
  %8 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 1), align 4
  %cmp1.1 = icmp eq ptr %8, %1
  br i1 %cmp1.1, label %for.inc.do.body_crit_edge, label %for.inc.1

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.1:                                        ; preds = %for.inc
  %9 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 2), align 4
  %cmp1.2 = icmp eq ptr %9, %1
  br i1 %cmp1.2, label %for.inc.1.do.body_crit_edge, label %for.inc.2

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.2:                                        ; preds = %for.inc.1
  %10 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 3), align 4
  %cmp1.3 = icmp eq ptr %10, %1
  br i1 %cmp1.3, label %for.inc.2.do.body_crit_edge, label %do.end27

for.inc.2.do.body_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end27:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 825, i32 noundef 9, ptr noundef null) #8
  br label %if.end33

if.end33:                                         ; preds = %do.end27, %for.end.thread
  %11 = load ptr, ptr @max3100s, align 4
  %tobool45.not = icmp eq ptr %11, null
  br i1 %tobool45.not, label %for.cond41, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond41:                                       ; preds = %if.end33
  %12 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 1), align 4
  %tobool45.not.1 = icmp eq ptr %12, null
  br i1 %tobool45.not.1, label %for.cond41.1, label %for.cond41.cleanup_crit_edge

for.cond41.cleanup_crit_edge:                     ; preds = %for.cond41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond41.1:                                     ; preds = %for.cond41
  %13 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 2), align 4
  %tobool45.not.2 = icmp eq ptr %13, null
  br i1 %tobool45.not.2, label %for.cond41.2, label %for.cond41.1.cleanup_crit_edge

for.cond41.1.cleanup_crit_edge:                   ; preds = %for.cond41.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond41.2:                                     ; preds = %for.cond41.1
  %14 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @max3100s, i32 0, i32 3), align 4
  %tobool45.not.3 = icmp eq ptr %14, null
  br i1 %tobool45.not.3, label %for.cond41.3, label %for.cond41.2.cleanup_crit_edge

for.cond41.2.cleanup_crit_edge:                   ; preds = %for.cond41.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond41.3:                                     ; preds = %for.cond41.2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_remove.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_remove, %if.then63)) #8
          to label %do.end66 [label %if.then63], !srcloc !168

if.then63:                                        ; preds = %for.cond41.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @max3100_remove.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.55) #8
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %for.cond41.3
  tail call void @uart_unregister_driver(ptr noundef nonnull @max3100_uart_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %for.cond41.2.cleanup_crit_edge, %for.cond41.1.cleanup_crit_edge, %for.cond41.cleanup_crit_edge, %if.end33.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @max3100s_lock) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %t, i32 -376
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %force_end_work.i = getelementptr i8, ptr %t, i32 -16
  %2 = ptrtoint ptr %force_end_work.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %force_end_work.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.max3100_dowork.exit_crit_edge

if.then.max3100_dowork.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true.i:                                  ; preds = %if.then
  %4 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %8 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge, label %freezing.exit.i, !prof !169

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i:                                  ; preds = %land.lhs.true.i
  %call4.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %7) #8
  br i1 %call4.i.i, label %freezing.exit.i.max3100_dowork.exit_crit_edge, label %freezing.exit.i.land.lhs.true2.i_crit_edge

freezing.exit.i.land.lhs.true2.i_crit_edge:       ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i.max3100_dowork.exit_crit_edge:    ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true2.i:                                 ; preds = %freezing.exit.i.land.lhs.true2.i_crit_edge, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %suspending.i = getelementptr i8, ptr %t, i32 -12
  %9 = ptrtoint ptr %suspending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %suspending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true2.i.max3100_dowork.exit_crit_edge

land.lhs.true2.i.max3100_dowork.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i = getelementptr i8, ptr %t, i32 -64
  %11 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workqueue.i, align 4
  %work.i = getelementptr i8, ptr %t, i32 -60
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work.i) #8
  br label %max3100_dowork.exit

max3100_dowork.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.max3100_dowork.exit_crit_edge, %freezing.exit.i.max3100_dowork.exit_crit_edge, %if.then.max3100_dowork.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %poll_time = getelementptr i8, ptr %t, i32 -4
  %14 = ptrtoint ptr %poll_time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %poll_time, align 4
  %add = add i32 %15, %13
  %call = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %if.end

if.end:                                           ; preds = %max3100_dowork.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max3100_sr(ptr nocapture noundef %s, i16 noundef zeroext %tx, ptr nocapture noundef %rx) unnamed_addr #2 align 64 {
entry:
  %message = alloca %struct.spi_message, align 4
  %etx = alloca i16, align 2
  %erx = alloca i16, align 2
  %tran = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %message) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %etx) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %erx) #8
  %0 = ptrtoint ptr %erx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %erx, align 2, !annotation !167
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tran) #8
  %1 = getelementptr inbounds i8, ptr %tran, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 84)
  %3 = ptrtoint ptr %tran to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %etx, ptr %tran, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %tran, i32 0, i32 1
  %4 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %erx, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tran, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %len, align 4
  %6 = ptrtoint ptr %etx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %tx, ptr %etx, align 2
  %7 = getelementptr inbounds i8, ptr %message, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %message, ptr %message, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %message, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %message, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %tran, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %message, ptr noundef nonnull %message) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %message, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tran, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %message, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i, ptr %message, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %spi = getelementptr inbounds %struct.max3100_port, ptr %s, i32 0, i32 1
  %17 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi, align 4
  %call = call i32 @spi_sync(ptr noundef %18, ptr noundef nonnull %message) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.50) #11
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %erx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %erx, align 2
  %23 = ptrtoint ptr %rx to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %rx, align 2
  %24 = lshr i16 %22, 14
  %.lobit = and i16 %24, 1
  %25 = zext i16 %.lobit to i32
  %tx_empty = getelementptr inbounds %struct.max3100_port, ptr %s, i32 0, i32 3
  %26 = ptrtoint ptr %tx_empty to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tx_empty, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_sr.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_sr, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !168

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi, align 4
  %conv11 = zext i16 %tx to i32
  %29 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rx, align 2
  %conv12 = zext i16 %30 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_sr.__UNIQUE_ID_ddebug234, ptr noundef %28, ptr noundef nonnull @.str.52, i32 noundef %conv11, i32 noundef %conv12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tran) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %erx) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %etx) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %message) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3100_tx_empty(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_tx_empty.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_tx_empty, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_tx_empty.__UNIQUE_ID_ddebug241, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %force_end_work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 18
  %2 = ptrtoint ptr %force_end_work.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %force_end_work.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end.max3100_dowork.exit_crit_edge

do.end.max3100_dowork.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true.i:                                  ; preds = %do.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %8 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge, label %freezing.exit.i, !prof !169

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i:                                  ; preds = %land.lhs.true.i
  %call4.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %7) #8
  br i1 %call4.i.i, label %freezing.exit.i.max3100_dowork.exit_crit_edge, label %freezing.exit.i.land.lhs.true2.i_crit_edge

freezing.exit.i.land.lhs.true2.i_crit_edge:       ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i.max3100_dowork.exit_crit_edge:    ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true2.i:                                 ; preds = %freezing.exit.i.land.lhs.true2.i_crit_edge, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %suspending.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 19
  %9 = ptrtoint ptr %suspending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %suspending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true2.i.max3100_dowork.exit_crit_edge

land.lhs.true2.i.max3100_dowork.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 16
  %11 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workqueue.i, align 4
  %work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work.i) #8
  br label %max3100_dowork.exit

max3100_dowork.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.max3100_dowork.exit_crit_edge, %freezing.exit.i.max3100_dowork.exit_crit_edge, %do.end.max3100_dowork.exit_crit_edge
  %tx_empty = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 3
  %13 = ptrtoint ptr %tx_empty to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_empty, align 4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_set_mctrl(ptr noundef %port, i32 noundef %mctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_set_mctrl.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_set_mctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_set_mctrl.__UNIQUE_ID_ddebug243, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = lshr i32 %mctrl, 2
  %and.lobit = and i32 %and, 1
  %conf_lock = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %conf_lock) #8
  %rts4 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 8
  %2 = ptrtoint ptr %rts4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rts4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.lobit)
  %cmp5.not = icmp eq i32 %3, %and.lobit
  br i1 %cmp5.not, label %do.end.if.end9_crit_edge, label %if.then7

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %do.end
  %4 = ptrtoint ptr %rts4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.lobit, ptr %rts4, align 4
  %rts_commit = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 7
  %5 = ptrtoint ptr %rts_commit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %rts_commit, align 4
  %force_end_work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 18
  %6 = ptrtoint ptr %force_end_work.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %force_end_work.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then7.if.end9_crit_edge

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true.i:                                  ; preds = %if.then7
  %8 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %12 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge, label %freezing.exit.i, !prof !169

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i:                                  ; preds = %land.lhs.true.i
  %call4.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %11) #8
  br i1 %call4.i.i, label %freezing.exit.i.if.end9_crit_edge, label %freezing.exit.i.land.lhs.true2.i_crit_edge

freezing.exit.i.land.lhs.true2.i_crit_edge:       ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i.if.end9_crit_edge:                ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true2.i:                                 ; preds = %freezing.exit.i.land.lhs.true2.i_crit_edge, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %suspending.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 19
  %13 = ptrtoint ptr %suspending.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %suspending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not.i = icmp eq i32 %14, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true2.i.if.end9_crit_edge

land.lhs.true2.i.if.end9_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 16
  %15 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %workqueue.i, align 4
  %work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work.i) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then.i, %land.lhs.true2.i.if.end9_crit_edge, %freezing.exit.i.if.end9_crit_edge, %if.then7.if.end9_crit_edge, %do.end.if.end9_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %conf_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3100_get_mctrl(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_get_mctrl.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_get_mctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_get_mctrl.__UNIQUE_ID_ddebug242, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %force_end_work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 18
  %2 = ptrtoint ptr %force_end_work.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %force_end_work.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end.max3100_dowork.exit_crit_edge

do.end.max3100_dowork.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true.i:                                  ; preds = %do.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %8 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge, label %freezing.exit.i, !prof !169

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i:                                  ; preds = %land.lhs.true.i
  %call4.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %7) #8
  br i1 %call4.i.i, label %freezing.exit.i.max3100_dowork.exit_crit_edge, label %freezing.exit.i.land.lhs.true2.i_crit_edge

freezing.exit.i.land.lhs.true2.i_crit_edge:       ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i.max3100_dowork.exit_crit_edge:    ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true2.i:                                 ; preds = %freezing.exit.i.land.lhs.true2.i_crit_edge, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %suspending.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 19
  %9 = ptrtoint ptr %suspending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %suspending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true2.i.max3100_dowork.exit_crit_edge

land.lhs.true2.i.max3100_dowork.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 16
  %11 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workqueue.i, align 4
  %work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work.i) #8
  br label %max3100_dowork.exit

max3100_dowork.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.max3100_dowork.exit_crit_edge, %freezing.exit.i.max3100_dowork.exit_crit_edge, %do.end.max3100_dowork.exit_crit_edge
  %cts = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 2
  %13 = ptrtoint ptr %cts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  %or5 = select i1 %tobool4.not, i32 320, i32 352
  ret i32 %or5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_stop_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_stop_tx.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_stop_tx, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_stop_tx.__UNIQUE_ID_ddebug251, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_start_tx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_start_tx.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_start_tx, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_start_tx.__UNIQUE_ID_ddebug239, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %force_end_work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 18
  %2 = ptrtoint ptr %force_end_work.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %force_end_work.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end.max3100_dowork.exit_crit_edge

do.end.max3100_dowork.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true.i:                                  ; preds = %do.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %8 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge, label %freezing.exit.i, !prof !169

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i:                                  ; preds = %land.lhs.true.i
  %call4.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %7) #8
  br i1 %call4.i.i, label %freezing.exit.i.max3100_dowork.exit_crit_edge, label %freezing.exit.i.land.lhs.true2.i_crit_edge

freezing.exit.i.land.lhs.true2.i_crit_edge:       ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i.max3100_dowork.exit_crit_edge:    ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true2.i:                                 ; preds = %freezing.exit.i.land.lhs.true2.i_crit_edge, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %suspending.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 19
  %9 = ptrtoint ptr %suspending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %suspending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true2.i.max3100_dowork.exit_crit_edge

land.lhs.true2.i.max3100_dowork.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 16
  %11 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workqueue.i, align 4
  %work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work.i) #8
  br label %max3100_dowork.exit

max3100_dowork.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.max3100_dowork.exit_crit_edge, %freezing.exit.i.max3100_dowork.exit_crit_edge, %do.end.max3100_dowork.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_stop_rx(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_stop_rx.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_stop_rx, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_stop_rx.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.28) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rx_enabled = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 11
  %2 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rx_enabled, align 4
  %conf_lock = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %conf_lock) #8
  %conf = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 6
  %3 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %conf, align 4
  %and = and i32 %4, -1025
  store i32 %and, ptr %conf, align 4
  %conf_commit = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 5
  %5 = ptrtoint ptr %conf_commit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %conf_commit, align 4
  tail call void @_raw_spin_unlock(ptr noundef %conf_lock) #8
  %force_end_work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 18
  %6 = ptrtoint ptr %force_end_work.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %force_end_work.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end.max3100_dowork.exit_crit_edge

do.end.max3100_dowork.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true.i:                                  ; preds = %do.end
  %8 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %12 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge, label %freezing.exit.i, !prof !169

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i:                                  ; preds = %land.lhs.true.i
  %call4.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %11) #8
  br i1 %call4.i.i, label %freezing.exit.i.max3100_dowork.exit_crit_edge, label %freezing.exit.i.land.lhs.true2.i_crit_edge

freezing.exit.i.land.lhs.true2.i_crit_edge:       ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i.max3100_dowork.exit_crit_edge:    ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true2.i:                                 ; preds = %freezing.exit.i.land.lhs.true2.i_crit_edge, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %suspending.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 19
  %13 = ptrtoint ptr %suspending.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %suspending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not.i = icmp eq i32 %14, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true2.i.max3100_dowork.exit_crit_edge

land.lhs.true2.i.max3100_dowork.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 16
  %15 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %workqueue.i, align 4
  %work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work.i) #8
  br label %max3100_dowork.exit

max3100_dowork.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.max3100_dowork.exit_crit_edge, %freezing.exit.i.max3100_dowork.exit_crit_edge, %do.end.max3100_dowork.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_enable_ms(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_time = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %poll_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %2) #8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_enable_ms.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_enable_ms, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !168

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_enable_ms.__UNIQUE_ID_ddebug238, ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.29) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_break_ctl(ptr nocapture noundef readonly %port, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_break_ctl.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_break_ctl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_break_ctl.__UNIQUE_ID_ddebug253, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.30) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3100_startup(ptr noundef %port) #2 align 64 {
entry:
  %b = alloca [12 x i8], align 1
  %rx = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %b) #8
  %0 = call ptr @memset(ptr %b, i32 255, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_startup.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_startup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_startup.__UNIQUE_ID_ddebug246, ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.31) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conf = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 6
  %3 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1024, ptr %conf, align 4
  %crystal = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %4 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crystal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool4.not, i32 115200, i32 230400
  %baud = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 9
  %6 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %baud, align 4
  %rx_enabled = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 11
  %7 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rx_enabled, align 4
  %suspending = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 19
  %8 = ptrtoint ptr %suspending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %suspending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %force_end_work = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 18
  %10 = ptrtoint ptr %force_end_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %force_end_work, align 4
  %parity = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 10
  %11 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %parity, align 4
  %rts = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 8
  %12 = ptrtoint ptr %rts to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rts, align 4
  %minor = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 13
  %13 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %minor, align 4
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %b, ptr noundef nonnull @.str.32, i32 noundef %14)
  %call10 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.33, i32 noundef 262158, i32 noundef 1, ptr noundef nonnull %b) #8
  %workqueue = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 16
  %15 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10, ptr %workqueue, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end16, label %do.body20

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %spi17 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %16 = ptrtoint ptr %spi17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi17, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.34) #11
  br label %cleanup

do.body20:                                        ; preds = %if.end7
  %work = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 17
  call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %18 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 17, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.35, ptr noundef nonnull @max3100_startup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry24 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry24, ptr %entry24, align 4
  %prev.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 17, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry24, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @max3100_work, ptr %func, align 4
  %irq = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 12
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %23, ptr noundef nonnull @max3100_irq, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end32, label %if.end39

do.end32:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %spi33 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %24 = ptrtoint ptr %spi33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi33, align 4
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.37, i32 noundef %27) #11
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %irq, align 4
  %29 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %workqueue, align 4
  call void @destroy_workqueue(ptr noundef %30) #8
  %31 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %workqueue, align 4
  br label %cleanup

if.end39:                                         ; preds = %do.body20
  %loopback = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 15
  %32 = ptrtoint ptr %loopback to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool40.not = icmp eq i32 %33, 0
  br i1 %tobool40.not, label %if.end39.if.end43_crit_edge, label %if.then41

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rx) #8
  %34 = ptrtoint ptr %rx to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %rx, align 2, !annotation !167
  call fastcc void @max3100_sr(ptr noundef %port, i16 noundef zeroext 16385, ptr noundef nonnull %rx)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge
  %max3100_hw_suspend = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 20
  %35 = ptrtoint ptr %max3100_hw_suspend to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %max3100_hw_suspend, align 4
  %tobool44.not = icmp eq ptr %36, null
  br i1 %tobool44.not, label %if.end43.if.end47_crit_edge, label %if.then45

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void %36(i32 noundef 0) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end43.if.end47_crit_edge
  %conf_commit = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 5
  %37 = ptrtoint ptr %conf_commit to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %conf_commit, align 4
  %38 = ptrtoint ptr %force_end_work to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %force_end_work, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end47.max3100_dowork.exit_crit_edge

if.end47.max3100_dowork.exit_crit_edge:           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true.i:                                  ; preds = %if.end47
  %40 = call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i, align 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %44 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge, label %freezing.exit.i, !prof !169

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i:                                  ; preds = %land.lhs.true.i
  %call4.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %43) #8
  br i1 %call4.i.i, label %freezing.exit.i.max3100_dowork.exit_crit_edge, label %freezing.exit.i.land.lhs.true2.i_crit_edge

freezing.exit.i.land.lhs.true2.i_crit_edge:       ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i.max3100_dowork.exit_crit_edge:    ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true2.i:                                 ; preds = %freezing.exit.i.land.lhs.true2.i_crit_edge, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %45 = ptrtoint ptr %suspending to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %suspending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool3.not.i = icmp eq i32 %46, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true2.i.max3100_dowork.exit_crit_edge

land.lhs.true2.i.max3100_dowork.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %workqueue, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %work) #8
  br label %max3100_dowork.exit

max3100_dowork.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.max3100_dowork.exit_crit_edge, %freezing.exit.i.max3100_dowork.exit_crit_edge, %if.end47.max3100_dowork.exit_crit_edge
  call void @msleep(i32 noundef 50) #8
  %poll_time.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 21
  %49 = ptrtoint ptr %poll_time.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %poll_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i = icmp sgt i32 %50, 0
  br i1 %cmp.i, label %if.then.i82, label %max3100_dowork.exit.do.body.i_crit_edge

max3100_dowork.exit.do.body.i_crit_edge:          ; preds = %max3100_dowork.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i82:                                      ; preds = %max3100_dowork.exit
  call void @__sanitizer_cov_trace_pc() #10
  %timer.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %call.i81 = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %51) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i82, %max3100_dowork.exit.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_enable_ms.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_startup, %if.then5.i)) #8
          to label %cleanup [label %if.then5.i], !srcloc !168

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %spi.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %52 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_enable_ms.__UNIQUE_ID_ddebug238, ptr noundef %53, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.29) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %do.body.i, %do.end32, %do.end16, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end32 ], [ -16, %do.end16 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %do.body.i ], [ 0, %if.then5.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %b) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_shutdown(ptr noundef %port) #2 align 64 {
entry:
  %rx = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_shutdown.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_shutdown, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_shutdown.__UNIQUE_ID_ddebug245, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.42) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %suspending = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 19
  %2 = ptrtoint ptr %suspending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %force_end_work = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 18
  %4 = ptrtoint ptr %force_end_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %force_end_work, align 4
  %poll_time = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 21
  %5 = ptrtoint ptr %poll_time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %poll_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then7, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 22
  %call8 = tail call i32 @del_timer_sync(ptr noundef %timer) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end6.if.end9_crit_edge
  %workqueue = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 16
  %7 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %workqueue, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @flush_workqueue(ptr noundef nonnull %8) #8
  %9 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %10) #8
  %11 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %workqueue, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %irq = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 12
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  br i1 %tobool16.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %port) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %max3100_hw_suspend = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 20
  %14 = ptrtoint ptr %max3100_hw_suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %max3100_hw_suspend, align 4
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %15(i32 noundef 1) #8
  br label %cleanup

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rx) #8
  %16 = ptrtoint ptr %rx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %rx, align 2, !annotation !167
  call fastcc void @max3100_sr(ptr noundef %port, i16 noundef zeroext -12288, ptr noundef nonnull %rx)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then22, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_set_termios(ptr noundef %port, ptr noundef %termios, ptr nocapture noundef readnone %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_set_termios.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_set_termios, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_set_termios.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.43) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %call4 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #8
  %conf = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 6
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %conf, align 4
  %and = and i32 %5, 15
  %6 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %sw.default [
    i32 300, label %sw.bb
    i32 600, label %sw.bb9
    i32 1200, label %sw.bb11
    i32 2400, label %sw.bb14
    i32 4800, label %sw.bb17
    i32 9600, label %sw.bb20
    i32 19200, label %sw.bb23
    i32 38400, label %sw.bb26
    i32 57600, label %sw.bb29
    i32 115200, label %sw.bb32
    i32 230400, label %sw.bb35
  ]

sw.bb:                                            ; preds = %do.end
  %crystal = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %7 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %crystal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %sw.bb.sw.epilog_crit_edge, label %if.then6

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %baud7 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 9
  %9 = ptrtoint ptr %baud7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %baud7, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %crystal10 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %11 = ptrtoint ptr %crystal10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %crystal10, align 4
  %add = add i32 %12, 14
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %crystal12 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %13 = ptrtoint ptr %crystal12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crystal12, align 4
  %add13 = add i32 %14, 13
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %crystal15 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %15 = ptrtoint ptr %crystal15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crystal15, align 4
  %add16 = add i32 %16, 12
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %crystal18 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %17 = ptrtoint ptr %crystal18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crystal18, align 4
  %add19 = add i32 %18, 11
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %crystal21 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %19 = ptrtoint ptr %crystal21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crystal21, align 4
  %add22 = add i32 %20, 10
  br label %sw.epilog

sw.bb23:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %crystal24 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %21 = ptrtoint ptr %crystal24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crystal24, align 4
  %add25 = add i32 %22, 9
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %crystal27 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %23 = ptrtoint ptr %crystal27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %crystal27, align 4
  %add28 = add i32 %24, 8
  br label %sw.epilog

sw.bb29:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %crystal30 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %25 = ptrtoint ptr %crystal30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %crystal30, align 4
  %add31 = add i32 %26, 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %crystal33 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %27 = ptrtoint ptr %crystal33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %crystal33, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end
  %crystal36 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 14
  %29 = ptrtoint ptr %crystal36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crystal36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool37.not = icmp eq i32 %30, 0
  br i1 %tobool37.not, label %if.else39, label %sw.bb35.sw.epilog_crit_edge

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else39:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  %baud40 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 9
  %31 = ptrtoint ptr %baud40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %baud40, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %baud42 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 9
  %33 = ptrtoint ptr %baud42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %baud42, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else39, %sw.bb35.sw.epilog_crit_edge, %sw.bb32, %sw.bb29, %sw.bb26, %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb11, %sw.bb9, %if.then6, %sw.bb.sw.epilog_crit_edge
  %param_new.0 = phi i32 [ %and, %sw.default ], [ %and, %if.else39 ], [ %28, %sw.bb32 ], [ %add31, %sw.bb29 ], [ %add28, %sw.bb26 ], [ %add25, %sw.bb23 ], [ %add22, %sw.bb20 ], [ %add19, %sw.bb17 ], [ %add16, %sw.bb14 ], [ %add13, %sw.bb11 ], [ %add, %sw.bb9 ], [ %and, %if.then6 ], [ 15, %sw.bb.sw.epilog_crit_edge ], [ 0, %sw.bb35.sw.epilog_crit_edge ]
  %baud.0 = phi i32 [ %34, %sw.default ], [ %32, %if.else39 ], [ 115200, %sw.bb32 ], [ 57600, %sw.bb29 ], [ 38400, %sw.bb26 ], [ 19200, %sw.bb23 ], [ 9600, %sw.bb20 ], [ 4800, %sw.bb17 ], [ 2400, %sw.bb14 ], [ 1200, %sw.bb11 ], [ 600, %sw.bb9 ], [ %10, %if.then6 ], [ 300, %sw.bb.sw.epilog_crit_edge ], [ 230400, %sw.bb35.sw.epilog_crit_edge ]
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %baud.0, i32 noundef %baud.0) #8
  %baud43 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 9
  %35 = ptrtoint ptr %baud43 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %baud.0, ptr %baud43, align 4
  %and44 = and i32 %3, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and44)
  %cmp = icmp eq i32 %and44, 48
  %and46 = and i32 %param_new.0, 15
  %and51 = and i32 %3, -49
  %or52 = or i32 %and51, 32
  %cflag.0 = select i1 %cmp, i32 %3, i32 %or52
  %parity.0 = select i1 %cmp, i32 0, i32 4
  %and55 = and i32 %cflag.0, 64
  %and63 = and i32 %cflag.0, 256
  %masksel.masked = select i1 %cmp, i32 0, i32 16
  %36 = lshr exact i32 %and63, 3
  %37 = lshr exact i32 %and63, 8
  %38 = or i32 %37, %parity.0
  %and73 = lshr i32 %cflag.0, 8
  %39 = and i32 %and73, 2
  %40 = or i32 %38, %39
  %and80 = and i32 %cflag.0, -1073741825
  %41 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and80, ptr %c_cflag, align 4
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %42 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %ignore_status_mask, align 4
  %43 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %termios, align 4
  %and83 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %spec.store.select = select i1 %tobool84.not, i32 0, i32 7
  %45 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select, ptr %ignore_status_mask, align 4
  %poll_time = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 21
  %46 = ptrtoint ptr %poll_time to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %poll_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp90 = icmp sgt i32 %47, 0
  br i1 %cmp90, label %if.then91, label %sw.epilog.if.end93_crit_edge

sw.epilog.if.end93_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then91:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 22
  %call92 = tail call i32 @del_timer_sync(ptr noundef %timer) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %sw.epilog.if.end93_crit_edge
  %48 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %49, i32 noundef %baud.0) #8
  %conf_lock = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %conf_lock) #8
  %50 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %conf, align 4
  %and96 = and i32 %51, -128
  %param_new.1.masked = or i32 %and55, %masksel.masked
  %and69 = or i32 %param_new.1.masked, %36
  %param_new.3 = or i32 %and69, %and46
  %or98 = or i32 %param_new.3, %and96
  store i32 %or98, ptr %conf, align 4
  %conf_commit = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 5
  %52 = ptrtoint ptr %conf_commit to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %conf_commit, align 4
  %parity100 = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 10
  %53 = ptrtoint ptr %parity100 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %40, ptr %parity100, align 4
  tail call void @_raw_spin_unlock(ptr noundef %conf_lock) #8
  %force_end_work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 18
  %54 = ptrtoint ptr %force_end_work.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %force_end_work.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end93.max3100_dowork.exit_crit_edge

if.end93.max3100_dowork.exit_crit_edge:           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true.i:                                  ; preds = %if.end93
  %56 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %60 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge, label %freezing.exit.i, !prof !169

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i:                                  ; preds = %land.lhs.true.i
  %call4.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %59) #8
  br i1 %call4.i.i, label %freezing.exit.i.max3100_dowork.exit_crit_edge, label %freezing.exit.i.land.lhs.true2.i_crit_edge

freezing.exit.i.land.lhs.true2.i_crit_edge:       ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i.max3100_dowork.exit_crit_edge:    ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true2.i:                                 ; preds = %freezing.exit.i.land.lhs.true2.i_crit_edge, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %suspending.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 19
  %61 = ptrtoint ptr %suspending.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %suspending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool3.not.i = icmp eq i32 %62, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true2.i.max3100_dowork.exit_crit_edge

land.lhs.true2.i.max3100_dowork.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 16
  %63 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %workqueue.i, align 4
  %work.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %64, ptr noundef %work.i) #8
  br label %max3100_dowork.exit

max3100_dowork.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.max3100_dowork.exit_crit_edge, %freezing.exit.i.max3100_dowork.exit_crit_edge, %if.end93.max3100_dowork.exit_crit_edge
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 4
  %and103 = and i32 %66, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %lor.lhs.false, label %max3100_dowork.exit.if.then112_crit_edge

max3100_dowork.exit.if.then112_crit_edge:         ; preds = %max3100_dowork.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

lor.lhs.false:                                    ; preds = %max3100_dowork.exit
  %67 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %c_cflag, align 4
  %69 = and i32 %68, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %69)
  %.not = icmp eq i32 %69, 2048
  br i1 %.not, label %lor.lhs.false.if.end114_crit_edge, label %lor.lhs.false.if.then112_crit_edge

lor.lhs.false.if.then112_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

lor.lhs.false.if.end114_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then112:                                       ; preds = %lor.lhs.false.if.then112_crit_edge, %max3100_dowork.exit.if.then112_crit_edge
  %70 = ptrtoint ptr %poll_time to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %poll_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i = icmp sgt i32 %71, 0
  br i1 %cmp.i, label %if.then.i179, label %if.then112.do.body.i_crit_edge

if.then112.do.body.i_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i179:                                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  %timer.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %72) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i179, %if.then112.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_enable_ms.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_set_termios, %if.then5.i)) #8
          to label %if.end114 [label %if.then5.i], !srcloc !168

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %spi.i = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %73 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %spi.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_enable_ms.__UNIQUE_ID_ddebug238, ptr noundef %74, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.29) #8
  br label %if.end114

if.end114:                                        ; preds = %if.then5.i, %do.body.i, %lor.lhs.false.if.end114_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @max3100_type(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_type.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_type, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_type.__UNIQUE_ID_ddebug247, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.44) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %3)
  %cmp = icmp eq i32 %3, 86
  %cond = select i1 %cmp, ptr @.str.45, ptr null
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_release_port(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_release_port.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_release_port, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_release_port.__UNIQUE_ID_ddebug248, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.46) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3100_request_port(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_request_port.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_request_port, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_request_port.__UNIQUE_ID_ddebug252, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.47) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_config_port(ptr nocapture noundef %port, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_config_port.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_config_port, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_config_port.__UNIQUE_ID_ddebug249, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.48) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 86, ptr %type, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3100_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %ser) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_verify_port.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_verify_port, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_verify_port.__UNIQUE_ID_ddebug250, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.49) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.selectcmp.case1 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %3)
  %switch.selectcmp.case2 = icmp eq i32 %3, 86
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %4 = select i1 %switch.selectcmp, i32 0, i32 -22
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max3100_work(ptr noundef %w) #2 align 64 {
entry:
  %rx = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -464
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rx) #8
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %rx, align 2, !annotation !167
  %state = getelementptr i8, ptr %w, i32 -316
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %2, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_work.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_work, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr i8, ptr %w, i32 -104
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_work.__UNIQUE_ID_ddebug236, ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.39) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conf_lock = getelementptr i8, ptr %w, i32 -92
  %conf6 = getelementptr i8, ptr %w, i32 -44
  %conf_commit = getelementptr i8, ptr %w, i32 -48
  %rts_commit = getelementptr i8, ptr %w, i32 -40
  %rts = getelementptr i8, ptr %w, i32 -36
  %x_char = getelementptr i8, ptr %w, i32 -328
  %tx35 = getelementptr i8, ptr %w, i32 -292
  %head = getelementptr inbounds %struct.uart_state, ptr %2, i32 0, i32 2, i32 1
  %tail = getelementptr inbounds %struct.uart_state, ptr %2, i32 0, i32 2, i32 2
  %hw_stopped.i = getelementptr i8, ptr %w, i32 -256
  %parity.i = getelementptr i8, ptr %w, i32 -28
  %force_end_work = getelementptr i8, ptr %w, i32 44
  br label %do.body5

do.body5:                                         ; preds = %do.body5.backedge, %do.end
  %rxchars.0 = phi i32 [ 0, %do.end ], [ %rxchars.3, %do.body5.backedge ]
  tail call void @_raw_spin_lock(ptr noundef %conf_lock) #8
  %5 = ptrtoint ptr %conf6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %conf6, align 4
  %7 = ptrtoint ptr %conf_commit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %conf_commit, align 4
  store i32 0, ptr %conf_commit, align 4
  %9 = ptrtoint ptr %rts_commit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rts_commit, align 4
  store i32 0, ptr %rts_commit, align 4
  tail call void @_raw_spin_unlock(ptr noundef %conf_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %do.body5.if.end13_crit_edge, label %if.then11

do.body5.if.end13_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %11 = trunc i32 %6 to i16
  %conv = or i16 %11, -16384
  call fastcc void @max3100_sr(ptr noundef %add.ptr, i16 noundef zeroext %conv, ptr noundef nonnull %rx)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.body5.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %if.end13.if.end21_crit_edge, label %if.then15

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  %conv18 = select i1 %tobool16.not, i16 -31744, i16 -31232
  call fastcc void @max3100_sr(ptr noundef %add.ptr, i16 noundef zeroext %conv18, ptr noundef nonnull %rx)
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rx, align 2
  %call20 = tail call fastcc i32 @max3100_handlerx(ptr noundef %add.ptr, i16 noundef zeroext %15)
  %add = add i32 %call20, %rxchars.0
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end13.if.end21_crit_edge
  %rxchars.1 = phi i32 [ %add, %if.then15 ], [ %rxchars.0, %if.end13.if.end21_crit_edge ]
  call fastcc void @max3100_sr(ptr noundef %add.ptr, i16 noundef zeroext 0, ptr noundef nonnull %rx)
  %16 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rx, align 2
  %call23 = tail call fastcc i32 @max3100_handlerx(ptr noundef %add.ptr, i16 noundef zeroext %17)
  %add24 = add i32 %call23, %rxchars.1
  %18 = and i16 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool26.not = icmp eq i16 %18, 0
  br i1 %tobool26.not, label %if.end21.if.end70_crit_edge, label %if.then27

if.end21.if.end70_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then27:                                        ; preds = %if.end21
  %19 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool29.not = icmp eq i8 %20, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %tx35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx35, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %tx35, align 4
  %23 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %x_char, align 4
  br label %if.then58

if.else:                                          ; preds = %if.then27
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %head, align 4
  %26 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp = icmp eq i32 %25, %27
  br i1 %cmp, label %if.else.if.end70_crit_edge, label %land.lhs.true

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

land.lhs.true:                                    ; preds = %if.else
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %land.lhs.true.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

land.lhs.true.uart_tx_stopped.exit_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %31, i32 0, i32 19, i32 1
  %32 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %stopped.i, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool3.not.i = icmp eq i8 %33, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.end70_crit_edge

land.lhs.true.i.if.end70_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %land.lhs.true.uart_tx_stopped.exit_crit_edge
  %34 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool4.not.i.not = icmp eq i32 %35, 0
  br i1 %tobool4.not.i.not, label %if.then42, label %uart_tx_stopped.exit.if.end70_crit_edge

uart_tx_stopped.exit.if.end70_crit_edge:          ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then42:                                        ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xmit1, align 4
  %arrayidx = getelementptr i8, ptr %37, i32 %27
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %add46 = add i32 %27, 1
  %and47 = and i32 %add46, 4095
  %40 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and47, ptr %tail, align 4
  %41 = ptrtoint ptr %tx35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx35, align 4
  %inc52 = add i32 %42, 1
  store i32 %inc52, ptr %tx35, align 4
  br label %if.then58

if.then58:                                        ; preds = %if.then42, %if.then30
  %tx.0.in = phi i8 [ %39, %if.then42 ], [ %20, %if.then30 ]
  %tx.0 = zext i8 %tx.0.in to i16
  %43 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %parity.i, align 4
  %and.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i158 = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i158, i16 255, i16 127
  %45 = and i16 %..i, %tx.0
  %and7.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.then58.max3100_calc_parity.exit_crit_edge, label %cond.false.i.i

if.then58.max3100_calc_parity.exit_crit_edge:     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_calc_parity.exit

cond.false.i.i:                                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  %conv72.i.i = zext i16 %45 to i32
  %call.i.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv72.i.i) #8
  %and.i.i = lshr i32 %44, 1
  %and.lobit92.i.i = xor i32 %call.i.i.i, %and.i.i
  %46 = trunc i32 %and.lobit92.i.i to i16
  %call.tr.i = shl i16 %46, 8
  %47 = and i16 %call.tr.i, 256
  %conv11.i = or i16 %47, %45
  br label %max3100_calc_parity.exit

max3100_calc_parity.exit:                         ; preds = %cond.false.i.i, %if.then58.max3100_calc_parity.exit_crit_edge
  %tx.1 = phi i16 [ %45, %if.then58.max3100_calc_parity.exit_crit_edge ], [ %conv11.i, %cond.false.i.i ]
  %48 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool60.not = icmp eq i32 %49, 0
  %or62 = select i1 %tobool60.not, i16 -32768, i16 -32256
  %or64 = or i16 %or62, %tx.1
  call fastcc void @max3100_sr(ptr noundef %add.ptr, i16 noundef zeroext %or64, ptr noundef nonnull %rx)
  %50 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %rx, align 2
  %call67 = tail call fastcc i32 @max3100_handlerx(ptr noundef %add.ptr, i16 noundef zeroext %51)
  %add68 = add i32 %call67, %add24
  br label %if.end70

if.end70:                                         ; preds = %max3100_calc_parity.exit, %uart_tx_stopped.exit.if.end70_crit_edge, %land.lhs.true.i.if.end70_crit_edge, %if.else.if.end70_crit_edge, %if.end21.if.end70_crit_edge
  %rxchars.2 = phi i32 [ %add68, %max3100_calc_parity.exit ], [ %add24, %if.end21.if.end70_crit_edge ], [ %add24, %if.else.if.end70_crit_edge ], [ %add24, %uart_tx_stopped.exit.if.end70_crit_edge ], [ %add24, %land.lhs.true.i.if.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rxchars.2)
  %cmp71 = icmp sgt i32 %rxchars.2, 16
  br i1 %cmp71, label %if.then73, label %if.end70.if.end77_crit_edge

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %state, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %53) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.end70.if.end77_crit_edge
  %rxchars.3 = phi i32 [ 0, %if.then73 ], [ %rxchars.2, %if.end70.if.end77_crit_edge ]
  %54 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %head, align 4
  %56 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tail, align 4
  %sub = sub i32 %55, %57
  %and80 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %cmp81 = icmp eq i32 %and80, 0
  br i1 %cmp81, label %if.then83, label %if.end77.do.cond86_crit_edge

if.end77.do.cond86_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond86

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @uart_write_wakeup(ptr noundef %add.ptr) #8
  br label %do.cond86

do.cond86:                                        ; preds = %if.then83, %if.end77.do.cond86_crit_edge
  %58 = ptrtoint ptr %force_end_work to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %force_end_work, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool87.not = icmp eq i32 %59, 0
  br i1 %tobool87.not, label %land.lhs.true88, label %do.cond86.do.end105_crit_edge

do.cond86.do.end105_crit_edge:                    ; preds = %do.cond86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105

land.lhs.true88:                                  ; preds = %do.cond86
  %60 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i159 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i159 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task, align 8
  %call.i.i.i160 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %64 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i161 = icmp eq i32 %64, 0
  br i1 %tobool.not.i161, label %land.lhs.true88.land.rhs_crit_edge, label %freezing.exit, !prof !169

land.lhs.true88.land.rhs_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

freezing.exit:                                    ; preds = %land.lhs.true88
  %call4.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %63) #8
  br i1 %call4.i, label %freezing.exit.do.end105_crit_edge, label %freezing.exit.land.rhs_crit_edge

freezing.exit.land.rhs_crit_edge:                 ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

freezing.exit.do.end105_crit_edge:                ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105

land.rhs:                                         ; preds = %freezing.exit.land.rhs_crit_edge, %land.lhs.true88.land.rhs_crit_edge
  %65 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %66)
  %tobool93.not = icmp sgt i16 %66, -1
  br i1 %tobool93.not, label %lor.rhs, label %land.rhs.do.body5.backedge_crit_edge

land.rhs.do.body5.backedge_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.backedge

lor.rhs:                                          ; preds = %land.rhs
  %67 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %head, align 4
  %69 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp96 = icmp eq i32 %68, %70
  br i1 %cmp96, label %lor.rhs.do.end105_crit_edge, label %land.rhs98

lor.rhs.do.end105_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105

land.rhs98:                                       ; preds = %lor.rhs
  %71 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %state, align 4
  %tty2.i164 = getelementptr inbounds %struct.tty_port, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %tty2.i164 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tty2.i164, align 4
  %tobool.not.i165 = icmp eq ptr %74, null
  br i1 %tobool.not.i165, label %land.rhs98.uart_tx_stopped.exit174_crit_edge, label %land.lhs.true.i168

land.rhs98.uart_tx_stopped.exit174_crit_edge:     ; preds = %land.rhs98
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit174

land.lhs.true.i168:                               ; preds = %land.rhs98
  %stopped.i166 = getelementptr inbounds %struct.tty_struct, ptr %74, i32 0, i32 19, i32 1
  %75 = ptrtoint ptr %stopped.i166 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %stopped.i166, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool3.not.i167 = icmp eq i8 %76, 0
  br i1 %tobool3.not.i167, label %land.lhs.true.i168.uart_tx_stopped.exit174_crit_edge, label %land.lhs.true.i168.do.end105_crit_edge

land.lhs.true.i168.do.end105_crit_edge:           ; preds = %land.lhs.true.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105

land.lhs.true.i168.uart_tx_stopped.exit174_crit_edge: ; preds = %land.lhs.true.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %uart_tx_stopped.exit174

uart_tx_stopped.exit174:                          ; preds = %land.lhs.true.i168.uart_tx_stopped.exit174_crit_edge, %land.rhs98.uart_tx_stopped.exit174_crit_edge
  %77 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool4.not.i170.not = icmp eq i32 %78, 0
  br i1 %tobool4.not.i170.not, label %uart_tx_stopped.exit174.do.body5.backedge_crit_edge, label %uart_tx_stopped.exit174.do.end105_crit_edge

uart_tx_stopped.exit174.do.end105_crit_edge:      ; preds = %uart_tx_stopped.exit174
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105

uart_tx_stopped.exit174.do.body5.backedge_crit_edge: ; preds = %uart_tx_stopped.exit174
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.backedge

do.body5.backedge:                                ; preds = %uart_tx_stopped.exit174.do.body5.backedge_crit_edge, %land.rhs.do.body5.backedge_crit_edge
  br label %do.body5

do.end105:                                        ; preds = %uart_tx_stopped.exit174.do.end105_crit_edge, %land.lhs.true.i168.do.end105_crit_edge, %lor.rhs.do.end105_crit_edge, %freezing.exit.do.end105_crit_edge, %do.cond86.do.end105_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rxchars.3)
  %cmp106 = icmp sgt i32 %rxchars.3, 0
  br i1 %cmp106, label %if.then108, label %do.end105.if.end112_crit_edge

do.end105.if.end112_crit_edge:                    ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then108:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %state, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %80) #8
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %do.end105.if.end112_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3100_irq(i32 noundef %irqno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_irq.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_irq, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_irq.__UNIQUE_ID_ddebug237, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.41) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %force_end_work.i = getelementptr inbounds %struct.max3100_port, ptr %dev_id, i32 0, i32 18
  %2 = ptrtoint ptr %force_end_work.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %force_end_work.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end.max3100_dowork.exit_crit_edge

do.end.max3100_dowork.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true.i:                                  ; preds = %do.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %8 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge, label %freezing.exit.i, !prof !169

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i:                                  ; preds = %land.lhs.true.i
  %call4.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %7) #8
  br i1 %call4.i.i, label %freezing.exit.i.max3100_dowork.exit_crit_edge, label %freezing.exit.i.land.lhs.true2.i_crit_edge

freezing.exit.i.land.lhs.true2.i_crit_edge:       ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i.max3100_dowork.exit_crit_edge:    ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

land.lhs.true2.i:                                 ; preds = %freezing.exit.i.land.lhs.true2.i_crit_edge, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %suspending.i = getelementptr inbounds %struct.max3100_port, ptr %dev_id, i32 0, i32 19
  %9 = ptrtoint ptr %suspending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %suspending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true2.i.max3100_dowork.exit_crit_edge

land.lhs.true2.i.max3100_dowork.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max3100_dowork.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i = getelementptr inbounds %struct.max3100_port, ptr %dev_id, i32 0, i32 16
  %11 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workqueue.i, align 4
  %work.i = getelementptr inbounds %struct.max3100_port, ptr %dev_id, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work.i) #8
  br label %max3100_dowork.exit

max3100_dowork.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.max3100_dowork.exit_crit_edge, %freezing.exit.i.max3100_dowork.exit_crit_edge, %do.end.max3100_dowork.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max3100_handlerx(ptr noundef %s, i16 noundef zeroext %rx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %rx to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %land.lhs.true

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true:                                    ; preds = %entry
  %rx_enabled = getelementptr inbounds %struct.max3100_port, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end40_crit_edge, label %do.body

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_handlerx.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_handlerx, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !168

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_handlerx.__UNIQUE_ID_ddebug235, ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.40) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %parity = getelementptr inbounds %struct.max3100_port, ptr %s, i32 0, i32 10
  %4 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parity, align 4
  %and7 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond = select i1 %tobool8.not, i32 255, i32 127
  %and9 = and i32 %cond, %conv
  %and11 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %frame = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 31, i32 6
  br label %if.end38

if.else:                                          ; preds = %do.end
  %and15 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else32, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %if.else
  %c.addr.0.v.i.i = select i1 %tobool8.not, i16 255, i16 127
  %c.addr.0.i.i = and i16 %c.addr.0.v.i.i, %rx
  %conv72.i.i = zext i16 %c.addr.0.i.i to i32
  %call.i.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv72.i.i) #8
  %and.i.i = lshr i32 %5, 1
  %and.lobit92.i.i = xor i32 %call.i.i.i, %and.i.i
  %xor.i.i = and i32 %and.lobit92.i.i, 1
  %6 = lshr i16 %rx, 8
  %7 = and i16 %6, 1
  %8 = xor i16 %7, 1
  %9 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i.i, i32 %9)
  %tobool19.not = icmp eq i32 %xor.i.i, %9
  br i1 %tobool19.not, label %if.else25, label %if.then20

if.then20:                                        ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx23 = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 31, i32 4
  br label %if.end38

if.else25:                                        ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %parity28 = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 31, i32 8
  br label %if.end38

if.else32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %rx35 = getelementptr inbounds %struct.uart_port, ptr %s, i32 0, i32 31, i32 4
  br label %if.end38

if.end38:                                         ; preds = %if.else32, %if.else25, %if.then20, %if.then13
  %rx35.sink74 = phi ptr [ %rx35, %if.else32 ], [ %parity28, %if.else25 ], [ %rx23, %if.then20 ], [ %frame, %if.then13 ]
  %status.0 = phi i32 [ 0, %if.else32 ], [ 1, %if.else25 ], [ 0, %if.then20 ], [ 2, %if.then13 ]
  %flg.0 = phi i32 [ 0, %if.else32 ], [ 3, %if.else25 ], [ 0, %if.then20 ], [ 2, %if.then13 ]
  %10 = ptrtoint ptr %rx35.sink74 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx35.sink74, align 4
  %inc36 = add i32 %11, 1
  store i32 %inc36, ptr %rx35.sink74, align 4
  tail call void @uart_insert_char(ptr noundef %s, i32 noundef %status.0, i32 noundef 4, i32 noundef %and9, i32 noundef %flg.0) #8
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %land.lhs.true.if.end40_crit_edge, %entry.if.end40_crit_edge
  %ret.0 = phi i32 [ 1, %if.end38 ], [ 0, %land.lhs.true.if.end40_crit_edge ], [ 0, %entry.if.end40_crit_edge ]
  %and42 = and i32 %conv, 512
  %and42.lobit = lshr exact i32 %and42, 9
  %cts44 = getelementptr inbounds %struct.max3100_port, ptr %s, i32 0, i32 2
  %12 = ptrtoint ptr %cts44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cts44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %and42.lobit)
  %cmp45.not = icmp eq i32 %13, %and42.lobit
  br i1 %cmp45.not, label %if.end40.if.end52_crit_edge, label %if.then47

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %cts44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and42.lobit, ptr %cts44, align 4
  %15 = lshr exact i32 %and42, 4
  tail call void @uart_handle_cts_change(ptr noundef %s, i32 noundef %15) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end40.if.end52_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3100_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %rx = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_suspend.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_suspend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_suspend.__UNIQUE_ID_ddebug257, ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.56) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #8
  %suspending = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %suspending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %suspending, align 4
  %call5 = tail call i32 @uart_suspend_port(ptr noundef nonnull @max3100_uart_driver, ptr noundef %1) #8
  %max3100_hw_suspend = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %max3100_hw_suspend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %max3100_hw_suspend, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8(i32 noundef 1) #8
  br label %if.end10

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rx) #8
  %9 = ptrtoint ptr %rx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %rx, align 2, !annotation !167
  call fastcc void @max3100_sr(ptr noundef %1, i16 noundef zeroext -12288, ptr noundef nonnull %rx)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx) #8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3100_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max3100_resume.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max3100_resume, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max3100_resume.__UNIQUE_ID_ddebug258, ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.57) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %max3100_hw_suspend = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %max3100_hw_suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %max3100_hw_suspend, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end.if.end8_crit_edge, label %if.then6

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(i32 noundef 0) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end.if.end8_crit_edge
  %call9 = tail call i32 @uart_resume_port(ptr noundef nonnull @max3100_uart_driver, ptr noundef %1) #8
  %suspending = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %suspending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %suspending, align 4
  %irq = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %8) #8
  %conf_commit = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %conf_commit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %conf_commit, align 4
  %workqueue = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workqueue, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %force_end_work.i = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %force_end_work.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %force_end_work.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then11.if.end12_crit_edge

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true.i:                                  ; preds = %if.then11
  %14 = tail call i32 @llvm.read_register.i32(metadata !157) #8
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %18 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge, label %freezing.exit.i, !prof !169

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i:                                  ; preds = %land.lhs.true.i
  %call4.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %17) #8
  br i1 %call4.i.i, label %freezing.exit.i.if.end12_crit_edge, label %freezing.exit.i.land.lhs.true2.i_crit_edge

freezing.exit.i.land.lhs.true2.i_crit_edge:       ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true2.i

freezing.exit.i.if.end12_crit_edge:               ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true2.i:                                 ; preds = %freezing.exit.i.land.lhs.true2.i_crit_edge, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %19 = ptrtoint ptr %suspending to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %suspending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not.i = icmp eq i32 %20, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true2.i.if.end12_crit_edge

land.lhs.true2.i.if.end12_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workqueue, align 4
  %work.i = getelementptr inbounds %struct.max3100_port, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work.i) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %land.lhs.true2.i.if.end12_crit_edge, %freezing.exit.i.if.end12_crit_edge, %if.then11.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !91, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !138, !139, !141, !142, !144, !145, !146, !148, !149, !151, !153, !154, !156}
!llvm.named.register.sp = !{!157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__initcall__kmod_max3100__259_901_max3100_driver_init6, !1, !"__initcall__kmod_max3100__259_901_max3100_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/max3100.c", i32 901, i32 1}
!2 = !{ptr @__exitcall_max3100_driver_exit, !1, !"__exitcall_max3100_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description260, !4, !"__UNIQUE_ID_description260", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/max3100.c", i32 903, i32 1}
!5 = !{ptr @__UNIQUE_ID_author261, !6, !"__UNIQUE_ID_author261", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/max3100.c", i32 904, i32 1}
!7 = !{ptr @__UNIQUE_ID_file262, !8, !"__UNIQUE_ID_file262", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/max3100.c", i32 905, i32 1}
!9 = !{ptr @__UNIQUE_ID_license263, !8, !"__UNIQUE_ID_license263", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias264, !11, !"__UNIQUE_ID_alias264", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/max3100.c", i32 906, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/max3100.c", i32 894, i32 12}
!14 = !{ptr @max3100_driver, !15, !"max3100_driver", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/max3100.c", i32 892, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/max3100.c", i32 746, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max3100_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @max3100_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/max3100.c", i32 756, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @max3100_probe._entry.4, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @max3100_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/max3100.c", i32 763, i32 3}
!30 = !{ptr @max3100_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @max3100_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @max3100_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/tty/serial/max3100.c", i32 770, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @max3100_probe.__key.13, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/max3100.c", i32 780, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/max3100.c", i32 782, i32 2}
!40 = !{ptr @max3100_probe.__UNIQUE_ID_ddebug254, !39, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/max3100.c", i32 793, i32 3}
!43 = !{ptr @max3100_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @max3100_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/max3100.c", i32 137, i32 8}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @max3100s_lock, !46, !"max3100s_lock", i1 false, i1 false}
!49 = distinct !{null, !50, !"uart_driver_registered", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/max3100.c", i32 732, i32 12}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/max3100.c", i32 726, i32 20}
!53 = !{ptr @max3100_uart_driver, !54, !"max3100_uart_driver", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/max3100.c", i32 724, i32 27}
!55 = !{ptr @max3100s, !56, !"max3100s", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/max3100.c", i32 136, i32 29}
!57 = !{ptr @max3100_ops, !58, !"max3100_ops", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/max3100.c", i32 705, i32 30}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/max3100.c", i32 378, i32 2}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @max3100_tx_empty.__UNIQUE_ID_ddebug241, !60, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/max3100.c", i32 406, i32 2}
!65 = !{ptr @max3100_set_mctrl.__UNIQUE_ID_ddebug243, !64, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/max3100.c", i32 391, i32 2}
!68 = !{ptr @max3100_get_mctrl.__UNIQUE_ID_ddebug242, !67, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/max3100.c", i32 683, i32 2}
!71 = !{ptr @max3100_stop_tx.__UNIQUE_ID_ddebug251, !70, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/tty/serial/max3100.c", i32 351, i32 2}
!74 = !{ptr @max3100_start_tx.__UNIQUE_ID_ddebug239, !73, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/max3100.c", i32 362, i32 2}
!77 = !{ptr @max3100_stop_rx.__UNIQUE_ID_ddebug240, !76, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tty/serial/max3100.c", i32 342, i32 2}
!80 = !{ptr @max3100_enable_ms.__UNIQUE_ID_ddebug238, !79, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/tty/serial/max3100.c", i32 702, i32 2}
!83 = !{ptr @max3100_break_ctl.__UNIQUE_ID_ddebug253, !82, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/max3100.c", i32 582, i32 2}
!86 = !{ptr @max3100_startup.__UNIQUE_ID_ddebug246, !85, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/tty/serial/max3100.c", i32 595, i32 13}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/tty/serial/max3100.c", i32 596, i32 17}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/tty/serial/max3100.c", i32 598, i32 3}
!93 = !{ptr @max3100_startup._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @max3100_startup._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @max3100_startup.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/tty/serial/max3100.c", i32 601, i32 2}
!97 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/tty/serial/max3100.c", i32 605, i32 3}
!100 = !{ptr @max3100_startup._entry.36, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @max3100_startup._entry_ptr.38, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/tty/serial/max3100.c", i32 264, i32 2}
!104 = !{ptr @max3100_work.__UNIQUE_ID_ddebug236, !103, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/tty/serial/max3100.c", i32 222, i32 3}
!107 = !{ptr @max3100_handlerx.__UNIQUE_ID_ddebug235, !106, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/tty/serial/max3100.c", i32 328, i32 2}
!110 = !{ptr @max3100_irq.__UNIQUE_ID_ddebug237, !109, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/tty/serial/max3100.c", i32 546, i32 2}
!113 = !{ptr @max3100_shutdown.__UNIQUE_ID_ddebug245, !112, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/tty/serial/max3100.c", i32 430, i32 2}
!116 = !{ptr @max3100_set_termios.__UNIQUE_ID_ddebug244, !115, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/tty/serial/max3100.c", i32 636, i32 2}
!119 = !{ptr @max3100_type.__UNIQUE_ID_ddebug247, !118, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/tty/serial/max3100.c", i32 638, i32 40}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/tty/serial/max3100.c", i32 647, i32 2}
!124 = !{ptr @max3100_release_port.__UNIQUE_ID_ddebug248, !123, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/tty/serial/max3100.c", i32 692, i32 2}
!127 = !{ptr @max3100_request_port.__UNIQUE_ID_ddebug252, !126, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/tty/serial/max3100.c", i32 656, i32 2}
!130 = !{ptr @max3100_config_port.__UNIQUE_ID_ddebug249, !129, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/tty/serial/max3100.c", i32 670, i32 2}
!133 = !{ptr @max3100_verify_port.__UNIQUE_ID_ddebug250, !132, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/tty/serial/max3100.c", i32 207, i32 3}
!136 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @max3100_sr._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @max3100_sr._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/tty/serial/max3100.c", i32 212, i32 2}
!141 = !{ptr @max3100_sr.__UNIQUE_ID_ddebug234, !140, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/tty/serial/max3100.c", i32 818, i32 4}
!144 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @max3100_remove.__UNIQUE_ID_ddebug255, !143, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/tty/serial/max3100.c", i32 833, i32 2}
!148 = !{ptr @max3100_remove.__UNIQUE_ID_ddebug256, !147, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!149 = !{ptr @max3100_pm_ops, !150, !"max3100_pm_ops", i1 false, i1 false}
!150 = !{!"../drivers/tty/serial/max3100.c", i32 885, i32 8}
!151 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/tty/serial/max3100.c", i32 846, i32 2}
!153 = !{ptr @max3100_suspend.__UNIQUE_ID_ddebug257, !152, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!154 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/tty/serial/max3100.c", i32 869, i32 2}
!156 = !{ptr @max3100_resume.__UNIQUE_ID_ddebug258, !155, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!157 = !{!"sp"}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{!"auto-init"}
!168 = !{i64 2148775756, i64 2148775761, i64 2148775774, i64 2148775818, i64 2148775852, i64 2148775873}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{i8 0, i8 2}
