; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_ldisc.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_ldisc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hci_uart_tx_wakeup\22, \22a\22\09"
module asm "\09.weak\09__crc_hci_uart_tx_wakeup\09\09\09\09"
module asm "\09.long\09__crc_hci_uart_tx_wakeup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_uart_tx_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_uart_tx_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_hci_uart_tx_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.127, %struct.anon.128, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.127 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.128 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.hci_rp_read_local_version = type <{ i8, i8, i16, i8, i16, i16 }>

@hup = internal global { [12 x ptr], [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HCI UART protocol %s registered\0A\00", [63 x i8] zeroinitializer }, align 32
@hci_uart_tx_wakeup.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hci_uart_tx_wakeup\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/bluetooth/hci_ldisc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__kstrtab_hci_uart_tx_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_uart_tx_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_uart_tx_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_uart_tx_wakeup to i32), ptr @__kstrtab_hci_uart_tx_wakeup, ptr @__kstrtabns_hci_uart_tx_wakeup }, section "___ksymtab_gpl+hci_uart_tx_wakeup", align 4
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't register HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@hci_uart_set_flow_control.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hci_uart_set_flow_control\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Disabling hardware flow control: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@hci_uart_set_flow_control.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.10, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Current tiocm 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@hci_uart_set_flow_control.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.11, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Clearing RTS: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@hci_uart_set_flow_control.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.10, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hci_uart_set_flow_control.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.12, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Setting RTS: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@hci_uart_set_flow_control.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.13, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Enabling hardware flow control: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@hci_uart_set_baudrate.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hci_uart_set_baudrate\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: New tty speeds: %d/%d\0A\00", [37 x i8] zeroinitializer }, align 32
@hci_uart_ldisc = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str.21, i32 15, ptr @hci_uart_tty_open, ptr @hci_uart_tty_close, ptr null, ptr @hci_uart_tty_read, ptr @hci_uart_tty_write, ptr @hci_uart_tty_ioctl, ptr @hci_uart_tty_ioctl, ptr null, ptr @hci_uart_tty_poll, ptr null, ptr @hci_uart_tty_receive, ptr @hci_uart_tty_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_hci_uart__496_922_hci_uart_init6 = internal global ptr @hci_uart_init, section ".initcall6.init", align 4
@__exitcall_hci_uart_exit = internal global ptr @hci_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author497 = internal constant [54 x i8] c"hci_uart.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description498 = internal constant [55 x i8] c"hci_uart.description=Bluetooth HCI UART driver ver 2.3\00", section ".modinfo", align 1
@__UNIQUE_ID_version499 = internal constant [21 x i8] c"hci_uart.version=2.3\00", section ".modinfo", align 1
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.3\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.17 }, section "__modver", align 4
@__UNIQUE_ID_file500 = internal constant [41 x i8] c"hci_uart.file=drivers/bluetooth/hci_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license501 = internal constant [21 x i8] c"hci_uart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias502 = internal constant [28 x i8] c"hci_uart.alias=tty-ldisc-15\00", section ".modinfo", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"n_hci\00", [26 x i8] zeroinitializer }, align 32
@hci_uart_tty_open.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hci_uart_tty_open\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tty %p\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't allocate control structure\0A\00", [62 x i8] zeroinitializer }, align 32
@hci_uart_tty_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&hu->init_ready)\00", [61 x i8] zeroinitializer }, align 32
@hci_uart_tty_open.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&hu->write_work)\00", [61 x i8] zeroinitializer }, align 32
@hci_uart_tty_open.rwsem_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&hu->proto_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@hci_uart_tty_close.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.23, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hci_uart_tty_close\00", [45 x i8] zeroinitializer }, align 32
@hci_uart_close.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hci_uart_close\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdev %p\0A\00", [23 x i8] zeroinitializer }, align 32
@hci_uart_flush.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hci_uart_flush\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdev %p tty %p\0A\00", [16 x i8] zeroinitializer }, align 32
@hci_uart_tty_ioctl.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.4, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hci_uart_tty_ioctl\00", [45 x i8] zeroinitializer }, align 32
@hci_uart_register_dev.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.3, ptr @.str.4, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hci_uart_register_dev\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't allocate HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@hci_uart_open.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_uart_open\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %p\0A\00", [25 x i8] zeroinitializer }, align 32
@hci_uart_send_frame.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_uart_send_frame\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: type %d len %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Reading local version information failed (%ld)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Event length mismatch for version information\0A\00", [45 x i8] zeroinitializer }, align 32
@hci_uart_tty_wakeup.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.4, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hci_uart_tty_wakeup\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HCI UART driver ver %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"HCI line discipline registration failed. (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1074025928, i64 1074025931, i64 2147767753, i64 2147767754, i64 2147767756]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 15]
@___asan_gen_.49 = private unnamed_addr constant [4 x i8] c"hup\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 40, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 52, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 134, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 194, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 327, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 333, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 342, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 355, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 361, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 385, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"hci_uart_ldisc\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 824, i32 29 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 927, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 34, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 125, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 827, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 480, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 493, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 505, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 506, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [10 x i8] c"rwsem_key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 508, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 49, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 526, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 264, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 230, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 753, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 630, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 635, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 253, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 276, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 431, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 437, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 572, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 843, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [33 x i8] c"../drivers/bluetooth/hci_ldisc.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 848, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias502, ptr @__UNIQUE_ID_author497, ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_file500, ptr @__UNIQUE_ID_license501, ptr @__UNIQUE_ID_version499, ptr @__exitcall_hci_uart_exit, ptr @__initcall__kmod_hci_uart__496_922_hci_uart_init6, ptr @__ksymtab_hci_uart_tx_wakeup, ptr @__modver_attr, ptr @hci_uart_exit, ptr @hup, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @hci_uart_ldisc, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @hci_uart_tty_open.__key, ptr @.str.25, ptr @hci_uart_tty_open.__key.26, ptr @.str.27, ptr @hci_uart_tty_open.rwsem_key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hup to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_uart_ldisc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_uart_tty_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_uart_tty_open.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_uart_tty_open.rwsem_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_uart_register_proto(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ugt i32 %1, 11
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [12 x ptr], ptr @hup, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %p, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.hci_uart_proto, ptr %p, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str, ptr noundef %6) #13
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -17, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hci_uart_unregister_proto(ptr nocapture noundef readonly %p) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %cmp = icmp ugt i32 %1, 11
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [12 x ptr], ptr @hup, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_uart_tx_wakeup(ptr noundef %hu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %proto_lock = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 8
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !131
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.rcu_sync_is_idle.exit.i_crit_edge

entry.rcu_sync_is_idle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b8.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i, label %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 35, ptr noundef nonnull @.str.19) #13
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, %entry.rcu_sync_is_idle.exit.i_crit_edge
  %4 = ptrtoint ptr %proto_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %proto_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool7.not.i.i, label %do.body3.i, label %if.else.i, !prof !132

do.body3.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !133
  %read_count.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_count.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !121) #13
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add19.i = add i32 %18, 1
  store i32 %add19.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !134
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool30.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool30.not.i, label %if.then39.i, label %do.body3.i.do.end41.i_crit_edge, !prof !135

do.body3.i.do.end41.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end41.i

if.then39.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end41.i

do.end41.i:                                       ; preds = %if.then39.i, %do.body3.i.do.end41.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #13, !srcloc !136
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !137
  %20 = tail call i32 @llvm.read_register.i32(metadata !121) #13
  %and.i.i.i61.i.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i61.i.c to ptr
  %preempt_count.i.i62.i.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i62.i.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i62.i.c, align 4
  %sub.i.i.c = add i32 %23, -1
  store volatile i32 %sub.i.i.c, ptr %preempt_count.i.i62.i.c, align 4
  br label %if.end

if.else.i:                                        ; preds = %rcu_sync_is_idle.exit.i
  %call48.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %proto_lock, i1 noundef zeroext true) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !137
  %24 = tail call i32 @llvm.read_register.i32(metadata !121) #13
  %and.i.i.i61.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i61.i to ptr
  %preempt_count.i.i62.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i62.i, align 4
  %sub.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i62.i, align 4
  br i1 %call48.i, label %if.else.i.if.end_crit_edge, label %if.else.i.return_crit_edge

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %do.end41.i
  %dep_map.i = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 8, i32 5
  %28 = tail call ptr @llvm.returnaddress(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %29) #13
  %flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 3
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %if.end.no_schedule_crit_edge, label %if.end3

if.end.no_schedule_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_schedule

if.end3:                                          ; preds = %if.end
  %tx_state = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tx_state) #13
  %call5 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %tx_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body, label %if.end3.no_schedule_crit_edge

if.end3.no_schedule_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_schedule

do.body:                                          ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_tx_wakeup.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_tx_wakeup, %if.then13)) #13
          to label %do.end [label %if.then13], !srcloc !138

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_tx_wakeup.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.4) #13
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %write_work = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i22 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %write_work) #13
  br label %no_schedule

no_schedule:                                      ; preds = %do.end, %if.end3.no_schedule_crit_edge, %if.end.no_schedule_crit_edge
  tail call fastcc void @percpu_up_read(ptr noundef %proto_lock)
  br label %return

return:                                           ; preds = %no_schedule, %if.else.i.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_up_read(ptr noundef %sem) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !121) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !139
  %call.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.rcu_sync_is_idle.exit_crit_edge

entry.rcu_sync_is_idle.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.rcu_sync_is_idle.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.rcu_sync_is_idle.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b8.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i, label %land.lhs.true3.i.rcu_sync_is_idle.exit_crit_edge, label %if.then.i

land.lhs.true3.i.rcu_sync_is_idle.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 35, ptr noundef nonnull @.str.19) #13
  br label %rcu_sync_is_idle.exit

rcu_sync_is_idle.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.rcu_sync_is_idle.exit_crit_edge, %land.lhs.true.i.rcu_sync_is_idle.exit_crit_edge, %entry.rcu_sync_is_idle.exit_crit_edge
  %6 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i, label %do.body3, label %do.end49, !prof !132

do.body3:                                         ; preds = %rcu_sync_is_idle.exit
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !133
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 1
  %9 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_count, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !121) #13
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, %11
  %18 = inttoptr i32 %add to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add17 = add i32 %20, -1
  store i32 %add17, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !134
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool28.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool28.not, label %if.then37, label %do.body3.do.end39_crit_edge, !prof !135

do.body3.do.end39_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

if.then37:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end39

do.end39:                                         ; preds = %if.then37, %do.body3.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #13, !srcloc !136
  br label %do.body113

do.end49:                                         ; preds = %rcu_sync_is_idle.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !140
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !133
  %read_count75 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 1
  %23 = ptrtoint ptr %read_count75 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_count75, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !121) #13
  %and.i122 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i122 to ptr
  %cpu78 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu78 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu78, align 4
  %arrayidx79 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx79, align 4
  %add80 = add i32 %31, %25
  %32 = inttoptr i32 %add80 to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add81 = add i32 %34, -1
  store i32 %add81, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !134
  %and.i.i123 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123)
  %tobool92.not = icmp eq i32 %and.i.i123, 0
  br i1 %tobool92.not, label %if.then101, label %do.end49.do.end104_crit_edge, !prof !135

do.end49.do.end104_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end104

if.then101:                                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end104

do.end104:                                        ; preds = %if.then101, %do.end49.do.end104_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #13, !srcloc !136
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 2
  %call111 = tail call i32 @rcuwait_wake_up(ptr noundef %writer) #13
  br label %do.body113

do.body113:                                       ; preds = %do.end104, %do.end39
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !141
  %36 = tail call i32 @llvm.read_register.i32(metadata !121) #13
  %and.i.i.i120 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i120 to ptr
  %preempt_count.i.i121 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i121 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i121, align 4
  %sub.i = add i32 %39, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i121, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_uart_init_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %hdev_flags = getelementptr i8, ptr %work, i32 -4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %hdev_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev1 = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %call2 = tail call i32 @hci_register_dev(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5) #13
  %flags = getelementptr i8, ptr %work, i32 -8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  %proto = getelementptr i8, ptr %work, i32 88
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proto, align 4
  %close = getelementptr inbounds %struct.hci_uart_proto, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %close, align 4
  %call4 = tail call i32 %5(ptr noundef %add.ptr) #13
  %6 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev1, align 4
  store ptr null, ptr %hdev1, align 4
  tail call void @hci_free_dev(ptr noundef %7) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %flags8 = getelementptr i8, ptr %work, i32 -8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags8) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_uart_init_ready(ptr noundef %hu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev_flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 4
  %0 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hdev_flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %init_ready = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %init_ready) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -114, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_uart_wait_until_sent(ptr noundef %hu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_state = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 11
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 125) #13
  %0 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tx_state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.wait_on_bit_timeout.exit_crit_edge, label %if.end.i

entry.wait_on_bit_timeout.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_on_bit_timeout.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = tail call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %tx_state, i32 noundef 1, ptr noundef nonnull @bit_wait_timeout, i32 noundef 1, i32 noundef 200) #13
  br label %wait_on_bit_timeout.exit

wait_on_bit_timeout.exit:                         ; preds = %if.end.i, %entry.wait_on_bit_timeout.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ 0, %entry.wait_on_bit_timeout.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hci_uart_has_flow_control(ptr nocapture noundef readonly %hu) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %0 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hu, align 4
  %driver = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %ops = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tiocmget = getelementptr inbounds %struct.tty_operations, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %tiocmget to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tiocmget, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %tiocmset = getelementptr inbounds %struct.tty_operations, ptr %7, i32 0, i32 26
  %10 = ptrtoint ptr %tiocmset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tiocmset, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  br label %return

return:                                           ; preds = %if.end7, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end7 ], [ true, %entry.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_uart_set_flow_control(ptr nocapture noundef readonly %hu, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %ktermios = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hu, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ktermios) #13
  %2 = call ptr @memset(ptr %ktermios, i32 255, i32 44)
  %serdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 1
  %3 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serdev, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %lnot = xor i1 %enable, true
  tail call void @serdev_device_set_flow_control(ptr noundef nonnull %4, i1 noundef zeroext %lnot) #13
  %5 = ptrtoint ptr %serdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serdev, align 4
  br i1 %enable, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @serdev_device_set_tiocm(ptr noundef %6, i32 noundef 4, i32 noundef 0) #13
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @serdev_device_set_tiocm(ptr noundef %6, i32 noundef 0, i32 noundef 4) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %enable, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %termios = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13
  %7 = call ptr @memcpy(ptr %ktermios, ptr %termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %ktermios, i32 0, i32 2
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag, align 4
  %and = and i32 %9, 2147483647
  store i32 %and, ptr %c_cflag, align 4
  %call9 = call i32 @tty_set_termios(ptr noundef %1, ptr noundef nonnull %ktermios) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_set_flow_control, %if.then16)) #13
          to label %do.end [label %if.then16], !srcloc !138

if.then16:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool17.not = icmp eq i32 %call9, 0
  %cond = select i1 %tobool17.not, ptr @.str.9, ptr @.str.8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_set_flow_control.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond) #13
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.then8
  %driver = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %ops = getelementptr inbounds %struct.tty_driver, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %tiocmget = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %tiocmget to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tiocmget, align 4
  %call19 = call i32 %15(ptr noundef %1) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_set_flow_control, %if.then32)) #13
          to label %do.end35 [label %if.then32], !srcloc !138

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_set_flow_control.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.10, i32 noundef %call19) #13
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.end
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver, align 4
  %ops40 = getelementptr inbounds %struct.tty_driver, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %ops40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops40, align 4
  %tiocmset = getelementptr inbounds %struct.tty_operations, ptr %19, i32 0, i32 26
  %20 = ptrtoint ptr %tiocmset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tiocmset, align 4
  %call41 = call i32 %21(ptr noundef %1, i32 noundef 0, i32 noundef 57350) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_set_flow_control, %if.then54)) #13
          to label %cleanup [label %if.then54], !srcloc !138

if.then54:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool55.not = icmp eq i32 %call41, 0
  %cond56 = select i1 %tobool55.not, ptr @.str.9, ptr @.str.8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_set_flow_control.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond56) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %driver60 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %driver60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver60, align 4
  %ops61 = getelementptr inbounds %struct.tty_driver, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %ops61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops61, align 4
  %tiocmget62 = getelementptr inbounds %struct.tty_operations, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %tiocmget62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tiocmget62, align 4
  %call63 = tail call i32 %27(ptr noundef %1) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_set_flow_control, %if.then76)) #13
          to label %do.end79 [label %if.then76], !srcloc !138

if.then76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_set_flow_control.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.10, i32 noundef %call63) #13
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %if.else
  %28 = ptrtoint ptr %driver60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver60, align 4
  %ops84 = getelementptr inbounds %struct.tty_driver, ptr %29, i32 0, i32 20
  %30 = ptrtoint ptr %ops84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops84, align 4
  %tiocmset85 = getelementptr inbounds %struct.tty_operations, ptr %31, i32 0, i32 26
  %32 = ptrtoint ptr %tiocmset85 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tiocmset85, align 4
  %call86 = tail call i32 %33(ptr noundef %1, i32 noundef 16388, i32 noundef 40962) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_set_flow_control, %if.then99)) #13
          to label %do.end104 [label %if.then99], !srcloc !138

if.then99:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool100.not = icmp eq i32 %call86, 0
  %cond101 = select i1 %tobool100.not, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_set_flow_control.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond101) #13
  br label %do.end104

do.end104:                                        ; preds = %if.then99, %do.end79
  %termios105 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13
  %34 = call ptr @memcpy(ptr %ktermios, ptr %termios105, i32 44)
  %c_cflag106 = getelementptr inbounds %struct.ktermios, ptr %ktermios, i32 0, i32 2
  %35 = ptrtoint ptr %c_cflag106 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %c_cflag106, align 4
  %or107 = or i32 %36, -2147483648
  store i32 %or107, ptr %c_cflag106, align 4
  %call108 = call i32 @tty_set_termios(ptr noundef %1, ptr noundef nonnull %ktermios) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_set_flow_control, %if.then121)) #13
          to label %cleanup [label %if.then121], !srcloc !138

if.then121:                                       ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool122.not = icmp eq i32 %call108, 0
  %cond123 = select i1 %tobool122.not, ptr @.str.9, ptr @.str.8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_set_flow_control.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond123) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %do.end104, %if.then54, %do.end35, %if.else.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ktermios) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_set_termios(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hci_uart_set_speeds(ptr nocapture noundef writeonly %hu, i32 noundef %init_speed, i32 noundef %oper_speed) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %init_speed1 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 12
  %0 = ptrtoint ptr %init_speed1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %init_speed, ptr %init_speed1, align 4
  %oper_speed2 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 13
  %1 = ptrtoint ptr %oper_speed2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %oper_speed, ptr %oper_speed2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_uart_set_baudrate(ptr nocapture noundef readonly %hu, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  %ktermios = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hu, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ktermios) #13
  %termios = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13
  %2 = call ptr @memcpy(ptr %ktermios, ptr %termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %ktermios, i32 0, i32 2
  %3 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %c_cflag, align 4
  %and = and i32 %4, -4112
  store i32 %and, ptr %c_cflag, align 4
  call void @tty_termios_encode_baud_rate(ptr noundef nonnull %ktermios, i32 noundef %speed, i32 noundef %speed) #13
  %call = call i32 @tty_set_termios(ptr noundef %1, ptr noundef nonnull %ktermios) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_set_baudrate.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_set_baudrate, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 2
  %c_ispeed = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 6
  %7 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 7
  %9 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_ospeed, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_set_baudrate.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %8, i32 noundef %10) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ktermios) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hci_uart_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @h4_deinit() #13
  %call1 = tail call i32 @bcsp_deinit() #13
  %call2 = tail call i32 @ll_deinit() #13
  %call3 = tail call i32 @ath_deinit() #13
  %call4 = tail call i32 @h5_deinit() #13
  %call5 = tail call i32 @intel_deinit() #13
  %call6 = tail call i32 @bcm_deinit() #13
  %call7 = tail call i32 @qca_deinit() #13
  %call8 = tail call i32 @ag6xx_deinit() #13
  %call9 = tail call i32 @mrvl_deinit() #13
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @hci_uart_ldisc) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @h4_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcsp_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ll_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @h5_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intel_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qca_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ag6xx_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mrvl_deinit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.17) #13
  %call = tail call i32 @tty_register_ldisc(ptr noundef nonnull @hci_uart_ldisc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.46, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @h4_init() #13
  %call2 = tail call i32 @bcsp_init() #13
  %call3 = tail call i32 @ll_init() #13
  %call4 = tail call i32 @ath_init() #13
  %call5 = tail call i32 @h5_init() #13
  %call6 = tail call i32 @intel_init() #13
  %call7 = tail call i32 @bcm_init() #13
  %call8 = tail call i32 @qca_init() #13
  %call9 = tail call i32 @ag6xx_init() #13
  %call10 = tail call i32 @mrvl_init() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_tiocm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_tty_open(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_tty_open.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_tty_open, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_tty_open.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.23, ptr noundef %tty) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call3, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 296) #16
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %5 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %disc_data, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tty, ptr %call7.i.i, align 8
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %7 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %receive_room, align 4
  %alignment = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 14
  %8 = ptrtoint ptr %alignment to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %alignment, align 4
  %padding = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %padding to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %padding, align 1
  %init_ready = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %init_ready, i32 noundef 0) #13
  %10 = ptrtoint ptr %init_ready to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %init_ready, align 4
  %lockdep_map = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.25, ptr noundef nonnull @hci_uart_tty_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry17 = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry17, ptr %entry17, align 8
  %prev.i = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hci_uart_init_work, ptr %func, align 8
  %write_work = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %write_work, i32 noundef 0) #13
  %14 = ptrtoint ptr %write_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %write_work, align 8
  %lockdep_map27 = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map27, ptr noundef nonnull @.str.27, ptr noundef nonnull @hci_uart_tty_open.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry29 = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i56 = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry29, ptr %prev.i56, align 8
  %func31 = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %func31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @hci_uart_write_work, ptr %func31, align 4
  %proto_lock = getelementptr inbounds %struct.hci_uart, ptr %call7.i.i, i32 0, i32 8
  %call35 = tail call i32 @__percpu_init_rwsem(ptr noundef %proto_lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @hci_uart_tty_open.rwsem_key) #13
  tail call void @tty_driver_flush_buffer(ptr noundef %tty) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -23, %if.then10 ], [ -1, %do.end.cleanup_crit_edge ], [ -95, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_uart_tty_close(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_tty_close.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_tty_close, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_tty_close.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.23, ptr noundef %tty) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %disc_data, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %hdev7 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %hdev7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev7, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_close.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_tty_close, %if.then.i)) #13
          to label %hci_uart_close.exit [label %if.then.i], !srcloc !138

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_close.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.32, ptr noundef nonnull %4) #13
  br label %hci_uart_close.exit

hci_uart_close.exit:                              ; preds = %if.then.i, %if.then9
  %call3.i = tail call i32 @hci_uart_flush(ptr noundef nonnull %4) #13
  %flush.i = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 234
  %5 = ptrtoint ptr %flush.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %flush.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %hci_uart_close.exit, %if.end6.if.end11_crit_edge
  %flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %if.end11.if.end28_crit_edge, label %if.then14

if.end11.if.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then14:                                        ; preds = %if.end11
  %proto_lock = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 8
  tail call void @percpu_down_write(ptr noundef %proto_lock) #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  tail call void @percpu_up_write(ptr noundef %proto_lock) #13
  %init_ready = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 5
  %call17 = tail call zeroext i1 @cancel_work_sync(ptr noundef %init_ready) #13
  %write_work = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 6
  %call18 = tail call zeroext i1 @cancel_work_sync(ptr noundef %write_work) #13
  br i1 %tobool8.not, label %if.then14.if.end26_crit_edge, label %if.then20

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then20:                                        ; preds = %if.then14
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool23.not = icmp eq i32 %11, 0
  br i1 %tobool23.not, label %if.then20.if.end25_crit_edge, label %if.then24

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hci_unregister_dev(ptr noundef nonnull %4) #13
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then20.if.end25_crit_edge
  tail call void @hci_free_dev(ptr noundef nonnull %4) #13
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then14.if.end26_crit_edge
  %proto = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %proto, align 4
  %close = getelementptr inbounds %struct.hci_uart_proto, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %close, align 4
  %call27 = tail call i32 %15(ptr noundef nonnull %1) #13
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.end11.if.end28_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  %proto_lock30 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 8
  tail call void @percpu_free_rwsem(ptr noundef %proto_lock30) #13
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hci_uart_tty_read(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %nr, ptr nocapture noundef readnone %cookie, i32 noundef %offset) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hci_uart_tty_write(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %data, i32 noundef %count) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_tty_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_tty_ioctl.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_tty_ioctl, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_tty_ioctl.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.4) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 1074025928, label %sw.bb
    i32 -2147199543, label %sw.bb15
    i32 -2147199542, label %sw.bb22
    i32 1074025931, label %sw.bb30
    i32 -2147199540, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end5
  %flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %arg)
  %cmp.i.i = icmp ugt i32 %arg, 11
  br i1 %cmp.i.i, label %if.then8.if.then11_crit_edge, label %hci_uart_get_proto.exit.i

if.then8.if.then11_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

hci_uart_get_proto.exit.i:                        ; preds = %if.then8
  %arrayidx.i.i = getelementptr [12 x ptr], ptr @hup, i32 0, i32 %arg
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %hci_uart_get_proto.exit.i.if.then11_crit_edge, label %if.end.i

hci_uart_get_proto.exit.i.if.then11_crit_edge:    ; preds = %hci_uart_get_proto.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.end.i:                                         ; preds = %hci_uart_get_proto.exit.i
  %proto.i = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %proto.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %proto.i, align 4
  %call1.i = tail call fastcc i32 @hci_uart_register_dev(ptr noundef nonnull %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %hci_uart_set_proto.exit, label %if.end.i.if.then11_crit_edge

if.end.i.if.then11_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

hci_uart_set_proto.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #13
  br label %cleanup

if.then11:                                        ; preds = %if.end.i.if.then11_crit_edge, %hci_uart_get_proto.exit.i.if.then11_crit_edge, %if.then8.if.then11_crit_edge
  %retval.0.i58.ph = phi i32 [ -93, %if.then8.if.then11_crit_edge ], [ %call1.i, %if.end.i.if.then11_crit_edge ], [ -93, %hci_uart_get_proto.exit.i.if.then11_crit_edge ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %cleanup

sw.bb15:                                          ; preds = %if.end5
  %flags16 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags16, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool18.not = icmp eq i32 %and1.i, 0
  br i1 %tobool18.not, label %sw.bb15.cleanup_crit_edge, label %if.then19

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  %proto = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proto, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end5
  %flags23 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags23, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  br i1 %tobool25.not, label %sw.bb22.cleanup_crit_edge, label %if.then26

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then26:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev, align 4
  %id27 = getelementptr inbounds %struct.hci_dev, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %id27 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id27, align 8
  %conv = zext i16 %18 to i32
  br label %cleanup

sw.bb30:                                          ; preds = %if.end5
  %flags31 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags31, align 4
  %and1.i57 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i57)
  %tobool33.not = icmp eq i32 %and1.i57, 0
  br i1 %tobool33.not, label %if.else35, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else35:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %arg)
  %tobool.not.i59 = icmp ult i32 %arg, 64
  br i1 %tobool.not.i59, label %if.end.i60, label %if.else35.cleanup_crit_edge

if.else35.cleanup_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i60:                                       ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #15
  %hdev_flags.i = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %hdev_flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %arg, ptr %hdev_flags.i, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %hdev_flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hdev_flags, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = tail call i32 @n_tty_ioctl_helper(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb38, %if.end.i60, %if.else35.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %if.then26, %sw.bb22.cleanup_crit_edge, %if.then19, %sw.bb15.cleanup_crit_edge, %if.then11, %hci_uart_set_proto.exit, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %do.end.cleanup_crit_edge ], [ %call39, %sw.default ], [ %23, %sw.bb38 ], [ %conv, %if.then26 ], [ %11, %if.then19 ], [ %retval.0.i58.ph, %if.then11 ], [ 0, %hci_uart_set_proto.exit ], [ -16, %sw.bb.cleanup_crit_edge ], [ -49, %sw.bb15.cleanup_crit_edge ], [ -49, %sw.bb22.cleanup_crit_edge ], [ -16, %sw.bb30.cleanup_crit_edge ], [ 0, %if.end.i60 ], [ -22, %if.else35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hci_uart_tty_poll(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %wait) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_uart_tty_receive(ptr noundef %tty, ptr noundef %data, ptr nocapture noundef readnone %flags, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not = icmp eq ptr %3, %tty
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %proto_lock = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 8
  tail call fastcc void @percpu_down_read(ptr noundef %proto_lock)
  %flags2 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags2, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @percpu_up_read(ptr noundef %proto_lock)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %proto = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proto, align 4
  %recv = getelementptr inbounds %struct.hci_uart_proto, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %recv, align 4
  %call7 = tail call i32 %10(ptr noundef nonnull %1, ptr noundef %data, i32 noundef %count) #13
  tail call fastcc void @percpu_up_read(ptr noundef %proto_lock)
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end6.if.end12_crit_edge, label %if.then10

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 199, i32 8
  %13 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %byte_rx, align 8
  %add = add i32 %14, %count
  store i32 %add, ptr %byte_rx, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  tail call void @tty_unthrottle(ptr noundef %tty) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_uart_tty_wakeup(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_tty_wakeup.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_tty_wakeup, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_tty_wakeup.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.4) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not = icmp eq ptr %3, %tty
  br i1 %cmp.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %flags9 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags9, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.then12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call i32 @hci_uart_tx_wakeup(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_uart_write_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -64
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %hdev2 = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev2, align 4
  %tx_state = getelementptr i8, ptr %work, i32 216
  %tx_skb.i = getelementptr i8, ptr %work, i32 212
  %proto_lock.i = getelementptr i8, ptr %work, i32 48
  %flags.i = getelementptr i8, ptr %work, i32 -52
  %proto.i = getelementptr i8, ptr %work, i32 44
  %flags = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 199, i32 9
  br label %restart

restart:                                          ; preds = %while.end.restart_crit_edge, %entry
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %tx_state) #13
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %restart
  %4 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %hci_uart_dequeue.exit.thread

if.then.i:                                        ; preds = %while.cond
  tail call fastcc void @percpu_down_read(ptr noundef %proto_lock.i) #13
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %hci_uart_dequeue.exit.thread35, label %hci_uart_dequeue.exit

hci_uart_dequeue.exit.thread35:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @percpu_up_read(ptr noundef %proto_lock.i) #13
  br label %while.end

hci_uart_dequeue.exit.thread:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tx_skb.i, align 4
  br label %while.body

hci_uart_dequeue.exit:                            ; preds = %if.then.i
  %10 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proto.i, align 4
  %dequeue.i = getelementptr inbounds %struct.hci_uart_proto, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dequeue.i, align 4
  %call3.i = tail call ptr %13(ptr noundef %add.ptr) #13
  tail call fastcc void @percpu_up_read(ptr noundef %proto_lock.i) #13
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %hci_uart_dequeue.exit.while.end_crit_edge, label %hci_uart_dequeue.exit.while.body_crit_edge

hci_uart_dequeue.exit.while.body_crit_edge:       ; preds = %hci_uart_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

hci_uart_dequeue.exit.while.end_crit_edge:        ; preds = %hci_uart_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %hci_uart_dequeue.exit.while.body_crit_edge, %hci_uart_dequeue.exit.thread
  %skb.1.i34 = phi ptr [ %5, %hci_uart_dequeue.exit.thread ], [ %call3.i, %hci_uart_dequeue.exit.while.body_crit_edge ]
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #13
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i34, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i34, i32 0, i32 6
  %20 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len3, align 4
  %call4 = tail call i32 %17(ptr noundef %1, ptr noundef %19, i32 noundef %21) #13
  %22 = ptrtoint ptr %byte_tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %byte_tx, align 4
  %add = add i32 %23, %call4
  store i32 %add, ptr %byte_tx, align 4
  %call5 = tail call ptr @skb_pull(ptr noundef nonnull %skb.1.i34, i32 noundef %call4) #13
  %24 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool7.not = icmp eq i32 %25, 0
  br i1 %tobool7.not, label %if.end, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %skb.1.i34, ptr %tx_skb.i, align 4
  br label %while.end

if.end:                                           ; preds = %while.body
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i34, i32 0, i32 3
  %27 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cb, align 8
  %29 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdev2, align 4
  %31 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %28, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb2.i
    i8 3, label %sw.bb5.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cmd_tx.i = getelementptr inbounds %struct.hci_dev, ptr %30, i32 0, i32 199, i32 2
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %acl_tx.i = getelementptr inbounds %struct.hci_dev, ptr %30, i32 0, i32 199, i32 4
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sco_tx.i = getelementptr inbounds %struct.hci_dev, ptr %30, i32 0, i32 199, i32 6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb5.i, %sw.bb2.i, %sw.bb.i
  %sco_tx.sink10.i = phi ptr [ %sco_tx.i, %sw.bb5.i ], [ %acl_tx.i, %sw.bb2.i ], [ %cmd_tx.i, %sw.bb.i ]
  %32 = ptrtoint ptr %sco_tx.sink10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sco_tx.sink10.i, align 8
  %inc7.i = add i32 %33, 1
  store i32 %inc7.i, ptr %sco_tx.sink10.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.sink.split.i, %if.end.cleanup_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.1.i34, i32 noundef 0) #13
  br label %while.cond

while.end:                                        ; preds = %cleanup.thread, %hci_uart_dequeue.exit.while.end_crit_edge, %hci_uart_dequeue.exit.thread35
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #13
  %34 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %tx_state, align 4
  %36 = and i32 %35, 4
  %tobool11.not = icmp eq i32 %36, 0
  br i1 %tobool11.not, label %if.end13, label %while.end.restart_crit_edge

while.end.restart_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart

if.end13:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wake_up_bit(ptr noundef %tx_state, i32 noundef 1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_down_read(ptr noundef %sem) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 49) #13
  %dep_map = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !121) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !142
  %call.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.rcu_sync_is_idle.exit_crit_edge

entry.rcu_sync_is_idle.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.rcu_sync_is_idle.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.rcu_sync_is_idle.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b8.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i, label %land.lhs.true3.i.rcu_sync_is_idle.exit_crit_edge, label %if.then.i

land.lhs.true3.i.rcu_sync_is_idle.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 35, ptr noundef nonnull @.str.19) #13
  br label %rcu_sync_is_idle.exit

rcu_sync_is_idle.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.rcu_sync_is_idle.exit_crit_edge, %land.lhs.true.i.rcu_sync_is_idle.exit_crit_edge, %entry.rcu_sync_is_idle.exit_crit_edge
  %6 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i, label %do.body7, label %if.else, !prof !132

do.body7:                                         ; preds = %rcu_sync_is_idle.exit
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !133
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %sem, i32 0, i32 1
  %9 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_count, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !121) #13
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, %11
  %18 = inttoptr i32 %add to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add21 = add i32 %20, 1
  store i32 %add21, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !134
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then41, label %do.body7.do.end43_crit_edge, !prof !135

do.body7.do.end43_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43

if.then41:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end43

do.end43:                                         ; preds = %if.then41, %do.body7.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #13, !srcloc !136
  br label %do.body52

if.else:                                          ; preds = %rcu_sync_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = tail call zeroext i1 @__percpu_down_read(ptr noundef %sem, i1 noundef zeroext false) #13
  br label %do.body52

do.body52:                                        ; preds = %if.else, %do.end43
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !143
  %22 = tail call i32 @llvm.read_register.i32(metadata !121) #13
  %and.i.i.i58 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i58 to ptr
  %preempt_count.i.i59 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i59, align 4
  %sub.i = add i32 %25, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i59, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_close(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_close.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_close, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_close.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.32, ptr noundef %hdev) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @hci_uart_flush(ptr noundef %hdev)
  %flush = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 234
  %0 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %flush, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_free_rwsem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_flush(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_flush.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_flush, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_flush.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.34, ptr noundef %hdev, ptr noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_skb = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end.if.end9_crit_edge, label %if.then6

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #13
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tx_skb, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.end.if.end9_crit_edge
  tail call void @tty_ldisc_flush(ptr noundef %3) #13
  tail call void @tty_driver_flush_buffer(ptr noundef %3) #13
  %proto_lock = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 8
  tail call fastcc void @percpu_down_read(ptr noundef %proto_lock)
  %flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %proto = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proto, align 4
  %flush = getelementptr inbounds %struct.hci_uart_proto, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flush, align 4
  %call13 = tail call i32 %13(ptr noundef %1) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  tail call fastcc void @percpu_up_read(ptr noundef %proto_lock)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @n_tty_ioctl_helper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hci_uart_register_dev(ptr noundef %hu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_register_dev.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_register_dev, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_register_dev.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.4) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #13
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %hdev7 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %0 = ptrtoint ptr %hdev7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %hdev7, align 4
  %bus = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %bus, align 2
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 204, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hu, ptr %driver_data.i.i, align 4
  %proto = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 7
  %3 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proto, align 4
  %setup = getelementptr inbounds %struct.hci_uart_proto, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %setup, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %manufacturer = getelementptr inbounds %struct.hci_uart_proto, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %manufacturer, align 4
  %conv = trunc i32 %8 to i16
  %manufacturer11 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 31
  %9 = ptrtoint ptr %manufacturer11 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %manufacturer11, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %open = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 232
  %10 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hci_uart_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 233
  %11 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @hci_uart_close, ptr %close, align 4
  %flush = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 234
  %12 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hci_uart_flush, ptr %flush, align 8
  %send = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 237
  %13 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hci_uart_send_frame, ptr %send, align 4
  %setup13 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 235
  %14 = ptrtoint ptr %setup13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @hci_uart_setup, ptr %setup13, align 4
  %15 = ptrtoint ptr %hu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hu, align 4
  %dev = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 204, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %parent, align 8
  %hdev_flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 4
  %20 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %hdev_flags, align 4
  %and1.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool16.not = icmp eq i32 %and1.i, 0
  br i1 %tobool16.not, label %if.end12.if.end18_crit_edge, label %if.then17

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 1, ptr noundef %quirks) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end12.if.end18_crit_edge
  %22 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %hdev_flags, align 4
  %24 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool21.not = icmp eq i32 %24, 0
  br i1 %tobool21.not, label %if.end18.if.end24_crit_edge, label %if.then22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %quirks23 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 6, ptr noundef %quirks23) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  %25 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %hdev_flags, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not = icmp eq i32 %27, 0
  br i1 %tobool27.not, label %if.then28, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %quirks29 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 0, ptr noundef %quirks29) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end24.if.end30_crit_edge
  %28 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %hdev_flags, align 4
  %30 = trunc i32 %29 to i8
  %31 = lshr i8 %30, 2
  %32 = and i8 %31, 1
  %33 = getelementptr inbounds %struct.hci_dev, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %32, ptr %33, align 1
  %35 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %proto, align 4
  %open38 = getelementptr inbounds %struct.hci_uart_proto, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %open38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %open38, align 4
  %call39 = tail call i32 %38(ptr noundef %hu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %hdev7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %hdev7, align 4
  tail call void @hci_free_dev(ptr noundef nonnull %call.i) #13
  br label %cleanup

if.end43:                                         ; preds = %if.end30
  %40 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %hdev_flags, align 4
  %42 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool46.not = icmp eq i32 %42, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %call49 = tail call i32 @hci_register_dev(ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp = icmp slt i32 %call49, 0
  br i1 %cmp, label %if.then51, label %if.end56

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5) #13
  %43 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %proto, align 4
  %close53 = getelementptr inbounds %struct.hci_uart_proto, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %close53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %close53, align 4
  %call54 = tail call i32 %46(ptr noundef %hu) #13
  %47 = ptrtoint ptr %hdev7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %hdev7, align 4
  tail call void @hci_free_dev(ptr noundef nonnull %call.i) #13
  br label %cleanup

if.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then51, %if.end43.cleanup_crit_edge, %if.then41, %if.then5
  %retval.0 = phi i32 [ %call39, %if.then41 ], [ -19, %if.then51 ], [ 0, %if.end56 ], [ -12, %if.then5 ], [ 0, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_open(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_open.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_open, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_open.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.39, ptr noundef %name, ptr noundef %hdev) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flush = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 234
  %0 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @hci_uart_flush, ptr %flush, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_send_frame(ptr noundef %hdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_send_frame.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_send_frame, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %conv = zext i8 %3 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_send_frame.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef %conv, i32 noundef %5) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %proto_lock = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 8
  tail call fastcc void @percpu_down_read(ptr noundef %proto_lock)
  %flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @percpu_up_read(ptr noundef %proto_lock)
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %proto = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %proto, align 4
  %enqueue = getelementptr inbounds %struct.hci_uart_proto, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enqueue, align 4
  %call10 = tail call i32 %12(ptr noundef %1, ptr noundef %skb) #13
  tail call fastcc void @percpu_up_read(ptr noundef %proto_lock)
  %call12 = tail call i32 @hci_uart_tx_wakeup(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -49, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_uart_setup(ptr noundef %hdev) #0 align 64 {
entry:
  %ktermios.i102 = alloca %struct.ktermios, align 4
  %ktermios.i = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %init_speed = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %init_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end8, label %entry.if.then10_crit_edge

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.end8:                                          ; preds = %entry
  %proto = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proto, align 4
  %init_speed2 = getelementptr inbounds %struct.hci_uart_proto, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_speed2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %init_speed2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.end8.if.then10_crit_edge

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %entry.if.then10_crit_edge
  %speed.0115 = phi i32 [ %7, %if.end8.if.then10_crit_edge ], [ %3, %entry.if.then10_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ktermios.i) #13
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 13
  %10 = call ptr @memcpy(ptr %ktermios.i, ptr %termios.i, i32 44)
  %c_cflag.i = getelementptr inbounds %struct.ktermios, ptr %ktermios.i, i32 0, i32 2
  %11 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag.i, align 4
  %and.i = and i32 %12, -4112
  store i32 %and.i, ptr %c_cflag.i, align 4
  call void @tty_termios_encode_baud_rate(ptr noundef nonnull %ktermios.i, i32 noundef %speed.0115, i32 noundef %speed.0115) #13
  %call.i = call i32 @tty_set_termios(ptr noundef %9, ptr noundef nonnull %ktermios.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_set_baudrate.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_setup, %if.then.i)) #13
          to label %hci_uart_set_baudrate.exit [label %if.then.i], !srcloc !138

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %hdev.i = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev.i, align 4
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  %c_ispeed.i = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 13, i32 6
  %15 = ptrtoint ptr %c_ispeed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c_ispeed.i, align 4
  %c_ospeed.i = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 13, i32 7
  %17 = ptrtoint ptr %c_ospeed.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_ospeed.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_set_baudrate.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef %16, i32 noundef %18) #13
  br label %hci_uart_set_baudrate.exit

hci_uart_set_baudrate.exit:                       ; preds = %if.then.i, %if.then10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ktermios.i) #13
  br label %if.end11

if.end11:                                         ; preds = %hci_uart_set_baudrate.exit, %if.end8.if.end11_crit_edge
  %oper_speed = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %oper_speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oper_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not = icmp eq i32 %20, 0
  br i1 %tobool12.not, label %if.else15, label %if.end11.if.end24_crit_edge

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.else15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %proto16 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %proto16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %proto16, align 4
  %oper_speed17 = getelementptr inbounds %struct.hci_uart_proto, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %oper_speed17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oper_speed17, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else15, %if.end11.if.end24_crit_edge
  %speed.1 = phi i32 [ %20, %if.end11.if.end24_crit_edge ], [ %24, %if.else15 ]
  %proto25 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %proto25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %proto25, align 4
  %set_baudrate = getelementptr inbounds %struct.hci_uart_proto, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %set_baudrate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_baudrate, align 4
  %tobool26.not = icmp eq ptr %28, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed.1)
  %tobool27.not = icmp eq i32 %speed.1, 0
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.end24.if.end35_crit_edge, label %if.then28

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then28:                                        ; preds = %if.end24
  %call31 = call i32 %28(ptr noundef %1, i32 noundef %speed.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.then28.if.end35_crit_edge

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then33:                                        ; preds = %if.then28
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ktermios.i102) #13
  %termios.i103 = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 13
  %31 = call ptr @memcpy(ptr %ktermios.i102, ptr %termios.i103, i32 44)
  %c_cflag.i104 = getelementptr inbounds %struct.ktermios, ptr %ktermios.i102, i32 0, i32 2
  %32 = ptrtoint ptr %c_cflag.i104 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %c_cflag.i104, align 4
  %and.i105 = and i32 %33, -4112
  store i32 %and.i105, ptr %c_cflag.i104, align 4
  call void @tty_termios_encode_baud_rate(ptr noundef nonnull %ktermios.i102, i32 noundef %speed.1, i32 noundef %speed.1) #13
  %call.i106 = call i32 @tty_set_termios(ptr noundef %30, ptr noundef nonnull %ktermios.i102) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_uart_set_baudrate.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_uart_setup, %if.then.i111)) #13
          to label %hci_uart_set_baudrate.exit112 [label %if.then.i111], !srcloc !138

if.then.i111:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %hdev.i107 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %hdev.i107 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hdev.i107, align 4
  %name.i108 = getelementptr inbounds %struct.hci_dev, ptr %35, i32 0, i32 2
  %c_ispeed.i109 = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 13, i32 6
  %36 = ptrtoint ptr %c_ispeed.i109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %c_ispeed.i109, align 4
  %c_ospeed.i110 = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 13, i32 7
  %38 = ptrtoint ptr %c_ospeed.i110 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %c_ospeed.i110, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_uart_set_baudrate.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.15, ptr noundef %name.i108, i32 noundef %37, i32 noundef %39) #13
  br label %hci_uart_set_baudrate.exit112

hci_uart_set_baudrate.exit112:                    ; preds = %if.then.i111, %if.then33
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ktermios.i102) #13
  br label %if.end35

if.end35:                                         ; preds = %hci_uart_set_baudrate.exit112, %if.then28.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  %40 = ptrtoint ptr %proto25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %proto25, align 4
  %setup = getelementptr inbounds %struct.hci_uart_proto, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %setup, align 4
  %tobool37.not = icmp eq ptr %43, null
  br i1 %tobool37.not, label %if.end42, label %if.then38

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %call41 = call i32 %43(ptr noundef %1) #13
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %hdev_flags = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %hdev_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %hdev_flags, align 4
  %46 = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool44.not = icmp eq i32 %46, 0
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %call48 = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext 4097, i32 noundef 0, ptr noundef null, i32 noundef 1000) #13
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %47 = ptrtoint ptr %call48 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %47) #13
  br label %cleanup

if.end52:                                         ; preds = %if.end46
  %len = getelementptr inbounds %struct.sk_buff, ptr %call48, i32 0, i32 6
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %49)
  %cmp.not = icmp eq i32 %49, 9
  br i1 %cmp.not, label %if.end56, label %if.then53

if.then53:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %name54 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.43, ptr noundef %name54) #13
  br label %done

if.end56:                                         ; preds = %if.end52
  %data = getelementptr inbounds %struct.sk_buff, ptr %call48, i32 0, i32 19
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %manufacturer = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %manufacturer to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %manufacturer, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53)
  %55 = zext i16 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %54, label %if.end56.done_crit_edge [
    i16 2, label %sw.bb
    i16 15, label %sw.bb58
  ]

if.end56.done_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

sw.bb:                                            ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %set_bdaddr = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 242
  %56 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @btintel_set_bdaddr, ptr %set_bdaddr, align 8
  %call57 = call i32 @btintel_check_bdaddr(ptr noundef %hdev) #13
  br label %done

sw.bb58:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %set_bdaddr59 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 242
  %57 = ptrtoint ptr %set_bdaddr59 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @btbcm_set_bdaddr, ptr %set_bdaddr59, align 8
  %call60 = call i32 @btbcm_check_bdaddr(ptr noundef %hdev) #13
  br label %done

done:                                             ; preds = %sw.bb58, %sw.bb, %if.end56.done_crit_edge, %if.then53
  call void @kfree_skb_reason(ptr noundef %call48, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then50, %if.end42.cleanup_crit_edge, %if.then38
  %retval.0 = phi i32 [ %call41, %if.then38 ], [ 0, %if.then50 ], [ 0, %done ], [ 0, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_check_bdaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btbcm_check_bdaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unthrottle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @h4_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcsp_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ll_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @h5_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intel_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qca_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ag6xx_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mrvl_init() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !24, !26, !28, !29, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !56, !58, !59, !60, !62, !64, !66, !68, !69, !70, !72, !74, !75, !77, !78, !80, !81, !83, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !102, !104, !105, !106, !108, !109, !110, !112, !114, !116, !117, !119}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 52, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 134, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @hci_uart_tx_wakeup.__UNIQUE_ID_ddebug479, !3, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!8 = !{ptr @__ksymtab_hci_uart_tx_wakeup, !9, !"__ksymtab_hci_uart_tx_wakeup", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 143, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 194, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 327, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug484, !13, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 333, i32 3}
!20 = !{ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug485, !19, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 342, i32 3}
!23 = !{ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug486, !22, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!24 = !{ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug487, !25, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!25 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 346, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 355, i32 3}
!28 = !{ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug488, !27, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 361, i32 3}
!31 = !{ptr @hci_uart_set_flow_control.__UNIQUE_ID_ddebug489, !30, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 385, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hci_uart_set_baudrate.__UNIQUE_ID_ddebug490, !33, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!36 = !{ptr @__initcall__kmod_hci_uart__496_922_hci_uart_init6, !37, !"__initcall__kmod_hci_uart__496_922_hci_uart_init6", i1 false, i1 false}
!37 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 922, i32 1}
!38 = !{ptr @__exitcall_hci_uart_exit, !39, !"__exitcall_hci_uart_exit", i1 false, i1 false}
!39 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 923, i32 1}
!40 = !{ptr @__UNIQUE_ID_author497, !41, !"__UNIQUE_ID_author497", i1 false, i1 false}
!41 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 925, i32 1}
!42 = !{ptr @__UNIQUE_ID_description498, !43, !"__UNIQUE_ID_description498", i1 false, i1 false}
!43 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 926, i32 1}
!44 = !{ptr @__UNIQUE_ID_version499, !45, !"__UNIQUE_ID_version499", i1 false, i1 false}
!45 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 927, i32 1}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__modver_attr, !45, !"__modver_attr", i1 false, i1 false}
!49 = !{ptr @__UNIQUE_ID_file500, !50, !"__UNIQUE_ID_file500", i1 false, i1 false}
!50 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 928, i32 1}
!51 = !{ptr @__UNIQUE_ID_license501, !50, !"__UNIQUE_ID_license501", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_alias502, !53, !"__UNIQUE_ID_alias502", i1 false, i1 false}
!53 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 929, i32 1}
!54 = !{ptr @hup, !55, !"hup", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 40, i32 37}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/wait_bit.h", i32 125, i32 2}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 827, i32 11}
!64 = !{ptr @hci_uart_ldisc, !65, !"hci_uart_ldisc", i1 false, i1 false}
!65 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 824, i32 29}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 480, i32 2}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @hci_uart_tty_open.__UNIQUE_ID_ddebug491, !67, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 493, i32 3}
!72 = !{ptr @hci_uart_tty_open.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 505, i32 2}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @hci_uart_tty_open.__key.26, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 506, i32 2}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @hci_uart_tty_open.rwsem_key, !79, !"rwsem_key", i1 false, i1 false}
!79 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 508, i32 2}
!80 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 526, i32 2}
!85 = !{ptr @hci_uart_tty_close.__UNIQUE_ID_ddebug492, !84, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 264, i32 2}
!88 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @hci_uart_close.__UNIQUE_ID_ddebug482, !87, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 230, i32 2}
!92 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @hci_uart_flush.__UNIQUE_ID_ddebug480, !91, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 753, i32 2}
!96 = !{ptr @hci_uart_tty_ioctl.__UNIQUE_ID_ddebug495, !95, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 630, i32 2}
!99 = !{ptr @hci_uart_register_dev.__UNIQUE_ID_ddebug494, !98, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 635, i32 3}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 253, i32 2}
!104 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @hci_uart_open.__UNIQUE_ID_ddebug481, !103, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 276, i32 2}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @hci_uart_send_frame.__UNIQUE_ID_ddebug483, !107, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 431, i32 3}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 437, i32 3}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 572, i32 2}
!116 = !{ptr @hci_uart_tty_wakeup.__UNIQUE_ID_ddebug493, !115, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 843, i32 2}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/bluetooth/hci_ldisc.c", i32 848, i32 3}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i64 2153497956}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 762004, i64 762065}
!134 = !{i64 764736}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{i64 765021}
!137 = !{i64 2153506806}
!138 = !{i64 2148971681, i64 2148971686, i64 2148971699, i64 2148971743, i64 2148971777, i64 2148971798}
!139 = !{i64 2153507548}
!140 = !{i64 2153517043}
!141 = !{i64 2153526520}
!142 = !{i64 2153488744}
!143 = !{i64 2153497594}
