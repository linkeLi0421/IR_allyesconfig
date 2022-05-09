; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/sdio_uart.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio_uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.sdio_func_tuple = type { ptr, i8, i8, [0 x i8] }
%struct.sdio_uart_port = type { %struct.tty_port, i32, ptr, %struct.mutex, ptr, i32, %struct.kfifo, %struct.spinlock, %struct.uart_icount, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kfifo = type { %union.anon.74, [0 x i8] }
%union.anon.74 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@sdio_uart_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str, ptr @sdio_uart_ids, ptr @sdio_uart_probe, ptr @sdio_uart_remove, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@sdio_uart_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_sdio_uart__231_1179_sdio_uart_init6 = internal global ptr @sdio_uart_init, section ".initcall6.init", align 4
@__exitcall_sdio_uart_exit = internal global ptr @sdio_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [31 x i8] c"sdio_uart.author=Nicolas Pitre\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [42 x i8] c"sdio_uart.file=drivers/mmc/core/sdio_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [22 x i8] c"sdio_uart.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio_uart\00", [22 x i8] zeroinitializer }, align 32
@sdio_uart_ids = internal constant { [3 x %struct.sdio_device_id], [60 x i8] } { [3 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 1, i16 -1, i16 -1, i32 0 }, %struct.sdio_device_id { i8 4, i16 -1, i16 -1, i32 0 }, %struct.sdio_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@sdio_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: need info on UART class basic setup\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdio_uart_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mmc/core/sdio_uart.c\00", [35 x i8] zeroinitializer }, align 32
@sdio_uart_probe._entry_ptr = internal global ptr @sdio_uart_probe._entry, section ".printk_index", align 4
@sdio_uart_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014%s: can't find tuple 0x91 subtuple 0 (SUBTPL_SIOREG) for GPS class\0A\00", [58 x i8] zeroinitializer }, align 32
@sdio_uart_probe._entry_ptr.6 = internal global ptr @sdio_uart_probe._entry.4, section ".printk_index", align 4
@sdio_uart_probe.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Register ID = 0x%02x, Exp ID = 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@sdio_uart_probe.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 1, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: regs offset = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@sdio_uart_probe.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 1, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: clk %d baudcode %u 4800-div %u\0A\00", [60 x i8] zeroinitializer }, align 32
@sdio_uart_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr @uart_carrier_raised, ptr @uart_dtr_rts, ptr @sdio_uart_shutdown, ptr @sdio_uart_activate, ptr @sdio_uart_port_destroy }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sdio_uart_add_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&port->func_lock\00", [47 x i8] zeroinitializer }, align 32
@sdio_uart_add_port.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&port->write_lock\00", [46 x i8] zeroinitializer }, align 32
@sdio_uart_table_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sdio_uart_table = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdio_uart_table_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ttySDIO\00", [24 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@sdio_uart_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @sdio_uart_install, ptr null, ptr @sdio_uart_open, ptr @sdio_uart_close, ptr null, ptr @sdio_uart_cleanup, ptr @sdio_uart_write, ptr null, ptr null, ptr @sdio_uart_write_room, ptr @sdio_uart_chars_in_buffer, ptr null, ptr null, ptr @sdio_uart_set_termios, ptr @sdio_uart_throttle, ptr @sdio_uart_unthrottle, ptr null, ptr null, ptr @sdio_uart_hangup, ptr @sdio_uart_break_ctl, ptr null, ptr null, ptr null, ptr @sdio_uart_send_xchar, ptr @sdio_uart_tiocmget, ptr @sdio_uart_tiocmset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdio_uart_proc_show }, [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"serinfo:1.0 driver%s%s revision:%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d: uart:SDIO\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" tx:%d rx:%d\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" fe:%d\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" pe:%d\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" brk:%d\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" oe:%d\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" cts:%d\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" dsr:%d\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" rng:%d\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" dcd:%d\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"sdio_uart_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1126, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"sdio_uart_tty_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1034, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1129, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"sdio_uart_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1118, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1047, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1066, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1071, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1076, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1081, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"sdio_uart_port_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1007, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 90, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 91, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [21 x i8] c"sdio_uart_table_lock\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"sdio_uart_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 83, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 84, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1144, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"sdio_uart_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1015, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 966, i32 16 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 967, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 971, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 973, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 976, i32 20 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 979, i32 20 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 982, i32 20 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 985, i32 20 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 988, i32 20 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 991, i32 20 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 994, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [32 x i8] c"../drivers/mmc/core/sdio_uart.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 997, i32 20 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_sdio_uart_exit, ptr @__initcall__kmod_sdio_uart__231_1179_sdio_uart_init6, ptr @sdio_uart_exit, ptr @sdio_uart_probe._entry, ptr @sdio_uart_probe._entry.4, ptr @sdio_uart_probe._entry_ptr, ptr @sdio_uart_probe._entry_ptr.6, ptr @sdio_uart_driver, ptr @sdio_uart_tty_driver, ptr @.str, ptr @sdio_uart_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sdio_uart_port_ops, ptr @sdio_uart_add_port.__key, ptr @.str.10, ptr @sdio_uart_add_port.__key.11, ptr @.str.12, ptr @sdio_uart_table_lock, ptr @sdio_uart_table, ptr @.str.13, ptr @.str.14, ptr @sdio_uart_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_uart_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_uart_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_uart_ids to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_uart_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_uart_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_uart_add_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_uart_add_port.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_uart_table_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_uart_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_uart_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_unregister_driver(ptr noundef nonnull @sdio_uart_driver) #9
  %0 = load ptr, ptr @sdio_uart_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #9
  %1 = load ptr, ptr @sdio_uart_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_uart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 8, ptr noundef null, i32 noundef 12) #9
  store ptr %call, ptr @sdio_uart_tty_driver, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.14, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 11
  %6 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 36)
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3260, ptr %c_cflag, align 4
  %c_ispeed = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 6
  %9 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4800, ptr %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 7
  %10 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4800, ptr %c_ospeed, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 20
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sdio_uart_ops, ptr %ops.i, align 4
  %call6 = tail call i32 @tty_register_driver(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.err1_crit_edge

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @sdio_register_driver(ptr noundef nonnull @sdio_uart_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %err2

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err2:                                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_unregister_driver(ptr noundef %call) #9
  br label %err1

err1:                                             ; preds = %err2, %if.end.err1_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.err1_crit_edge ], [ %call9, %err2 ]
  tail call void @tty_driver_kref_put(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.0, %err1 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_uart_probe(ptr noundef %func, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 812) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup144_crit_edge, label %if.end

entry.cleanup144_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup144

if.end:                                           ; preds = %entry
  %class = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 4
  %1 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %class, align 8
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %if.else124 [
    i8 1, label %do.end
    i8 4, label %if.then9
  ]

do.end:                                           ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i196 = phi ptr [ %7, %if.end.i ], [ %5, %do.end.dev_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i196) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup144

if.then9:                                         ; preds = %if.end
  %tuples = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 16
  %8 = ptrtoint ptr %tuples to i32
  call void @__asan_load4_noabort(i32 %8)
  %tpl.0231 = load ptr, ptr %tuples, align 4
  %tobool10.not232 = icmp eq ptr %tpl.0231, null
  br i1 %tobool10.not232, label %if.then9.do.end30.critedge_crit_edge, label %if.then9.for.body_crit_edge

if.then9.for.body_crit_edge:                      ; preds = %if.then9
  br label %for.body

if.then9.do.end30.critedge_crit_edge:             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then9.for.body_crit_edge
  %tpl.0233 = phi ptr [ %tpl.0, %for.inc.for.body_crit_edge ], [ %tpl.0231, %if.then9.for.body_crit_edge ]
  %code = getelementptr inbounds %struct.sdio_func_tuple, ptr %tpl.0233, i32 0, i32 1
  %9 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -111, i8 %10)
  %cmp12.not = icmp eq i8 %10, -111
  br i1 %cmp12.not, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %size = getelementptr inbounds %struct.sdio_func_tuple, ptr %tpl.0233, i32 0, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp17 = icmp ult i8 %12, 10
  br i1 %cmp17, label %if.end15.for.inc_crit_edge, label %if.end20

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end20:                                         ; preds = %if.end15
  %arrayidx = getelementptr %struct.sdio_func_tuple, ptr %tpl.0233, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp22 = icmp eq i8 %14, 0
  br i1 %cmp22, label %do.body36, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end20.for.inc_crit_edge, %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %tpl.0233 to i32
  call void @__asan_load4_noabort(i32 %15)
  %tpl.0 = load ptr, ptr %tpl.0233, align 4
  %tobool10.not = icmp eq ptr %tpl.0, null
  br i1 %tobool10.not, label %for.inc.do.end30.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end30.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.critedge

do.end30.critedge:                                ; preds = %for.inc.do.end30.critedge_crit_edge, %if.then9.do.end30.critedge_crit_edge
  %init_name.i197 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %init_name.i197 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i197, align 8
  %tobool.not.i198 = icmp eq ptr %17, null
  br i1 %tobool.not.i198, label %if.end.i199, label %do.end30.critedge.cleanup.thread_crit_edge

do.end30.critedge.cleanup.thread_crit_edge:       ; preds = %do.end30.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end.i199:                                      ; preds = %do.end30.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %dev32 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %18 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev32, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.i199, %do.end30.critedge.cleanup.thread_crit_edge
  %retval.0.i200 = phi ptr [ %19, %if.end.i199 ], [ %17, %do.end30.critedge.cleanup.thread_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %retval.0.i200) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup144

do.body36:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdio_uart_probe.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdio_uart_probe, %if.then42)) #9
          to label %do.end53 [label %if.then42], !srcloc !87

if.then42:                                        ; preds = %do.body36
  %init_name.i202 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %init_name.i202 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i202, align 8
  %tobool.not.i203 = icmp eq ptr %21, null
  br i1 %tobool.not.i203, label %if.end.i204, label %if.then42.dev_name.exit206_crit_edge

if.then42.dev_name.exit206_crit_edge:             ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit206

if.end.i204:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %dev43 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %22 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev43, align 4
  br label %dev_name.exit206

dev_name.exit206:                                 ; preds = %if.end.i204, %if.then42.dev_name.exit206_crit_edge
  %retval.0.i205 = phi ptr [ %23, %if.end.i204 ], [ %21, %if.then42.dev_name.exit206_crit_edge ]
  %data45 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tpl.0233, i32 0, i32 3
  %arrayidx46 = getelementptr %struct.sdio_func_tuple, ptr %tpl.0233, i32 1
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx46, align 2
  %conv47 = zext i8 %25 to i32
  %arrayidx49 = getelementptr [0 x i8], ptr %data45, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdio_uart_probe.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i205, i32 noundef %conv47, i32 noundef %conv50) #9
  br label %do.end53

do.end53:                                         ; preds = %dev_name.exit206, %do.body36
  %data54 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tpl.0233, i32 0, i32 3
  %arrayidx55 = getelementptr [0 x i8], ptr %data54, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx55, align 2
  %conv56 = zext i8 %29 to i32
  %arrayidx58 = getelementptr [0 x i8], ptr %data54, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %31 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %or = or i32 %shl60, %conv56
  %arrayidx62 = getelementptr %struct.sdio_func_tuple, ptr %tpl.0233, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx62, align 2
  %conv63 = zext i8 %33 to i32
  %shl64 = shl nuw nsw i32 %conv63, 16
  %or65 = or i32 %or, %shl64
  %regs_offset = getelementptr inbounds %struct.sdio_uart_port, ptr %call7.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %regs_offset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or65, ptr %regs_offset, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdio_uart_probe.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdio_uart_probe, %if.then78)) #9
          to label %do.end84 [label %if.then78], !srcloc !87

if.then78:                                        ; preds = %do.end53
  %init_name.i207 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %init_name.i207 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i207, align 8
  %tobool.not.i208 = icmp eq ptr %36, null
  br i1 %tobool.not.i208, label %if.end.i209, label %if.then78.dev_name.exit211_crit_edge

if.then78.dev_name.exit211_crit_edge:             ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit211

if.end.i209:                                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  %dev79 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %37 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev79, align 4
  br label %dev_name.exit211

dev_name.exit211:                                 ; preds = %if.end.i209, %if.then78.dev_name.exit211_crit_edge
  %retval.0.i210 = phi ptr [ %38, %if.end.i209 ], [ %36, %if.then78.dev_name.exit211_crit_edge ]
  %39 = ptrtoint ptr %regs_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %regs_offset, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdio_uart_probe.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i210, i32 noundef %40) #9
  br label %do.end84

do.end84:                                         ; preds = %dev_name.exit211, %do.end53
  %arrayidx86 = getelementptr %struct.sdio_func_tuple, ptr %tpl.0233, i32 1, i32 2
  %41 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %42 to i32
  %mul = mul nuw nsw i32 %conv87, 115200
  %uartclk = getelementptr inbounds %struct.sdio_uart_port, ptr %call7.i.i, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp89 = icmp eq i8 %42, 0
  %spec.select = select i1 %cmp89, i32 115200, i32 %mul
  %43 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select, ptr %uartclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdio_uart_probe.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdio_uart_probe, %if.then106)) #9
          to label %if.end126 [label %if.then106], !srcloc !87

if.then106:                                       ; preds = %do.end84
  %init_name.i212 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %init_name.i212 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i212, align 8
  %tobool.not.i213 = icmp eq ptr %45, null
  br i1 %tobool.not.i213, label %if.end.i214, label %if.then106.dev_name.exit216_crit_edge

if.then106.dev_name.exit216_crit_edge:            ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit216

if.end.i214:                                      ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  %dev107 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %46 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev107, align 4
  br label %dev_name.exit216

dev_name.exit216:                                 ; preds = %if.end.i214, %if.then106.dev_name.exit216_crit_edge
  %retval.0.i215 = phi ptr [ %47, %if.end.i214 ], [ %45, %if.then106.dev_name.exit216_crit_edge ]
  %48 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %uartclk, align 4
  %50 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx86, align 1
  %conv112 = zext i8 %51 to i32
  %arrayidx114 = getelementptr %struct.sdio_func_tuple, ptr %tpl.0233, i32 1, i32 3
  %52 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx114, align 2
  %conv115 = zext i8 %53 to i32
  %arrayidx117 = getelementptr %struct.sdio_func_tuple, ptr %tpl.0233, i32 1, i32 3, i32 1
  %54 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %55 to i32
  %shl119 = shl nuw nsw i32 %conv118, 8
  %or120 = or i32 %shl119, %conv115
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdio_uart_probe.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i215, i32 noundef %49, i32 noundef %conv112, i32 noundef %or120) #9
  br label %if.end126

if.else124:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup144

if.end126:                                        ; preds = %dev_name.exit216, %do.end84
  %func127 = getelementptr inbounds %struct.sdio_uart_port, ptr %call7.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %func127 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %func, ptr %func127, align 4
  %dev128 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %57 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  tail call void @tty_port_init(ptr noundef nonnull %call7.i.i) #9
  %ops = getelementptr inbounds %struct.tty_port, ptr %call7.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @sdio_uart_port_ops, ptr %ops, align 8
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %func_lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @sdio_uart_add_port.__key) #9
  %write_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %write_lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @sdio_uart_add_port.__key.11, i16 noundef signext 3) #9
  %xmit_fifo.i = getelementptr inbounds %struct.sdio_uart_port, ptr %call7.i.i, i32 0, i32 6
  %call4.i = tail call i32 @__kfifo_alloc(ptr noundef %xmit_fifo.i, i32 noundef 4096, i32 noundef 1, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i217 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i217, label %if.end.i218, label %if.end126.if.then133_crit_edge

if.end126.if.then133_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then133

if.end.i218:                                      ; preds = %if.end126
  tail call void @_raw_spin_lock(ptr noundef nonnull @sdio_uart_table_lock) #9
  %59 = load ptr, ptr @sdio_uart_table, align 4
  %tobool6.not.i = icmp eq ptr %59, null
  br i1 %tobool6.not.i, label %if.end.i218.if.else134_crit_edge, label %for.inc.i

if.end.i218.if.else134_crit_edge:                 ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else134

for.inc.i:                                        ; preds = %if.end.i218
  %60 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 1), align 4
  %tobool6.not.1.i = icmp eq ptr %60, null
  br i1 %tobool6.not.1.i, label %for.inc.i.if.else134_crit_edge, label %for.inc.1.i

for.inc.i.if.else134_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else134

for.inc.1.i:                                      ; preds = %for.inc.i
  %61 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 2), align 4
  %tobool6.not.2.i = icmp eq ptr %61, null
  br i1 %tobool6.not.2.i, label %for.inc.1.i.if.else134_crit_edge, label %for.inc.2.i

for.inc.1.i.if.else134_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else134

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %62 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 3), align 4
  %tobool6.not.3.i = icmp eq ptr %62, null
  br i1 %tobool6.not.3.i, label %for.inc.2.i.if.else134_crit_edge, label %for.inc.3.i

for.inc.2.i.if.else134_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else134

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %63 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 4), align 4
  %tobool6.not.4.i = icmp eq ptr %63, null
  br i1 %tobool6.not.4.i, label %for.inc.3.i.if.else134_crit_edge, label %for.inc.4.i

for.inc.3.i.if.else134_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else134

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %64 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 5), align 4
  %tobool6.not.5.i = icmp eq ptr %64, null
  br i1 %tobool6.not.5.i, label %for.inc.4.i.if.else134_crit_edge, label %for.inc.5.i

for.inc.4.i.if.else134_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else134

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %65 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 6), align 4
  %tobool6.not.6.i = icmp eq ptr %65, null
  br i1 %tobool6.not.6.i, label %for.inc.5.i.if.else134_crit_edge, label %for.inc.6.i

for.inc.5.i.if.else134_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else134

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %66 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 7), align 4
  %tobool6.not.7.i = icmp eq ptr %66, null
  br i1 %tobool6.not.7.i, label %for.inc.6.i.if.else134_crit_edge, label %sdio_uart_add_port.exit

for.inc.6.i.if.else134_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else134

sdio_uart_add_port.exit:                          ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sdio_uart_table_lock) #9
  br label %if.then133

if.then133:                                       ; preds = %sdio_uart_add_port.exit, %if.end126.if.then133_crit_edge
  %retval.0.i219225 = phi i32 [ -16, %sdio_uart_add_port.exit ], [ -12, %if.end126.if.then133_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup144

if.else134:                                       ; preds = %for.inc.6.i.if.else134_crit_edge, %for.inc.5.i.if.else134_crit_edge, %for.inc.4.i.if.else134_crit_edge, %for.inc.3.i.if.else134_crit_edge, %for.inc.2.i.if.else134_crit_edge, %for.inc.1.i.if.else134_crit_edge, %for.inc.i.if.else134_crit_edge, %if.end.i218.if.else134_crit_edge
  %index.021.lcssa.i = phi i32 [ 0, %if.end.i218.if.else134_crit_edge ], [ 1, %for.inc.i.if.else134_crit_edge ], [ 2, %for.inc.1.i.if.else134_crit_edge ], [ 3, %for.inc.2.i.if.else134_crit_edge ], [ 4, %for.inc.3.i.if.else134_crit_edge ], [ 5, %for.inc.4.i.if.else134_crit_edge ], [ 6, %for.inc.5.i.if.else134_crit_edge ], [ 7, %for.inc.6.i.if.else134_crit_edge ]
  %arrayidx.lcssa.i = phi ptr [ @sdio_uart_table, %if.end.i218.if.else134_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 1), %for.inc.i.if.else134_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 2), %for.inc.1.i.if.else134_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 3), %for.inc.2.i.if.else134_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 4), %for.inc.3.i.if.else134_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 5), %for.inc.4.i.if.else134_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 6), %for.inc.5.i.if.else134_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @sdio_uart_table, i32 0, i32 7), %for.inc.6.i.if.else134_crit_edge ]
  %index8.i = getelementptr inbounds %struct.sdio_uart_port, ptr %call7.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %index8.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %index.021.lcssa.i, ptr %index8.i, align 8
  %68 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i, ptr %arrayidx.lcssa.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sdio_uart_table_lock) #9
  %69 = load ptr, ptr @sdio_uart_tty_driver, align 4
  %70 = ptrtoint ptr %index8.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index8.i, align 8
  %call138 = tail call ptr @tty_port_register_device(ptr noundef nonnull %call7.i.i, ptr noundef %69, i32 noundef %71, ptr noundef %dev128) #9
  %cmp.i = icmp ugt ptr %call138, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then140, label %if.else134.cleanup144_crit_edge

if.else134.cleanup144_crit_edge:                  ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup144

if.then140:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sdio_uart_port_remove(ptr noundef nonnull %call7.i.i)
  %72 = ptrtoint ptr %call138 to i32
  br label %cleanup144

cleanup144:                                       ; preds = %if.then140, %if.else134.cleanup144_crit_edge, %if.then133, %if.else124, %cleanup.thread, %dev_name.exit, %entry.cleanup144_crit_edge
  %retval.1 = phi i32 [ -38, %dev_name.exit ], [ -22, %if.else124 ], [ -12, %entry.cleanup144_crit_edge ], [ %retval.0.i219225, %if.then133 ], [ %72, %if.then140 ], [ 0, %if.else134.cleanup144_crit_edge ], [ -22, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_remove(ptr nocapture noundef readonly %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = load ptr, ptr @sdio_uart_tty_driver, align 4
  %index = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  tail call void @tty_unregister_device(ptr noundef %2, i32 noundef %4) #9
  tail call fastcc void @sdio_uart_port_remove(ptr noundef %1)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdio_uart_port_remove(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @sdio_uart_table_lock) #9
  %index = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [8 x ptr], ptr @sdio_uart_table, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sdio_uart_table_lock) #9
  %mutex = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %func_lock = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock, i32 noundef 0) #9
  %func2 = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func2, align 4
  tail call void @sdio_claim_host(ptr noundef %4) #9
  %5 = ptrtoint ptr %func2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %func2, align 4
  tail call void @mutex_unlock(ptr noundef %func_lock) #9
  tail call void @tty_port_tty_hangup(ptr noundef %port, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %call = tail call i32 @sdio_release_irq(ptr noundef %4) #9
  %call8 = tail call i32 @sdio_disable_func(ptr noundef %4) #9
  tail call void @sdio_release_host(ptr noundef %4) #9
  tail call void @tty_port_put(ptr noundef %port) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uart_carrier_raised(ptr noundef %tport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 2
  %0 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %entry
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 4
  %2 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %3, %7
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %1) #9
  br label %if.end

sdio_uart_claim_func.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then11.i, %if.end.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  %8 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 5
  %10 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regs_offset.i.i, align 4
  %add.i.i = add i32 %11, 6
  %call.i.i = tail call zeroext i8 @sdio_readb(ptr noundef %9, i32 noundef %add.i.i, ptr noundef null) #9
  %12 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i10 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i10 to ptr
  %task.i11 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i11, align 8
  %cmp.not.i12 = icmp eq ptr %13, %17
  br i1 %cmp.not.i12, label %if.end.sdio_uart_release_func.exit_crit_edge, label %if.then.i, !prof !88

if.end.sdio_uart_release_func.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdio_uart_release_func.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %19) #9
  br label %sdio_uart_release_func.exit

sdio_uart_release_func.exit:                      ; preds = %if.then.i, %if.end.sdio_uart_release_func.exit_crit_edge
  %call.i.i.lobit = lshr i8 %call.i.i, 7
  %20 = zext i8 %call.i.i.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %sdio_uart_release_func.exit, %sdio_uart_claim_func.exit
  %retval.0 = phi i32 [ 1, %sdio_uart_claim_func.exit ], [ %20, %sdio_uart_release_func.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uart_dtr_rts(ptr noundef %tport, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 2
  %0 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %entry
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 4
  %2 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %3, %7
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %1) #9
  br label %if.end

sdio_uart_claim_func.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then11.i, %if.end.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %cmp = icmp eq i32 %onoff, 0
  %mctrl.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 10
  %8 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mctrl.i, align 4
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %and.i = and i32 %9, -7
  %10 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i, ptr %mctrl.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and.i)
  %cmp.not.i7 = icmp eq i32 %9, %and.i
  br i1 %cmp.not.i7, label %if.then1.if.end2_crit_edge, label %if.then.i

if.then1.if.end2_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i.i = lshr i32 %9, 11
  %11 = trunc i32 %and9.i.i to i8
  %12 = and i8 %11, 28
  br label %if.end2.sink.split

if.else:                                          ; preds = %if.end
  %or.i = or i32 %9, 6
  %13 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i, ptr %mctrl.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %or.i)
  %cmp.not.i10 = icmp eq i32 %9, %or.i
  br i1 %cmp.not.i10, label %if.else.if.end2_crit_edge, label %if.then.i15

if.else.if.end2_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then.i15:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i.i11 = lshr i32 %9, 11
  %14 = trunc i32 %and9.i.i11 to i8
  %15 = and i8 %14, 28
  %16 = or i8 %15, 3
  br label %if.end2.sink.split

if.end2.sink.split:                               ; preds = %if.then.i15, %if.then.i
  %.sink27 = phi i8 [ %16, %if.then.i15 ], [ %12, %if.then.i ]
  %17 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i.i13 = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 5
  %19 = ptrtoint ptr %regs_offset.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regs_offset.i.i.i13, align 4
  %add.i.i.i14 = add i32 %20, 4
  tail call void @sdio_writeb(ptr noundef %18, i8 noundef zeroext %.sink27, i32 noundef %add.i.i.i14, ptr noundef null) #9
  br label %if.end2

if.end2:                                          ; preds = %if.end2.sink.split, %if.else.if.end2_crit_edge, %if.then1.if.end2_crit_edge
  %21 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %23 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i19 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i19 to ptr
  %task.i20 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i20, align 8
  %cmp.not.i21 = icmp eq ptr %22, %26
  br i1 %cmp.not.i21, label %if.end2.cleanup_crit_edge, label %if.then.i23, !prof !88

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i23:                                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i23, %if.end2.cleanup_crit_edge, %sdio_uart_claim_func.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_shutdown(ptr noundef %tport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 2
  %0 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %entry
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 4
  %2 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %3, %7
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %1) #9
  br label %if.end

sdio_uart_claim_func.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then11.i, %if.end.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  %ier.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 15
  %8 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ier.i, align 1
  %10 = and i8 %9, -5
  store i8 %10, ptr %ier.i, align 1
  %read_status_mask.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 12
  %11 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read_status_mask.i, align 4
  %and2.i = and i32 %12, -2
  store i32 %and2.i, ptr %read_status_mask.i, align 4
  %13 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 5
  %15 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regs_offset.i.i, align 4
  %add.i.i = add i32 %16, 1
  tail call void @sdio_writeb(ptr noundef %14, i8 noundef zeroext %10, i32 noundef %add.i.i, ptr noundef null) #9
  %17 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func.i, align 4
  %call1 = tail call i32 @sdio_release_irq(ptr noundef %18) #9
  %19 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ier.i, align 1
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %func.i, align 4
  %22 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regs_offset.i.i, align 4
  %add.i = add i32 %23, 1
  tail call void @sdio_writeb(ptr noundef %21, i8 noundef zeroext 0, i32 noundef %add.i, ptr noundef null) #9
  %mctrl.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 10
  %24 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mctrl.i, align 4
  %and.i = and i32 %25, -16385
  store i32 %and.i, ptr %mctrl.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %and.i)
  %cmp.not.i21 = icmp eq i32 %25, %and.i
  br i1 %cmp.not.i21, label %if.end.sdio_uart_update_mctrl.exit_crit_edge, label %if.then.i

if.end.sdio_uart_update_mctrl.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdio_uart_update_mctrl.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = trunc i32 %25 to i8
  %27 = lshr i8 %26, 1
  %28 = and i8 %27, 3
  %and9.i.i = lshr i32 %and.i, 11
  %29 = trunc i32 %and9.i.i to i8
  %30 = and i8 %29, 4
  %31 = or i8 %30, %28
  %32 = and i8 %29, 16
  %33 = or i8 %31, %32
  %34 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %func.i, align 4
  %36 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regs_offset.i.i, align 4
  %add.i.i.i = add i32 %37, 4
  tail call void @sdio_writeb(ptr noundef %35, i8 noundef zeroext %33, i32 noundef %add.i.i.i, ptr noundef null) #9
  br label %sdio_uart_update_mctrl.exit

sdio_uart_update_mctrl.exit:                      ; preds = %if.then.i, %if.end.sdio_uart_update_mctrl.exit_crit_edge
  %lcr = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 16
  %38 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %lcr, align 2
  %40 = and i8 %39, -65
  store i8 %40, ptr %lcr, align 2
  %41 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %func.i, align 4
  %43 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %regs_offset.i.i, align 4
  %add.i25 = add i32 %44, 3
  tail call void @sdio_writeb(ptr noundef %42, i8 noundef zeroext %40, i32 noundef %add.i25, ptr noundef null) #9
  %45 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %func.i, align 4
  %47 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %regs_offset.i.i, align 4
  %add.i28 = add i32 %48, 2
  tail call void @sdio_writeb(ptr noundef %46, i8 noundef zeroext 7, i32 noundef %add.i28, ptr noundef null) #9
  %49 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %func.i, align 4
  %51 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %regs_offset.i.i, align 4
  %add.i31 = add i32 %52, 2
  tail call void @sdio_writeb(ptr noundef %50, i8 noundef zeroext 0, i32 noundef %add.i31, ptr noundef null) #9
  %53 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %func.i, align 4
  %call6 = tail call i32 @sdio_disable_func(ptr noundef %54) #9
  %55 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %57 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i33 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i33 to ptr
  %task.i34 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i34 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i34, align 8
  %cmp.not.i35 = icmp eq ptr %56, %60
  br i1 %cmp.not.i35, label %sdio_uart_update_mctrl.exit.cleanup_crit_edge, label %if.then.i37, !prof !88

sdio_uart_update_mctrl.exit.cleanup_crit_edge:    ; preds = %sdio_uart_update_mctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i37:                                      ; preds = %sdio_uart_update_mctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %62) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i37, %sdio_uart_update_mctrl.exit.cleanup_crit_edge, %sdio_uart_claim_func.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_uart_activate(ptr noundef %tport, ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #9
  %xmit_fifo = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 6
  %out = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 6, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %out, align 4
  %1 = ptrtoint ptr %xmit_fifo to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %xmit_fifo, align 4
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 2
  %2 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %entry
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 4
  %4 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %5, %9
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %3) #9
  br label %if.end

sdio_uart_claim_func.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then11.i, %if.end.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  %10 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func.i, align 4
  %call2 = tail call i32 @sdio_enable_func(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err1_crit_edge

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1

if.end5:                                          ; preds = %if.end
  %12 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func.i, align 4
  %call7 = tail call i32 @sdio_claim_irq(ptr noundef %13, ptr noundef nonnull @sdio_uart_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %14 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func.i, align 4
  br i1 %tobool8.not, label %if.end10, label %err2

if.end10:                                         ; preds = %if.end5
  %regs_offset.i = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 5
  %16 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regs_offset.i, align 4
  %add.i = add i32 %17, 2
  tail call void @sdio_writeb(ptr noundef %15, i8 noundef zeroext 1, i32 noundef %add.i, ptr noundef null) #9
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func.i, align 4
  %20 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regs_offset.i, align 4
  %add.i68 = add i32 %21, 2
  tail call void @sdio_writeb(ptr noundef %19, i8 noundef zeroext 7, i32 noundef %add.i68, ptr noundef null) #9
  %22 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %func.i, align 4
  %24 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %regs_offset.i, align 4
  %add.i71 = add i32 %25, 2
  tail call void @sdio_writeb(ptr noundef %23, i8 noundef zeroext 0, i32 noundef %add.i71, ptr noundef null) #9
  %26 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %func.i, align 4
  %28 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regs_offset.i, align 4
  %add.i74 = add i32 %29, 5
  %call.i = tail call zeroext i8 @sdio_readb(ptr noundef %27, i32 noundef %add.i74, ptr noundef null) #9
  %30 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %func.i, align 4
  %32 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regs_offset.i, align 4
  %call.i77 = tail call zeroext i8 @sdio_readb(ptr noundef %31, i32 noundef %33, ptr noundef null) #9
  %34 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %func.i, align 4
  %36 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regs_offset.i, align 4
  %add.i81 = add i32 %37, 2
  %call.i82 = tail call zeroext i8 @sdio_readb(ptr noundef %35, i32 noundef %add.i81, ptr noundef null) #9
  %38 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %func.i, align 4
  %40 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regs_offset.i, align 4
  %add.i86 = add i32 %41, 6
  %call.i87 = tail call zeroext i8 @sdio_readb(ptr noundef %39, i32 noundef %add.i86, ptr noundef null) #9
  %42 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %func.i, align 4
  %44 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %regs_offset.i, align 4
  %add.i91 = add i32 %45, 3
  tail call void @sdio_writeb(ptr noundef %43, i8 noundef zeroext 3, i32 noundef %add.i91, ptr noundef null) #9
  %ier = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 15
  %46 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 85, ptr %ier, align 1
  %mctrl = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 10
  %47 = ptrtoint ptr %mctrl to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16384, ptr %mctrl, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  tail call fastcc void @sdio_uart_change_speed(ptr noundef %tport, ptr noundef %termios, ptr noundef null)
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %48 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %c_cflag, align 4
  %and = and i32 %49, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end10.if.end18_crit_edge, label %if.then17

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.end10
  %50 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mctrl, align 4
  %or.i = or i32 %51, 6
  store i32 %or.i, ptr %mctrl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %or.i)
  %cmp.not.i92 = icmp eq i32 %51, %or.i
  br i1 %cmp.not.i92, label %if.then17.if.end18thread-pre-split_crit_edge, label %if.then.i

if.then17.if.end18thread-pre-split_crit_edge:     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18thread-pre-split

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i.i = lshr i32 %51, 11
  %52 = trunc i32 %and9.i.i to i8
  %53 = and i8 %52, 28
  %54 = or i8 %53, 3
  %55 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %func.i, align 4
  %57 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %regs_offset.i, align 4
  %add.i.i.i = add i32 %58, 4
  tail call void @sdio_writeb(ptr noundef %56, i8 noundef zeroext %54, i32 noundef %add.i.i.i, ptr noundef null) #9
  br label %if.end18thread-pre-split

if.end18thread-pre-split:                         ; preds = %if.then.i, %if.then17.if.end18thread-pre-split_crit_edge
  %59 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr = load i32, ptr %c_cflag, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18thread-pre-split, %if.end10.if.end18_crit_edge
  %60 = phi i32 [ %.pr, %if.end18thread-pre-split ], [ %49, %if.end10.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %tobool22.not = icmp sgt i32 %60, -1
  br i1 %tobool22.not, label %if.end18.if.end29_crit_edge, label %if.then23

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then23:                                        ; preds = %if.end18
  %call24 = tail call fastcc i32 @sdio_uart_get_mctrl(ptr noundef %tport)
  %and25 = and i32 %call24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then27, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %61 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %hw_stopped, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then23.if.end29_crit_edge, %if.end18.if.end29_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #9
  %62 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %func.i, align 4
  tail call void @sdio_uart_irq(ptr noundef %63)
  %64 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %66 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i95 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i95 to ptr
  %task.i96 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task.i96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i96, align 8
  %cmp.not.i97 = icmp eq ptr %65, %69
  br i1 %cmp.not.i97, label %if.end29.cleanup_crit_edge, label %if.then.i99, !prof !88

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i99:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %71) #9
  br label %cleanup

err2:                                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call i32 @sdio_disable_func(ptr noundef %15) #9
  br label %err1

err1:                                             ; preds = %err2, %if.end.err1_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.err1_crit_edge ], [ %call7, %err2 ]
  %72 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %74 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i102 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i102 to ptr
  %task.i103 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task.i103 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task.i103, align 8
  %cmp.not.i104 = icmp eq ptr %73, %77
  br i1 %cmp.not.i104, label %err1.cleanup_crit_edge, label %if.then.i106, !prof !88

err1.cleanup_crit_edge:                           ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i106:                                     ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %79) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i106, %err1.cleanup_crit_edge, %if.then.i99, %if.end29.cleanup_crit_edge, %sdio_uart_claim_func.exit
  %retval.0 = phi i32 [ -19, %sdio_uart_claim_func.exit ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %if.then.i99 ], [ %ret.0, %err1.cleanup_crit_edge ], [ %ret.0, %if.then.i106 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_port_destroy(ptr noundef %tport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %xmit_fifo = getelementptr inbounds %struct.sdio_uart_port, ptr %tport, i32 0, i32 6
  tail call void @__kfifo_free(ptr noundef %xmit_fifo) #9
  tail call void @kfree(ptr noundef %tport) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdio_uart_get_mctrl(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func.i, align 4
  %regs_offset.i = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 5
  %2 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regs_offset.i, align 4
  %add.i = add i32 %3, 6
  %call.i = tail call zeroext i8 @sdio_readb(ptr noundef %1, i32 noundef %add.i, ptr noundef null) #9
  %conv.i = zext i8 %call.i to i32
  %and = lshr i32 %conv.i, 1
  %4 = and i32 %and, 64
  %and3 = shl nuw nsw i32 %conv.i, 1
  %5 = and i32 %and3, 128
  %6 = or i32 %5, %4
  %and9 = shl nuw nsw i32 %conv.i, 3
  %7 = and i32 %and9, 256
  %8 = or i32 %6, %7
  %9 = and i32 %and3, 32
  %10 = or i32 %8, %9
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_irq(ptr nocapture noundef readonly %func) #2 align 64 {
entry:
  %iobuf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_sdio_uart_irq = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %in_sdio_uart_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_sdio_uart_irq, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cmp = icmp eq ptr %3, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !88

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func.i, align 4
  %regs_offset.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regs_offset.i, align 4
  %add.i = add i32 %11, 2
  %call.i = tail call zeroext i8 @sdio_readb(ptr noundef %9, i32 noundef %add.i, ptr noundef null) #9
  %12 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %in_sdio_uart_irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %in_sdio_uart_irq, align 4
  %16 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %func.i, align 4
  %18 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %regs_offset.i, align 4
  %add.i31 = add i32 %19, 5
  %call.i32 = tail call zeroext i8 @sdio_readb(ptr noundef %17, i32 noundef %add.i31, ptr noundef null) #9
  %conv.i33 = zext i8 %call.i32 to i32
  %and11 = and i32 %conv.i33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end6.if.end14_crit_edge, label %if.then13

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end6
  %rx.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 8, i32 4
  %brk.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 8, i32 9
  %parity.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 8, i32 8
  %frame.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 8, i32 6
  %overrun.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 8, i32 7
  %read_status_mask.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 12
  %ignore_status_mask.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 13
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end58.i.do.body.i_crit_edge, %if.then13
  %lsr.0 = phi i32 [ %conv.i33, %if.then13 ], [ %conv.i113.i, %if.end58.i.do.body.i_crit_edge ]
  %max_count.0.i = phi i32 [ 256, %if.then13 ], [ %dec.i, %if.end58.i.do.body.i_crit_edge ]
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %func.i, align 4
  %22 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regs_offset.i, align 4
  %call.i.i = tail call zeroext i8 @sdio_readb(ptr noundef %21, i32 noundef %23, ptr noundef null) #9
  %24 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx.i, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %rx.i, align 4
  %and.i34 = and i32 %lsr.0, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i, label %do.body.i.if.end43.i_crit_edge, label %if.then.i, !prof !89

do.body.i.if.end43.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then.i:                                        ; preds = %do.body.i
  %and3.i = and i32 %lsr.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i = and i32 %lsr.0, 243
  br label %if.end21.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  %and9.i = and i32 %lsr.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else14.i, label %if.else.i.if.end21.sink.split.i_crit_edge

if.else.i.if.end21.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.sink.split.i

if.else14.i:                                      ; preds = %if.else.i
  %and15.i = and i32 %lsr.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else14.i.if.end21.i_crit_edge, label %if.else14.i.if.end21.sink.split.i_crit_edge

if.else14.i.if.end21.sink.split.i_crit_edge:      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.sink.split.i

if.else14.i.if.end21.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.end21.sink.split.i:                            ; preds = %if.else14.i.if.end21.sink.split.i_crit_edge, %if.else.i.if.end21.sink.split.i_crit_edge, %if.then5.i
  %lsr.1 = phi i32 [ %lsr.0, %if.else14.i.if.end21.sink.split.i_crit_edge ], [ %lsr.0, %if.else.i.if.end21.sink.split.i_crit_edge ], [ %and6.i, %if.then5.i ]
  %parity.sink114.i = phi ptr [ %frame.i, %if.else14.i.if.end21.sink.split.i_crit_edge ], [ %parity.i, %if.else.i.if.end21.sink.split.i_crit_edge ], [ %brk.i, %if.then5.i ]
  %26 = ptrtoint ptr %parity.sink114.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %parity.sink114.i, align 4
  %inc13.i = add i32 %27, 1
  store i32 %inc13.i, ptr %parity.sink114.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %if.else14.i.if.end21.i_crit_edge
  %lsr.2 = phi i32 [ %lsr.0, %if.else14.i.if.end21.i_crit_edge ], [ %lsr.1, %if.end21.sink.split.i ]
  %and22.i = and i32 %lsr.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then24.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %overrun.i, align 4
  %inc26.i = add i32 %29, 1
  store i32 %inc26.i, ptr %overrun.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge
  %30 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %read_status_mask.i, align 4
  %and28.i = and i32 %31, %lsr.2
  %and29.i = and i32 %and28.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else32.i, label %if.end27.i.if.end43.i_crit_edge

if.end27.i.if.end43.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.else32.i:                                      ; preds = %if.end27.i
  %and33.i = and i32 %and28.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else36.i, label %if.else32.i.if.end43.i_crit_edge

if.else32.i.if.end43.i_crit_edge:                 ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.else36.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = trunc i32 %and28.i to i8
  %33 = lshr i8 %32, 2
  %34 = and i8 %33, 2
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else36.i, %if.else32.i.if.end43.i_crit_edge, %if.end27.i.if.end43.i_crit_edge, %do.body.i.if.end43.i_crit_edge
  %lsr.3 = phi i32 [ %lsr.0, %do.body.i.if.end43.i_crit_edge ], [ %and28.i, %if.else36.i ], [ %and28.i, %if.else32.i.if.end43.i_crit_edge ], [ %and28.i, %if.end27.i.if.end43.i_crit_edge ]
  %flag.0.i = phi i8 [ 0, %do.body.i.if.end43.i_crit_edge ], [ %34, %if.else36.i ], [ 3, %if.else32.i.if.end43.i_crit_edge ], [ 1, %if.end27.i.if.end43.i_crit_edge ]
  %35 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ignore_status_mask.i, align 4
  %and44.i = and i32 %lsr.3, -3
  %and45.i = and i32 %and44.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %cmp.i = icmp eq i32 %and45.i, 0
  br i1 %cmp.i, label %if.then46.i, label %if.end43.i.if.end50.i_crit_edge

if.end43.i.if.end50.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.then46.i:                                      ; preds = %if.end43.i
  %37 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.0.i)
  %cmp.i.i = icmp eq i8 %flag.0.i, 0
  %41 = or i1 %cmp.i.i, %tobool.not.i.i
  br i1 %41, label %land.lhs.true.i.i, label %if.then46.i.if.end12.i.i_crit_edge

if.then46.i.if.end12.i.i_crit_edge:               ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %if.then46.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %38, i32 0, i32 2
  %44 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp3.i.i = icmp slt i32 %43, %45
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %38, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %43
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %45
  %46 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %flag.0.i, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %47 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %48, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %38, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %48
  %49 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call.i.i, ptr %add.ptr.i1.i.i, align 1
  br label %if.end50.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.then46.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext %call.i.i, i8 noundef zeroext %flag.0.i) #9
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end12.i.i, %if.end.i.i, %if.end43.i.if.end50.i_crit_edge
  %50 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ignore_status_mask.i, align 4
  %neg.i = xor i32 %51, -1
  %and52.i = and i32 %lsr.3, 2
  %and53.i = and i32 %and52.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end50.i.if.end58.i_crit_edge, label %if.then55.i

if.end50.i.if.end58.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then55.i:                                      ; preds = %if.end50.i
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i, align 4
  %flags.i91.i = getelementptr inbounds %struct.tty_buffer, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %flags.i91.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i91.i, align 4
  %and.i92.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92.i)
  %tobool.not.i93.i = icmp eq i32 %and.i92.i, 0
  br i1 %tobool.not.i93.i, label %land.lhs.true.i97.i, label %if.then55.i.if.end12.i108.i_crit_edge

if.then55.i.if.end12.i108.i_crit_edge:            ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i108.i

land.lhs.true.i97.i:                              ; preds = %if.then55.i
  %used.i94.i = getelementptr inbounds %struct.tty_buffer, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %used.i94.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %used.i94.i, align 4
  %size.i95.i = getelementptr inbounds %struct.tty_buffer, ptr %53, i32 0, i32 2
  %58 = ptrtoint ptr %size.i95.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i95.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp3.i96.i = icmp slt i32 %57, %59
  br i1 %cmp3.i96.i, label %if.end.i106.i, label %land.lhs.true.i97.i.if.end12.i108.i_crit_edge

land.lhs.true.i97.i.if.end12.i108.i_crit_edge:    ; preds = %land.lhs.true.i97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i108.i

if.end.i106.i:                                    ; preds = %land.lhs.true.i97.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i99.i = getelementptr inbounds %struct.tty_buffer, ptr %53, i32 0, i32 6
  %add.ptr.i.i.i100.i = getelementptr i8, ptr %data.i.i.i99.i, i32 %57
  %add.ptr.i.i101.i = getelementptr i8, ptr %add.ptr.i.i.i100.i, i32 %59
  %60 = ptrtoint ptr %add.ptr.i.i101.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %add.ptr.i.i101.i, align 1
  %61 = ptrtoint ptr %used.i94.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %used.i94.i, align 4
  %inc.i103.i = add i32 %62, 1
  store i32 %inc.i103.i, ptr %used.i94.i, align 4
  %add.ptr.i1.i105.i = getelementptr i8, ptr %data.i.i.i99.i, i32 %62
  %63 = ptrtoint ptr %add.ptr.i1.i105.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %add.ptr.i1.i105.i, align 1
  br label %if.end58.i

if.end12.i108.i:                                  ; preds = %land.lhs.true.i97.i.if.end12.i108.i_crit_edge, %if.then55.i.if.end12.i108.i_crit_edge
  %call13.i107.i = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end12.i108.i, %if.end.i106.i, %if.end50.i.if.end58.i_crit_edge
  %64 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %func.i, align 4
  %66 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %regs_offset.i, align 4
  %add.i.i = add i32 %67, 5
  %call.i112.i = tail call zeroext i8 @sdio_readb(ptr noundef %65, i32 noundef %add.i.i, ptr noundef null) #9
  %conv.i113.i = zext i8 %call.i112.i to i32
  %and60.i = and i32 %conv.i113.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp ne i32 %and60.i, 0
  %dec.i = add nsw i32 %max_count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_count.0.i)
  %cmp62.i = icmp ne i32 %max_count.0.i, 0
  %or.cond.i = select i1 %tobool61.not.i, i1 %cmp62.i, i1 false
  br i1 %or.cond.i, label %if.end58.i.do.body.i_crit_edge, label %sdio_uart_receive_chars.exit

if.end58.i.do.body.i_crit_edge:                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

sdio_uart_receive_chars.exit:                     ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_flip_buffer_push(ptr noundef %1) #9
  br label %if.end14

if.end14:                                         ; preds = %sdio_uart_receive_chars.exit, %if.end6.if.end14_crit_edge
  %lsr.4 = phi i32 [ %conv.i33, %if.end6.if.end14_crit_edge ], [ %conv.i113.i, %sdio_uart_receive_chars.exit ]
  %68 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %func.i, align 4
  %70 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %regs_offset.i, align 4
  %add.i.i37 = add i32 %71, 6
  %call.i.i38 = tail call zeroext i8 @sdio_readb(ptr noundef %69, i32 noundef %add.i.i37, ptr noundef null) #9
  %conv.i.i = zext i8 %call.i.i38 to i32
  %and.i39 = and i32 %conv.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %cmp.i40 = icmp eq i32 %and.i39, 0
  br i1 %cmp.i40, label %if.end14.sdio_uart_check_modem_status.exit_crit_edge, label %if.end.i

if.end14.sdio_uart_check_modem_status.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdio_uart_check_modem_status.exit

if.end.i:                                         ; preds = %if.end14
  %and1.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i41 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i41, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rng.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 8, i32 2
  %72 = ptrtoint ptr %rng.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rng.i, align 4
  %inc.i42 = add i32 %73, 1
  store i32 %inc.i42, ptr %rng.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %and4.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end9.i_crit_edge, label %if.then6.i

if.end3.i.if.end9.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %dsr.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 8, i32 1
  %74 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dsr.i, align 4
  %inc8.i = add i32 %75, 1
  store i32 %inc8.i, ptr %dsr.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end3.i.if.end9.i_crit_edge
  %and10.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end21.i48_crit_edge, label %if.then12.i

if.end9.i.if.end21.i48_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i48

if.then12.i:                                      ; preds = %if.end9.i
  %dcd.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 8, i32 3
  %76 = ptrtoint ptr %dcd.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dcd.i, align 4
  %inc14.i = add i32 %77, 1
  store i32 %inc14.i, ptr %dcd.i, align 4
  %and15.i43 = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i43)
  %tobool16.not.i44 = icmp eq i32 %and15.i43, 0
  br i1 %tobool16.not.i44, label %if.else.i45, label %if.then17.i

if.then17.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %open_wait.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %open_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end21.i48

if.else.i45:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_port_tty_hangup(ptr noundef %1, i1 noundef zeroext false) #9
  br label %if.end21.i48

if.end21.i48:                                     ; preds = %if.else.i45, %if.then17.i, %if.end9.i.if.end21.i48_crit_edge
  %and22.i46 = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i46)
  %tobool23.not.i47 = icmp eq i32 %and22.i46, 0
  br i1 %tobool23.not.i47, label %if.end21.i48.sdio_uart_check_modem_status.exit_crit_edge, label %if.then24.i50

if.end21.i48.sdio_uart_check_modem_status.exit_crit_edge: ; preds = %if.end21.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdio_uart_check_modem_status.exit

if.then24.i50:                                    ; preds = %if.end21.i48
  %icount25.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 8
  %78 = ptrtoint ptr %icount25.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %icount25.i, align 4
  %inc26.i49 = add i32 %79, 1
  store i32 %inc26.i49, ptr %icount25.i, align 4
  %call28.i = tail call ptr @tty_port_tty_get(ptr noundef %1) #9
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %if.then24.i50.if.end47.i_crit_edge, label %land.lhs.true.i

if.then24.i50.if.end47.i_crit_edge:               ; preds = %if.then24.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

land.lhs.true.i:                                  ; preds = %if.then24.i50
  %c_cflag.i = getelementptr inbounds %struct.tty_struct, ptr %call28.i, i32 0, i32 13, i32 2
  %80 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %c_cflag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %tobool31.not.i = icmp sgt i32 %81, -1
  br i1 %tobool31.not.i, label %land.lhs.true.i.if.end47.i_crit_edge, label %if.then32.i

land.lhs.true.i.if.end47.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then32.i:                                      ; preds = %land.lhs.true.i
  %and34.i = and i32 %conv.i.i, 16
  %hw_stopped.i = getelementptr inbounds %struct.tty_struct, ptr %call28.i, i32 0, i32 21
  %82 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool35.not.i = icmp eq i32 %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool42.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.else41.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.then32.i
  br i1 %tobool42.not.i, label %if.then36.i.if.end47.i_crit_edge, label %if.then38.i

if.then36.i.if.end47.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then38.i:                                      ; preds = %if.then36.i
  %84 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %hw_stopped.i, align 4
  %ier.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 15
  %85 = ptrtoint ptr %ier.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ier.i.i, align 1
  %87 = and i8 %86, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i.i51 = icmp eq i8 %87, 0
  br i1 %tobool.not.i.i51, label %if.then.i.i52, label %if.then38.i.sdio_uart_start_tx.exit.i_crit_edge

if.then38.i.sdio_uart_start_tx.exit.i_crit_edge:  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdio_uart_start_tx.exit.i

if.then.i.i52:                                    ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i8 %86, 2
  %88 = ptrtoint ptr %ier.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %or.i.i, ptr %ier.i.i, align 1
  %89 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %func.i, align 4
  %91 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %regs_offset.i, align 4
  %add.i.i.i = add i32 %92, 1
  tail call void @sdio_writeb(ptr noundef %90, i8 noundef zeroext %or.i.i, i32 noundef %add.i.i.i, ptr noundef null) #9
  br label %sdio_uart_start_tx.exit.i

sdio_uart_start_tx.exit.i:                        ; preds = %if.then.i.i52, %if.then38.i.sdio_uart_start_tx.exit.i_crit_edge
  tail call void @tty_wakeup(ptr noundef nonnull %call28.i) #9
  br label %if.end47.i

if.else41.i:                                      ; preds = %if.then32.i
  br i1 %tobool42.not.i, label %if.then43.i, label %if.else41.i.if.end47.i_crit_edge

if.else41.i.if.end47.i_crit_edge:                 ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then43.i:                                      ; preds = %if.else41.i
  %93 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %hw_stopped.i, align 4
  %ier.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 15
  %94 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ier.i, align 1
  %96 = and i8 %95, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i68 = icmp eq i8 %96, 0
  br i1 %tobool.not.i68, label %if.then43.i.if.end47.i_crit_edge, label %if.then.i73

if.then43.i.if.end47.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then.i73:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i69 = and i8 %95, -3
  %97 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %and3.i69, ptr %ier.i, align 1
  %98 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %func.i, align 4
  %100 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %regs_offset.i, align 4
  %add.i.i72 = add i32 %101, 1
  tail call void @sdio_writeb(ptr noundef %99, i8 noundef zeroext %and3.i69, i32 noundef %add.i.i72, ptr noundef null) #9
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then.i73, %if.then43.i.if.end47.i_crit_edge, %if.else41.i.if.end47.i_crit_edge, %sdio_uart_start_tx.exit.i, %if.then36.i.if.end47.i_crit_edge, %land.lhs.true.i.if.end47.i_crit_edge, %if.then24.i50.if.end47.i_crit_edge
  tail call void @tty_kref_put(ptr noundef %call28.i) #9
  br label %sdio_uart_check_modem_status.exit

sdio_uart_check_modem_status.exit:                ; preds = %if.end47.i, %if.end21.i48.sdio_uart_check_modem_status.exit_crit_edge, %if.end14.sdio_uart_check_modem_status.exit_crit_edge
  %and15 = and i32 %lsr.4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %sdio_uart_check_modem_status.exit.if.end18_crit_edge, label %if.then17

sdio_uart_check_modem_status.exit.if.end18_crit_edge: ; preds = %sdio_uart_check_modem_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %sdio_uart_check_modem_status.exit
  %xmit_fifo.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iobuf.i) #9
  %x_char.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 14
  %102 = call ptr @memset(ptr %iobuf.i, i32 255, i32 16)
  %103 = ptrtoint ptr %x_char.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i53 = icmp eq i8 %104, 0
  br i1 %tobool.not.i53, label %if.end.i60, label %if.then.i57

if.then.i57:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %func.i, align 4
  %107 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %regs_offset.i, align 4
  tail call void @sdio_writeb(ptr noundef %106, i8 noundef zeroext %104, i32 noundef %108, ptr noundef null) #9
  %tx.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 8, i32 5
  %109 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx.i, align 4
  %inc.i56 = add i32 %110, 1
  store i32 %inc.i56, ptr %tx.i, align 4
  %111 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %x_char.i, align 4
  br label %sdio_uart_transmit_chars.exit

if.end.i60:                                       ; preds = %if.then17
  %call.i58 = tail call ptr @tty_port_tty_get(ptr noundef %1) #9
  %cmp.i59 = icmp eq ptr %call.i58, null
  br i1 %cmp.i59, label %if.end.i60.if.then11.i_crit_edge, label %lor.lhs.false.i

if.end.i60.if.then11.i_crit_edge:                 ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %if.end.i60
  %112 = ptrtoint ptr %xmit_fifo.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %xmit_fifo.i, align 4
  %out.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %114 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %115)
  %tobool5.not.i61 = icmp eq i32 %113, %115
  br i1 %tobool5.not.i61, label %lor.lhs.false.i.if.then11.i_crit_edge, label %lor.lhs.false6.i

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %call.i58, i32 0, i32 19, i32 1
  %116 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %stopped.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool7.not.i = icmp eq i8 %117, 0
  br i1 %tobool7.not.i, label %lor.lhs.false9.i, label %lor.lhs.false6.i.if.then11.i_crit_edge

lor.lhs.false6.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false6.i
  %hw_stopped.i62 = getelementptr inbounds %struct.tty_struct, ptr %call.i58, i32 0, i32 21
  %118 = ptrtoint ptr %hw_stopped.i62 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %hw_stopped.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool10.not.i63 = icmp eq i32 %119, 0
  br i1 %tobool10.not.i63, label %if.end12.i, label %lor.lhs.false9.i.if.then11.i_crit_edge

lor.lhs.false9.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false9.i.if.then11.i_crit_edge, %lor.lhs.false6.i.if.then11.i_crit_edge, %lor.lhs.false.i.if.then11.i_crit_edge, %if.end.i60.if.then11.i_crit_edge
  %ier.i.i64 = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 15
  %120 = ptrtoint ptr %ier.i.i64 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %ier.i.i64, align 1
  %122 = and i8 %121, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i.i65 = icmp eq i8 %122, 0
  br i1 %tobool.not.i.i65, label %if.then11.i.sdio_uart_stop_tx.exit.i_crit_edge, label %if.then.i.i67

if.then11.i.sdio_uart_stop_tx.exit.i_crit_edge:   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdio_uart_stop_tx.exit.i

if.then.i.i67:                                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i.i = and i8 %121, -3
  %123 = ptrtoint ptr %ier.i.i64 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %and3.i.i, ptr %ier.i.i64, align 1
  %124 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %func.i, align 4
  %126 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %regs_offset.i, align 4
  %add.i.i.i66 = add i32 %127, 1
  tail call void @sdio_writeb(ptr noundef %125, i8 noundef zeroext %and3.i.i, i32 noundef %add.i.i.i66, ptr noundef null) #9
  br label %sdio_uart_stop_tx.exit.i

sdio_uart_stop_tx.exit.i:                         ; preds = %if.then.i.i67, %if.then11.i.sdio_uart_stop_tx.exit.i_crit_edge
  tail call void @tty_kref_put(ptr noundef %call.i58) #9
  br label %sdio_uart_transmit_chars.exit

if.end12.i:                                       ; preds = %lor.lhs.false9.i
  %write_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 7
  %call18.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock.i) #9
  %call22.i = call i32 @__kfifo_out(ptr noundef %xmit_fifo.i, ptr noundef nonnull %iobuf.i, i32 noundef 16) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock.i, i32 noundef %call18.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp2778.i = icmp sgt i32 %call22.i, 0
  br i1 %cmp2778.i, label %for.body.lr.ph.i, label %if.end12.i.for.end.i_crit_edge

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end12.i
  %tx31.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 8, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.079.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc33.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x i8], ptr %iobuf.i, i32 0, i32 %count.079.i
  %128 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i, align 1
  %130 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %func.i, align 4
  %132 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %regs_offset.i, align 4
  call void @sdio_writeb(ptr noundef %131, i8 noundef zeroext %129, i32 noundef %133, ptr noundef null) #9
  %134 = ptrtoint ptr %tx31.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tx31.i, align 4
  %inc32.i = add i32 %135, 1
  store i32 %inc32.i, ptr %tx31.i, align 4
  %inc33.i = add nuw nsw i32 %count.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc33.i, %call22.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %136 = ptrtoint ptr %xmit_fifo.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %xmit_fifo.i, align 4
  %138 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %out.i, align 4
  %sub38.i = sub i32 %137, %139
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub38.i)
  %cmp39.i = icmp slt i32 %sub38.i, 256
  br i1 %cmp39.i, label %if.then41.i, label %for.end.i.if.end46.i_crit_edge

for.end.i.if.end46.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then41.i:                                      ; preds = %for.end.i
  call void @tty_wakeup(ptr noundef nonnull %call.i58) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %139)
  %cmp42.i = icmp eq i32 %137, %139
  br i1 %cmp42.i, label %if.then44.i, label %if.then41.i.if.end46.i_crit_edge

if.then41.i.if.end46.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then44.i:                                      ; preds = %if.then41.i
  %ier.i75 = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 15
  %140 = ptrtoint ptr %ier.i75 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ier.i75, align 1
  %142 = and i8 %141, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i76 = icmp eq i8 %142, 0
  br i1 %tobool.not.i76, label %if.then44.i.if.end46.i_crit_edge, label %if.then.i81

if.then44.i.if.end46.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then.i81:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i77 = and i8 %141, -3
  %143 = ptrtoint ptr %ier.i75 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %and3.i77, ptr %ier.i75, align 1
  %144 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %func.i, align 4
  %146 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %regs_offset.i, align 4
  %add.i.i80 = add i32 %147, 1
  call void @sdio_writeb(ptr noundef %145, i8 noundef zeroext %and3.i77, i32 noundef %add.i.i80, ptr noundef null) #9
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then.i81, %if.then44.i.if.end46.i_crit_edge, %if.then41.i.if.end46.i_crit_edge, %for.end.i.if.end46.i_crit_edge
  call void @tty_kref_put(ptr noundef nonnull %call.i58) #9
  br label %sdio_uart_transmit_chars.exit

sdio_uart_transmit_chars.exit:                    ; preds = %if.end46.i, %sdio_uart_stop_tx.exit.i, %if.then.i57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iobuf.i) #9
  br label %if.end18

if.end18:                                         ; preds = %sdio_uart_transmit_chars.exit, %sdio_uart_check_modem_status.exit.if.end18_crit_edge
  %148 = ptrtoint ptr %in_sdio_uart_irq to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %in_sdio_uart_irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdio_uart_change_speed(ptr nocapture noundef %port, ptr noundef %termios, ptr noundef readonly %old) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %call178 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp eq i32 %call178, 0
  %spec.store.select180 = select i1 %cmp179, i32 9600, i32 %call178
  %uartclk = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 9
  %2 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select180, i32 %3)
  %cmp26.not181 = icmp ugt i32 %spec.store.select180, %3
  br i1 %cmp26.not181, label %if.end29.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end29.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %and31.peel = and i32 %5, -4112
  store i32 %and31.peel, ptr %c_cflag, align 4
  %tobool32.not.peel = icmp eq ptr %old, null
  br i1 %tobool32.not.peel, label %if.else.peel, label %if.then33.peel

if.then33.peel:                                   ; preds = %if.end29.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %c_cflag34.peel = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 2
  %6 = ptrtoint ptr %c_cflag34.peel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag34.peel, align 4
  %and35.peel = and i32 %7, 4111
  %or37.peel = or i32 %and35.peel, %and31.peel
  br label %if.end40.peel

if.else.peel:                                     ; preds = %if.end29.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %or39.peel = or i32 %and31.peel, 13
  br label %if.end40.peel

if.end40.peel:                                    ; preds = %if.else.peel, %if.then33.peel
  %storemerge.peel = phi i32 [ %or39.peel, %if.else.peel ], [ %or37.peel, %if.then33.peel ]
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.peel, ptr %c_cflag, align 4
  %call.peel = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.peel)
  %cmp.peel = icmp eq i32 %call.peel, 0
  %spec.store.select.peel = select i1 %cmp.peel, i32 9600, i32 %call.peel
  %9 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.peel, i32 %10)
  %cmp26.not.peel = icmp ugt i32 %spec.store.select.peel, %10
  br i1 %cmp26.not.peel, label %if.end40.peel.if.end40_crit_edge, label %if.end40.peel.for.end_crit_edge

if.end40.peel.for.end_crit_edge:                  ; preds = %if.end40.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end40.peel.if.end40_crit_edge:                 ; preds = %if.end40.peel
  br label %if.end40

if.end40:                                         ; preds = %if.end40.if.end40_crit_edge, %if.end40.peel.if.end40_crit_edge
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag, align 4
  %and31 = and i32 %12, -4112
  %or39 = or i32 %and31, 13
  store i32 %or39, ptr %c_cflag, align 4
  %call = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp, i32 9600, i32 %call
  %13 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %uartclk, align 4
  %cmp26.not = icmp ugt i32 %spec.store.select, %14
  br i1 %cmp26.not, label %if.end40.if.end40_crit_edge, label %if.end40.for.end_crit_edge, !llvm.loop !91

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end40.if.end40_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.end:                                          ; preds = %if.end40.for.end_crit_edge, %if.end40.peel.for.end_crit_edge, %entry.for.end_crit_edge
  %spec.store.select.lcssa = phi i32 [ %spec.store.select180, %entry.for.end_crit_edge ], [ %spec.store.select.peel, %if.end40.peel.for.end_crit_edge ], [ %spec.store.select, %if.end40.for.end_crit_edge ]
  %.lcssa = phi i32 [ %3, %entry.for.end_crit_edge ], [ %10, %if.end40.peel.for.end_crit_edge ], [ %14, %if.end40.for.end_crit_edge ]
  %read_status_mask = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 12
  %15 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 35, ptr %read_status_mask, align 4
  %16 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %termios, align 4
  %and48 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %spec.store.select160 = select i1 %tobool49.not, i32 35, i32 47
  %18 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.store.select160, ptr %read_status_mask, align 4
  %19 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %termios, align 4
  %and55 = and i32 %20, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %for.end.if.end60_crit_edge, label %if.then57

for.end.if.end60_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then57:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %or59 = or i32 %spec.store.select160, 16
  %21 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or59, ptr %read_status_mask, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %for.end.if.end60_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 13
  %22 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ignore_status_mask, align 4
  %23 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %termios, align 4
  %and62 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %spec.store.select159 = select i1 %tobool63.not, i32 0, i32 12
  %25 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.store.select159, ptr %ignore_status_mask, align 4
  %26 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %termios, align 4
  %and69 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end60.if.end81_crit_edge, label %if.then71

if.end60.if.end81_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then71:                                        ; preds = %if.end60
  %or73 = or i32 %spec.store.select159, 16
  %28 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or73, ptr %ignore_status_mask, align 4
  %29 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %termios, align 4
  %and75 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.then71.if.end81_crit_edge, label %if.then77

if.then71.if.end81_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then77:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  %or79 = or i32 %spec.store.select159, 18
  %31 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or79, ptr %ignore_status_mask, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.then71.if.end81_crit_edge, %if.end60.if.end81_crit_edge
  %32 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %c_cflag, align 4
  %and83 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %cmp84 = icmp eq i32 %and83, 0
  br i1 %cmp84, label %if.then86, label %if.end81.if.end89_crit_edge

if.end81.if.end89_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ignore_status_mask, align 4
  %or88 = or i32 %35, 1
  store i32 %or88, ptr %ignore_status_mask, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end81.if.end89_crit_edge
  %ier = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 15
  %36 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ier, align 1
  %38 = and i8 %37, -9
  store i8 %38, ptr %ier, align 1
  %39 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %c_cflag, align 4
  %41 = and i32 %40, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %41)
  %.not = icmp eq i32 %41, 2048
  br i1 %.not, label %if.end89.if.end104_crit_edge, label %if.then99

if.end89.if.end104_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then99:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %42 = or i8 %37, 8
  %43 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %ier, align 1
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %if.end89.if.end104_crit_edge
  %44 = trunc i32 %1 to i8
  %45 = lshr i8 %44, 4
  %switch.idx.cast = and i8 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2400, i32 %spec.store.select.lcssa)
  %cmp43 = icmp ult i32 %spec.store.select.lcssa, 2400
  %and16 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %and8 = lshr i32 %1, 5
  %46 = trunc i32 %and8 to i8
  %47 = and i8 %46, 8
  %48 = trunc i32 %1 to i8
  %49 = lshr i8 %48, 4
  %50 = and i8 %49, 4
  %51 = or i8 %47, %50
  %52 = or i8 %51, %switch.idx.cast
  %53 = or i8 %52, 16
  %cval.3 = select i1 %tobool17.not, i8 %53, i8 %52
  %mul = shl i32 %.lcssa, 1
  %add = add i32 %mul, %spec.store.select.lcssa
  %mul42 = shl i32 %spec.store.select.lcssa, 1
  %div = udiv i32 %add, %mul42
  %lcr = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 16
  %54 = ptrtoint ptr %lcr to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %cval.3, ptr %lcr, align 2
  %55 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ier, align 1
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 2
  %57 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %func.i, align 4
  %regs_offset.i = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 5
  %59 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %regs_offset.i, align 4
  %add.i = add i32 %60, 1
  tail call void @sdio_writeb(ptr noundef %58, i8 noundef zeroext %56, i32 noundef %add.i, ptr noundef null) #9
  %61 = or i8 %cval.3, -128
  %62 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %func.i, align 4
  %64 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %regs_offset.i, align 4
  %add.i163 = add i32 %65, 3
  tail call void @sdio_writeb(ptr noundef %63, i8 noundef zeroext %61, i32 noundef %add.i163, ptr noundef null) #9
  %66 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %func.i, align 4
  %conv.i165 = trunc i32 %div to i8
  %68 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %regs_offset.i, align 4
  tail call void @sdio_writeb(ptr noundef %67, i8 noundef zeroext %conv.i165, i32 noundef %69, ptr noundef null) #9
  %shr = lshr i32 %div, 8
  %70 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %func.i, align 4
  %conv.i168 = trunc i32 %shr to i8
  %72 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %regs_offset.i, align 4
  %add.i170 = add i32 %73, 1
  tail call void @sdio_writeb(ptr noundef %71, i8 noundef zeroext %conv.i168, i32 noundef %add.i170, ptr noundef null) #9
  %74 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %func.i, align 4
  %76 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %regs_offset.i, align 4
  %add.i173 = add i32 %77, 3
  tail call void @sdio_writeb(ptr noundef %75, i8 noundef zeroext %cval.3, i32 noundef %add.i173, ptr noundef null) #9
  %78 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %func.i, align 4
  %conv.i175 = select i1 %cmp43, i8 1, i8 -127
  %80 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %regs_offset.i, align 4
  %add.i177 = add i32 %81, 2
  tail call void @sdio_writeb(ptr noundef %79, i8 noundef zeroext %conv.i175, i32 noundef %add.i177, ptr noundef null) #9
  %mctrl = getelementptr inbounds %struct.sdio_uart_port, ptr %port, i32 0, i32 10
  %82 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mctrl, align 4
  %84 = trunc i32 %83 to i8
  %85 = lshr i8 %84, 1
  %86 = and i8 %85, 3
  %and9.i = lshr i32 %83, 11
  %87 = trunc i32 %and9.i to i8
  %88 = and i8 %87, 4
  %89 = or i8 %86, %88
  %90 = and i8 %87, 8
  %91 = or i8 %89, %90
  %92 = and i8 %87, 16
  %93 = or i8 %91, %92
  %94 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %func.i, align 4
  %96 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %regs_offset.i, align 4
  %add.i.i = add i32 %97, 4
  tail call void @sdio_writeb(ptr noundef %95, i8 noundef zeroext %93, i32 noundef %add.i.i, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_hangup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_uart_install(ptr noundef %driver, ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @sdio_uart_port_get(i32 noundef %1)
  %call1 = tail call i32 @tty_standard_install(ptr noundef %driver, ptr noundef %tty) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_port_put(ptr noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_uart_open(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call i32 @tty_port_open(ptr noundef %1, ptr noundef %tty, ptr noundef %filp) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_close(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @tty_port_close(ptr noundef %1, ptr noundef %tty, ptr noundef %filp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_cleanup(ptr nocapture noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  store ptr null, ptr %driver_data, align 4
  tail call void @tty_port_put(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_uart_write(ptr nocapture noundef readonly %tty, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %func = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %write_lock = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #9
  %xmit_fifo = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 6
  %call6 = tail call i32 @__kfifo_in(ptr noundef %xmit_fifo, ptr noundef %buf, i32 noundef %count) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call2) #9
  %ier = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ier, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %7 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %if.then11
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %10, %14
  br i1 %cmp.not.i, label %if.end.i.if.then14_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.then14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %8) #9
  br label %if.then14

sdio_uart_claim_func.exit:                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %cleanup

if.then14:                                        ; preds = %if.then11.i, %if.end.i.if.then14_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  %15 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ier, align 1
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i28 = icmp eq i8 %17, 0
  br i1 %tobool.not.i28, label %if.then.i, label %if.then14.sdio_uart_start_tx.exit_crit_edge

if.then14.sdio_uart_start_tx.exit_crit_edge:      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdio_uart_start_tx.exit

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i8 %16, 2
  %18 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or.i, ptr %ier, align 1
  %19 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %func, align 4
  %regs_offset.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regs_offset.i.i, align 4
  %add.i.i = add i32 %22, 1
  tail call void @sdio_writeb(ptr noundef %20, i8 noundef zeroext %or.i, i32 noundef %add.i.i, ptr noundef null) #9
  br label %sdio_uart_start_tx.exit

sdio_uart_start_tx.exit:                          ; preds = %if.then.i, %if.then14.sdio_uart_start_tx.exit_crit_edge
  %23 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func, align 4
  tail call void @sdio_uart_irq(ptr noundef %24)
  %25 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %27 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i31 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i31 to ptr
  %task.i32 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i32, align 8
  %cmp.not.i33 = icmp eq ptr %26, %30
  br i1 %cmp.not.i33, label %sdio_uart_start_tx.exit.cleanup_crit_edge, label %if.then.i35, !prof !88

sdio_uart_start_tx.exit.cleanup_crit_edge:        ; preds = %sdio_uart_start_tx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i35:                                      ; preds = %sdio_uart_start_tx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %func, align 4
  tail call void @sdio_release_host(ptr noundef %32) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i35, %sdio_uart_start_tx.exit.cleanup_crit_edge, %sdio_uart_claim_func.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ -19, %sdio_uart_claim_func.exit ], [ %call6, %sdio_uart_start_tx.exit.cleanup_crit_edge ], [ %call6, %if.then.i35 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdio_uart_write_room(ptr nocapture noundef readonly %tty) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %xmit_fifo = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %xmit_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xmit_fifo, align 4
  %out = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  %sub.neg = sub i32 4096, %3
  %sub1 = add i32 %sub.neg, %5
  ret i32 %sub1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdio_uart_chars_in_buffer(ptr nocapture noundef readonly %tty) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %xmit_fifo = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %xmit_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xmit_fifo, align 4
  %out = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  %sub = sub i32 %3, %5
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_set_termios(ptr noundef %tty, ptr noundef %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %entry
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %7, %11
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %5) #9
  br label %if.end

sdio_uart_claim_func.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then11.i, %if.end.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  tail call fastcc void @sdio_uart_change_speed(ptr noundef %1, ptr noundef %termios, ptr noundef %old_termios)
  %c_cflag2 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %12 = ptrtoint ptr %c_cflag2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_cflag2, align 4
  %and = and i32 %13, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and3 = and i32 %3, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %mctrl.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mctrl.i, align 4
  %and.i = and i32 %15, -7
  store i32 %and.i, ptr %mctrl.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %and.i)
  %cmp.not.i67 = icmp eq i32 %15, %and.i
  br i1 %cmp.not.i67, label %if.then5.if.end6_crit_edge, label %if.then.i

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i.i = lshr i32 %15, 11
  %16 = trunc i32 %and9.i.i to i8
  %17 = and i8 %16, 28
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %regs_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regs_offset.i.i.i, align 4
  %add.i.i.i = add i32 %21, 4
  tail call void @sdio_writeb(ptr noundef %19, i8 noundef zeroext %17, i32 noundef %add.i.i.i, ptr noundef null) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then5.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %22 = ptrtoint ptr %c_cflag2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_cflag2, align 4
  %and8 = and i32 %23, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp ne i32 %and8, 0
  %or.cond64 = select i1 %tobool9.not, i1 true, i1 %tobool4.not
  br i1 %or.cond64, label %if.end6.if.end19_crit_edge, label %if.then13

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool15.not = icmp sgt i32 %3, -1
  br i1 %tobool15.not, label %if.then13.if.then17_crit_edge, label %lor.lhs.false

if.then13.if.then17_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.then13
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.then13.if.then17_crit_edge
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %lor.lhs.false.if.end18_crit_edge
  %mask.0 = phi i32 [ 2, %lor.lhs.false.if.end18_crit_edge ], [ 6, %if.then17 ]
  %mctrl.i69 = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %mctrl.i69 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mctrl.i69, align 4
  %or.i = or i32 %27, %mask.0
  store i32 %or.i, ptr %mctrl.i69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %or.i)
  %cmp.not.i70 = icmp eq i32 %27, %or.i
  br i1 %cmp.not.i70, label %if.end18.if.end19_crit_edge, label %if.then.i75

if.end18.if.end19_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then.i75:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %28 = trunc i32 %or.i to i8
  %29 = lshr i8 %28, 1
  %30 = and i8 %29, 3
  %and9.i.i71 = lshr i32 %27, 11
  %31 = trunc i32 %and9.i.i71 to i8
  %32 = and i8 %31, 28
  %33 = or i8 %32, %30
  %34 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i.i73 = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %regs_offset.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regs_offset.i.i.i73, align 4
  %add.i.i.i74 = add i32 %37, 4
  tail call void @sdio_writeb(ptr noundef %35, i8 noundef zeroext %33, i32 noundef %add.i.i.i74, ptr noundef null) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then.i75, %if.end18.if.end19_crit_edge, %if.end6.if.end19_crit_edge
  %38 = ptrtoint ptr %c_cflag2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %c_cflag2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool22.not = icmp slt i32 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool25.not = icmp sgt i32 %3, -1
  %or.cond65 = select i1 %tobool22.not, i1 %tobool25.not, i1 false
  br i1 %or.cond65, label %if.then26, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %if.end19
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %40 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %hw_stopped, align 4
  %ier.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 15
  %41 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ier.i, align 1
  %43 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i78 = icmp eq i8 %43, 0
  br i1 %tobool.not.i78, label %if.then.i80, label %if.then26.if.end27_crit_edge

if.then26.if.end27_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then.i80:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %or.i79 = or i8 %42, 2
  %44 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %or.i79, ptr %ier.i, align 1
  %45 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %regs_offset.i.i, align 4
  %add.i.i = add i32 %48, 1
  tail call void @sdio_writeb(ptr noundef %46, i8 noundef zeroext %or.i79, i32 noundef %add.i.i, ptr noundef null) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then.i80, %if.then26.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  %49 = ptrtoint ptr %c_cflag2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %c_cflag2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool30.not = icmp slt i32 %50, 0
  %or.cond66 = select i1 %tobool30.not, i1 true, i1 %tobool25.not
  br i1 %or.cond66, label %if.end27.if.end41_crit_edge, label %if.then34

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then34:                                        ; preds = %if.end27
  %51 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i83 = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %regs_offset.i.i83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %regs_offset.i.i83, align 4
  %add.i.i84 = add i32 %54, 6
  %call.i.i = tail call zeroext i8 @sdio_readb(ptr noundef %52, i32 noundef %add.i.i84, ptr noundef null) #9
  %55 = and i8 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool37.not = icmp eq i8 %55, 0
  br i1 %tobool37.not, label %if.then38, label %if.then34.if.end41_crit_edge

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then38:                                        ; preds = %if.then34
  %hw_stopped39 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %56 = ptrtoint ptr %hw_stopped39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %hw_stopped39, align 4
  %ier.i86 = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 15
  %57 = ptrtoint ptr %ier.i86 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ier.i86, align 1
  %59 = and i8 %58, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i87 = icmp eq i8 %59, 0
  br i1 %tobool.not.i87, label %if.then38.if.end41_crit_edge, label %if.then.i92

if.then38.if.end41_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then.i92:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i88 = and i8 %58, -3
  %60 = ptrtoint ptr %ier.i86 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %and3.i88, ptr %ier.i86, align 1
  %61 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %func.i, align 4
  %63 = ptrtoint ptr %regs_offset.i.i83 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %regs_offset.i.i83, align 4
  %add.i.i91 = add i32 %64, 1
  tail call void @sdio_writeb(ptr noundef %62, i8 noundef zeroext %and3.i88, i32 noundef %add.i.i91, ptr noundef null) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then.i92, %if.then38.if.end41_crit_edge, %if.then34.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %65 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %67 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i95 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i95 to ptr
  %task.i96 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i96 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i96, align 8
  %cmp.not.i97 = icmp eq ptr %66, %70
  br i1 %cmp.not.i97, label %if.end41.cleanup_crit_edge, label %if.then.i99, !prof !88

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i99:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %72) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i99, %if.end41.cleanup_crit_edge, %sdio_uart_claim_func.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %2 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %termios, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool3.not = icmp sgt i32 %5, -1
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %if.end
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %9, %13
  br i1 %cmp.not.i, label %if.end.i.if.end5_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %7) #9
  br label %if.end5

sdio_uart_claim_func.exit:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.then11.i, %if.end.i.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  %14 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %termios, align 4
  %and8 = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end5.if.end12_crit_edge, label %if.then10

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end5
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %x_char = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %x_char, align 4
  %ier.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ier.i, align 1
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i29 = icmp eq i8 %21, 0
  br i1 %tobool.not.i29, label %if.then.i, label %if.then10.if.end12_crit_edge

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i8 %20, 2
  %22 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or.i, ptr %ier.i, align 1
  %23 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regs_offset.i.i, align 4
  %add.i.i = add i32 %26, 1
  tail call void @sdio_writeb(ptr noundef %24, i8 noundef zeroext %or.i, i32 noundef %add.i.i, ptr noundef null) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %if.then10.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %c_cflag14 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %27 = ptrtoint ptr %c_cflag14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %c_cflag14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool16.not = icmp sgt i32 %28, -1
  br i1 %tobool16.not, label %if.end12.if.end18_crit_edge, label %if.then17

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.end12
  %mctrl.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mctrl.i, align 4
  %and.i = and i32 %30, -5
  store i32 %and.i, ptr %mctrl.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %and.i)
  %cmp.not.i31 = icmp eq i32 %30, %and.i
  br i1 %cmp.not.i31, label %if.then17.if.end18_crit_edge, label %if.then.i32

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then.i32:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %31 = trunc i32 %30 to i8
  %32 = lshr i8 %31, 1
  %33 = and i8 %32, 1
  %and9.i.i = lshr i32 %30, 11
  %34 = trunc i32 %and9.i.i to i8
  %35 = and i8 %34, 4
  %36 = or i8 %33, %35
  %37 = and i8 %34, 8
  %38 = or i8 %36, %37
  %39 = and i8 %34, 16
  %40 = or i8 %38, %39
  %41 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %regs_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %regs_offset.i.i.i, align 4
  %add.i.i.i = add i32 %44, 4
  tail call void @sdio_writeb(ptr noundef %42, i8 noundef zeroext %40, i32 noundef %add.i.i.i, ptr noundef null) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then.i32, %if.then17.if.end18_crit_edge, %if.end12.if.end18_crit_edge
  %45 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %func.i, align 4
  tail call void @sdio_uart_irq(ptr noundef %46)
  %47 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %49 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i35 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i35 to ptr
  %task.i36 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i36, align 8
  %cmp.not.i37 = icmp eq ptr %48, %52
  br i1 %cmp.not.i37, label %if.end18.cleanup_crit_edge, label %if.then.i39, !prof !88

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i39:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %54) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i39, %if.end18.cleanup_crit_edge, %sdio_uart_claim_func.exit, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %2 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %termios, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool3.not = icmp sgt i32 %5, -1
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %if.end
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %9, %13
  br i1 %cmp.not.i, label %if.end.i.if.end5_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %7) #9
  br label %if.end5

sdio_uart_claim_func.exit:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.then11.i, %if.end.i.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  %14 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %termios, align 4
  %and8 = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end5.if.end17_crit_edge, label %if.then10

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then10:                                        ; preds = %if.end5
  %x_char = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %x_char, align 4
  br label %if.end17

if.else:                                          ; preds = %if.then10
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %x_char, align 4
  %ier.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ier.i, align 1
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i36 = icmp eq i8 %24, 0
  br i1 %tobool.not.i36, label %if.then.i, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i8 %23, 2
  %25 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %or.i, ptr %ier.i, align 1
  %26 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regs_offset.i.i, align 4
  %add.i.i = add i32 %29, 1
  tail call void @sdio_writeb(ptr noundef %27, i8 noundef zeroext %or.i, i32 noundef %add.i.i, ptr noundef null) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then.i, %if.else.if.end17_crit_edge, %if.then12, %if.end5.if.end17_crit_edge
  %c_cflag19 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %30 = ptrtoint ptr %c_cflag19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %c_cflag19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %tobool21.not = icmp sgt i32 %31, -1
  br i1 %tobool21.not, label %if.end17.if.end23_crit_edge, label %if.then22

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %if.end17
  %mctrl.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mctrl.i, align 4
  %or.i38 = or i32 %33, 4
  store i32 %or.i38, ptr %mctrl.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %or.i38)
  %cmp.not.i39 = icmp eq i32 %33, %or.i38
  br i1 %cmp.not.i39, label %if.then22.if.end23_crit_edge, label %if.then.i40

if.then22.if.end23_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then.i40:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %34 = trunc i32 %or.i38 to i8
  %35 = lshr i8 %34, 1
  %36 = and i8 %35, 3
  %and9.i.i = lshr i32 %33, 11
  %37 = trunc i32 %and9.i.i to i8
  %38 = and i8 %37, 28
  %39 = or i8 %38, %36
  %40 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %regs_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %regs_offset.i.i.i, align 4
  %add.i.i.i = add i32 %43, 4
  tail call void @sdio_writeb(ptr noundef %41, i8 noundef zeroext %39, i32 noundef %add.i.i.i, ptr noundef null) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then.i40, %if.then22.if.end23_crit_edge, %if.end17.if.end23_crit_edge
  %44 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %func.i, align 4
  tail call void @sdio_uart_irq(ptr noundef %45)
  %46 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %48 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i43 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i43 to ptr
  %task.i44 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i44, align 8
  %cmp.not.i45 = icmp eq ptr %47, %51
  br i1 %cmp.not.i45, label %if.end23.cleanup_crit_edge, label %if.then.i47, !prof !88

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i47:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %53) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i47, %if.end23.cleanup_crit_edge, %sdio_uart_claim_func.exit, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_hangup(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @tty_port_hangup(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_uart_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %entry
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %5, %9
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %3) #9
  br label %if.end

sdio_uart_claim_func.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then11.i, %if.end.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp1 = icmp eq i32 %break_state, -1
  %lcr = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lcr, align 2
  %12 = and i8 %11, -65
  %masksel = select i1 %cmp1, i8 64, i8 0
  %.sink = or i8 %12, %masksel
  store i8 %.sink, ptr %lcr, align 2
  %13 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func.i, align 4
  %regs_offset.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %regs_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regs_offset.i, align 4
  %add.i = add i32 %16, 3
  tail call void @sdio_writeb(ptr noundef %14, i8 noundef zeroext %.sink, i32 noundef %add.i, ptr noundef null) #9
  %17 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %19 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i19 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i19 to ptr
  %task.i20 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i20, align 8
  %cmp.not.i21 = icmp eq ptr %18, %22
  br i1 %cmp.not.i21, label %if.end.cleanup_crit_edge, label %if.then.i, !prof !88

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %sdio_uart_claim_func.exit
  %retval.0 = phi i32 [ -19, %sdio_uart_claim_func.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_uart_send_xchar(ptr nocapture noundef readonly %tty, i8 noundef zeroext %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %x_char = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %ch, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ch)
  %tobool.not = icmp eq i8 %ch, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %ier = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ier, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %if.then
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %9, %13
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %7) #9
  br label %if.end

sdio_uart_claim_func.exit:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then11.i, %if.end.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  %14 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ier, align 1
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i12 = icmp eq i8 %16, 0
  br i1 %tobool.not.i12, label %if.then.i, label %if.end.sdio_uart_start_tx.exit_crit_edge

if.end.sdio_uart_start_tx.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdio_uart_start_tx.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i8 %15, 2
  %17 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or.i, ptr %ier, align 1
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regs_offset.i.i, align 4
  %add.i.i = add i32 %21, 1
  tail call void @sdio_writeb(ptr noundef %19, i8 noundef zeroext %or.i, i32 noundef %add.i.i, ptr noundef null) #9
  br label %sdio_uart_start_tx.exit

sdio_uart_start_tx.exit:                          ; preds = %if.then.i, %if.end.sdio_uart_start_tx.exit_crit_edge
  %22 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %func.i, align 4
  tail call void @sdio_uart_irq(ptr noundef %23)
  %24 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %26 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i15 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i15 to ptr
  %task.i16 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i16, align 8
  %cmp.not.i17 = icmp eq ptr %25, %29
  br i1 %cmp.not.i17, label %sdio_uart_start_tx.exit.cleanup_crit_edge, label %if.then.i19, !prof !88

sdio_uart_start_tx.exit.cleanup_crit_edge:        ; preds = %sdio_uart_start_tx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i19:                                      ; preds = %sdio_uart_start_tx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %31) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i19, %sdio_uart_start_tx.exit.cleanup_crit_edge, %sdio_uart_claim_func.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_uart_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %entry
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %5, %9
  br i1 %cmp.not.i, label %if.end.i.if.then_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %3) #9
  br label %if.then

sdio_uart_claim_func.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %if.end

if.then:                                          ; preds = %if.then11.i, %if.end.i.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  %mctrl = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mctrl, align 4
  %12 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %regs_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regs_offset.i.i, align 4
  %add.i.i = add i32 %15, 6
  %call.i.i = tail call zeroext i8 @sdio_readb(ptr noundef %13, i32 noundef %add.i.i, ptr noundef null) #9
  %conv.i.i = zext i8 %call.i.i to i32
  %and.i = lshr i32 %conv.i.i, 1
  %16 = and i32 %and.i, 64
  %and3.i = shl nuw nsw i32 %conv.i.i, 1
  %17 = and i32 %and3.i, 128
  %and9.i = shl nuw nsw i32 %conv.i.i, 3
  %18 = and i32 %and9.i, 256
  %19 = and i32 %and3.i, 32
  %20 = or i32 %16, %11
  %21 = or i32 %20, %17
  %22 = or i32 %21, %18
  %or = or i32 %22, %19
  %23 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %25 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i7 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i7 to ptr
  %task.i8 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i8, align 8
  %cmp.not.i9 = icmp eq ptr %24, %28
  br i1 %cmp.not.i9, label %if.then.if.end_crit_edge, label %if.then.i, !prof !88

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %30) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %sdio_uart_claim_func.exit
  %result.0 = phi i32 [ -19, %sdio_uart_claim_func.exit ], [ %or, %if.then.if.end_crit_edge ], [ %or, %if.then.i ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_uart_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %func_lock.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %func_lock.i, i32 noundef 0) #9
  %func.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %sdio_uart_claim_func.exit, label %if.end.i, !prof !88

if.end.i:                                         ; preds = %entry
  %in_sdio_uart_irq.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %5, %9
  br i1 %cmp.not.i, label %if.end.i.if.then_crit_edge, label %if.then11.i, !prof !88

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdio_claim_host(ptr noundef nonnull %3) #9
  br label %if.then

sdio_uart_claim_func.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  br label %if.end

if.then:                                          ; preds = %if.then11.i, %if.end.i.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %func_lock.i) #9
  %mctrl.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %mctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mctrl.i, align 4
  %neg.i = xor i32 %clear, -1
  %and.i = and i32 %11, %neg.i
  %or.i = or i32 %and.i, %set
  store i32 %or.i, ptr %mctrl.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or.i)
  %cmp.not.i4 = icmp eq i32 %11, %or.i
  br i1 %cmp.not.i4, label %if.then.sdio_uart_update_mctrl.exit_crit_edge, label %if.then.i

if.then.sdio_uart_update_mctrl.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdio_uart_update_mctrl.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = trunc i32 %or.i to i8
  %13 = lshr i8 %12, 1
  %14 = and i8 %13, 3
  %and9.i.i = lshr i32 %or.i, 11
  %15 = trunc i32 %and9.i.i to i8
  %16 = and i8 %15, 4
  %17 = or i8 %14, %16
  %18 = and i8 %15, 8
  %19 = or i8 %17, %18
  %20 = and i8 %15, 16
  %21 = or i8 %19, %20
  %22 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %func.i, align 4
  %regs_offset.i.i.i = getelementptr inbounds %struct.sdio_uart_port, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %regs_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %regs_offset.i.i.i, align 4
  %add.i.i.i = add i32 %25, 4
  tail call void @sdio_writeb(ptr noundef %23, i8 noundef zeroext %21, i32 noundef %add.i.i.i, ptr noundef null) #9
  br label %sdio_uart_update_mctrl.exit

sdio_uart_update_mctrl.exit:                      ; preds = %if.then.i, %if.then.sdio_uart_update_mctrl.exit_crit_edge
  %26 = ptrtoint ptr %in_sdio_uart_irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in_sdio_uart_irq.i, align 4
  %28 = tail call i32 @llvm.read_register.i32(metadata !77) #9
  %and.i.i7 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i7 to ptr
  %task.i8 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i8, align 8
  %cmp.not.i9 = icmp eq ptr %27, %31
  br i1 %cmp.not.i9, label %sdio_uart_update_mctrl.exit.if.end_crit_edge, label %if.then.i11, !prof !88

sdio_uart_update_mctrl.exit.if.end_crit_edge:     ; preds = %sdio_uart_update_mctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i11:                                      ; preds = %sdio_uart_update_mctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %func.i, align 4
  tail call void @sdio_release_host(ptr noundef %33) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i11, %sdio_uart_update_mctrl.exit.if.end_crit_edge, %sdio_uart_claim_func.exit
  %retval.0.i15 = phi i32 [ -19, %sdio_uart_claim_func.exit ], [ 0, %sdio_uart_update_mctrl.exit.if.end_crit_edge ], [ 0, %if.then.i11 ]
  ret i32 %retval.0.i15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_uart_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #9
  br label %for.body

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %entry
  %i.093 = phi i32 [ 0, %entry ], [ %inc, %if.end52.for.body_crit_edge ]
  %call = tail call fastcc ptr @sdio_uart_port_get(i32 noundef %i.093)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.if.end52_crit_edge, label %if.then

for.body.if.end52_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then:                                          ; preds = %for.body
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %i.093) #9
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call1, label %if.then2, label %if.then.if.end51_crit_edge

if.then.if.end51_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then2:                                         ; preds = %if.then
  %icount = getelementptr inbounds %struct.sdio_uart_port, ptr %call, i32 0, i32 8
  %tx = getelementptr inbounds %struct.sdio_uart_port, ptr %call, i32 0, i32 8, i32 5
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx, align 4
  %rx = getelementptr inbounds %struct.sdio_uart_port, ptr %call, i32 0, i32 8, i32 4
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %1, i32 noundef %3) #9
  %frame = getelementptr inbounds %struct.sdio_uart_port, ptr %call, i32 0, i32 8, i32 6
  %4 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.then2.if.end_crit_edge, label %if.then6

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, i32 noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then2.if.end_crit_edge
  %parity = getelementptr inbounds %struct.sdio_uart_port, ptr %call, i32 0, i32 8, i32 8
  %6 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i32 noundef %7) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %brk = getelementptr inbounds %struct.sdio_uart_port, ptr %call, i32 0, i32 8, i32 9
  %8 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %9) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %overrun = getelementptr inbounds %struct.sdio_uart_port, ptr %call, i32 0, i32 8, i32 7
  %10 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %overrun, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, i32 noundef %11) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %12 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %icount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool28.not = icmp eq i32 %13, 0
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, i32 noundef %13) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %dsr = getelementptr inbounds %struct.sdio_uart_port, ptr %call, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dsr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool34.not = icmp eq i32 %15, 0
  br i1 %tobool34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %15) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %rng = getelementptr inbounds %struct.sdio_uart_port, ptr %call, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rng, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool40.not = icmp eq i32 %17, 0
  br i1 %tobool40.not, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %17) #9
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %dcd = getelementptr inbounds %struct.sdio_uart_port, ptr %call, i32 0, i32 8, i32 3
  %18 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dcd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %if.end44.if.end51_crit_edge, label %if.then47

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %19) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end44.if.end51_crit_edge, %if.then.if.end51_crit_edge
  tail call void @tty_port_put(ptr noundef nonnull %call) #9
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %for.body.if.end52_crit_edge
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end52.for.body_crit_edge

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sdio_uart_port_get(i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %index)
  %cmp = icmp ugt i32 %index, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @sdio_uart_table_lock) #9
  %arrayidx = getelementptr [8 x ptr], ptr @sdio_uart_table, i32 0, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %land.lhs.true.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

land.lhs.true.i:                                  ; preds = %if.end
  %kref.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #9
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %4 = phi i32 [ %3, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 %7, i32 %add.i.i.i.i.i, ptr elementtype(i32) %kref.i) #9, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !89

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.tty_port_get.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !89

if.end4.i.i.i.i.i.tty_port_get.exit_crit_edge:    ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_port_get.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 0) #9
  br label %tty_port_get.exit

tty_port_get.exit:                                ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.tty_port_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #9
  br label %if.end3

if.end3:                                          ; preds = %tty_port_get.exit, %if.end.if.end3_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @sdio_uart_table_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_sdio_uart__231_1179_sdio_uart_init6, !1, !"__initcall__kmod_sdio_uart__231_1179_sdio_uart_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1179, i32 1}
!2 = !{ptr @__exitcall_sdio_uart_exit, !3, !"__exitcall_sdio_uart_exit", i1 false, i1 false}
!3 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1180, i32 1}
!4 = !{ptr @__UNIQUE_ID_author232, !5, !"__UNIQUE_ID_author232", i1 false, i1 false}
!5 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1182, i32 1}
!6 = !{ptr @__UNIQUE_ID_file233, !7, !"__UNIQUE_ID_file233", i1 false, i1 false}
!7 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1183, i32 1}
!8 = !{ptr @__UNIQUE_ID_license234, !7, !"__UNIQUE_ID_license234", i1 false, i1 false}
!9 = !{ptr @sdio_uart_tty_driver, !10, !"sdio_uart_tty_driver", i1 false, i1 false}
!10 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1034, i32 27}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1129, i32 11}
!13 = !{ptr @sdio_uart_driver, !14, !"sdio_uart_driver", i1 false, i1 false}
!14 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1126, i32 27}
!15 = !{ptr @sdio_uart_ids, !16, !"sdio_uart_ids", i1 false, i1 false}
!16 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1118, i32 36}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1047, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sdio_uart_probe._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @sdio_uart_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1066, i32 4}
!25 = !{ptr @sdio_uart_probe._entry.4, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sdio_uart_probe._entry_ptr.6, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1071, i32 3}
!29 = !{ptr @sdio_uart_probe.__UNIQUE_ID_ddebug228, !28, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1076, i32 3}
!32 = !{ptr @sdio_uart_probe.__UNIQUE_ID_ddebug229, !31, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1081, i32 3}
!35 = !{ptr @sdio_uart_probe.__UNIQUE_ID_ddebug230, !34, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!36 = !{ptr @sdio_uart_port_ops, !37, !"sdio_uart_port_ops", i1 false, i1 false}
!37 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1007, i32 41}
!38 = !{ptr @sdio_uart_add_port.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/mmc/core/sdio_uart.c", i32 90, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sdio_uart_add_port.__key.11, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/mmc/core/sdio_uart.c", i32 91, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/core/sdio_uart.c", i32 84, i32 8}
!46 = !{ptr @sdio_uart_table_lock, !45, !"sdio_uart_table_lock", i1 false, i1 false}
!47 = !{ptr @sdio_uart_table, !48, !"sdio_uart_table", i1 false, i1 false}
!48 = !{!"../drivers/mmc/core/sdio_uart.c", i32 83, i32 31}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1144, i32 20}
!51 = !{ptr @sdio_uart_ops, !52, !"sdio_uart_ops", i1 false, i1 false}
!52 = !{!"../drivers/mmc/core/sdio_uart.c", i32 1015, i32 36}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/core/sdio_uart.c", i32 966, i32 16}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/core/sdio_uart.c", i32 967, i32 10}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mmc/core/sdio_uart.c", i32 971, i32 18}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mmc/core/sdio_uart.c", i32 973, i32 19}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/core/sdio_uart.c", i32 976, i32 20}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mmc/core/sdio_uart.c", i32 979, i32 20}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/core/sdio_uart.c", i32 982, i32 20}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mmc/core/sdio_uart.c", i32 985, i32 20}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/core/sdio_uart.c", i32 988, i32 20}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/core/sdio_uart.c", i32 991, i32 20}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mmc/core/sdio_uart.c", i32 994, i32 20}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/core/sdio_uart.c", i32 997, i32 20}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2148980477, i64 2148980482, i64 2148980495, i64 2148980539, i64 2148980573, i64 2148980594}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i8 0, i8 2}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.peeled.count", i32 1}
!93 = !{i64 851633, i64 851657, i64 851678, i64 851695, i64 851712}
