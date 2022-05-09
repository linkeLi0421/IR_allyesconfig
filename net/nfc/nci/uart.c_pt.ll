; ModuleID = '/llk/IR_all_yes/net/nfc/nci/uart.c_pt.bc'
source_filename = "../net/nfc/nci/uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nci_uart_register\22, \22a\22\09"
module asm "\09.weak\09__crc_nci_uart_register\09\09\09\09"
module asm "\09.long\09__crc_nci_uart_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_uart_register:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_uart_register\22\09\09\09\09\09"
module asm "__kstrtabns_nci_uart_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nci_uart_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_nci_uart_unregister\09\09\09\09"
module asm "\09.long\09__crc_nci_uart_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_uart_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_uart_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_nci_uart_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nci_uart_set_config\22, \22a\22\09"
module asm "\09.weak\09__crc_nci_uart_set_config\09\09\09\09"
module asm "\09.long\09__crc_nci_uart_set_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_uart_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_uart_set_config\22\09\09\09\09\09"
module asm "__kstrtabns_nci_uart_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nci_uart = type { ptr, %struct.nci_uart_ops, ptr, i32, ptr, %struct.spinlock, %struct.work_struct, ptr, i32, %struct.sk_buff_head, ptr, ptr, i32, ptr }
%struct.nci_uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.sk_buff = type { %union.anon.73, %union.anon.76, %union.anon.77, [48 x i8], %union.anon.78, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.80, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr, %union.anon.75 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { i64 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, ptr }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.82, i32, i32, i32, i16, i16, %union.anon.84, i32, %union.anon.85, %union.anon.86, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.82 = type { i32 }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i16 }

@nci_uart_drivers = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@nci_uart_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013driver %d is already registered\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nci_uart_register\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/nfc/nci/uart.c\00", [45 x i8] zeroinitializer }, align 32
@nci_uart_register._entry_ptr = internal global ptr @nci_uart_register._entry, section ".printk_index", align 4
@nci_uart_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016NCI uart driver '%s [%d]' registered\0A\00", [56 x i8] zeroinitializer }, align 32
@nci_uart_register._entry_ptr.5 = internal global ptr @nci_uart_register._entry.3, section ".printk_index", align 4
@__kstrtab_nci_uart_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_uart_register = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_uart_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_uart_register to i32), ptr @__kstrtab_nci_uart_register, ptr @__kstrtabns_nci_uart_register }, section "___ksymtab_gpl+nci_uart_register", align 4
@nci_uart_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016NCI uart driver '%s [%d]' unregistered\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nci_uart_unregister\00", [44 x i8] zeroinitializer }, align 32
@nci_uart_unregister._entry_ptr = internal global ptr @nci_uart_unregister._entry, section ".printk_index", align 4
@__kstrtab_nci_uart_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_uart_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_uart_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_uart_unregister to i32), ptr @__kstrtab_nci_uart_unregister, ptr @__kstrtabns_nci_uart_unregister }, section "___ksymtab_gpl+nci_uart_unregister", align 4
@__kstrtab_nci_uart_set_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_uart_set_config = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_uart_set_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_uart_set_config to i32), ptr @__kstrtab_nci_uart_set_config, ptr @__kstrtabns_nci_uart_set_config }, section "___ksymtab_gpl+nci_uart_set_config", align 4
@nci_uart_ldisc = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str.8, i32 25, ptr @nci_uart_tty_open, ptr @nci_uart_tty_close, ptr null, ptr @nci_uart_tty_read, ptr @nci_uart_tty_write, ptr @nci_uart_tty_ioctl, ptr @nci_uart_tty_ioctl, ptr null, ptr @nci_uart_tty_poll, ptr null, ptr @nci_uart_tty_receive, ptr @nci_uart_tty_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_nci_uart__279_455_nci_uart_init6 = internal global ptr @nci_uart_init, section ".initcall6.init", align 4
@__exitcall_nci_uart_exit = internal global ptr @nci_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author280 = internal constant [43 x i8] c"nci_uart.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description281 = internal constant [41 x i8] c"nci_uart.description=NFC NCI UART driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file282 = internal constant [35 x i8] c"nci_uart.file=net/nfc/nci/nci_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [21 x i8] c"nci_uart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias284 = internal constant [28 x i8] c"nci_uart.alias=tty-ldisc-25\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"n_nci\00", [26 x i8] zeroinitializer }, align 32
@nci_uart_set_driver.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&nu->write_work)\00", [61 x i8] zeroinitializer }, align 32
@nci_uart_set_driver.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&nu->rx_lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@nci_uart_default_recv_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 233, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"NFC: receive data from tty but no NCI dev is attached yet, drop buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nci_uart_default_recv_buf\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nci_uart_default_recv_buf._entry_ptr = internal global ptr @nci_uart_default_recv_buf._entry, section ".printk_index", align 4
@nci_uart_default_recv_buf._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.2, i32 277, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NFC: corrupted RX packet\0A\00", [38 x i8] zeroinitializer }, align 32
@nci_uart_default_recv_buf._entry_ptr.19 = internal global ptr @nci_uart_default_recv_buf._entry.17, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"nci_uart_drivers\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 37, i32 25 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 388, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 393, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 401, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"nci_uart_ldisc\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 430, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 433, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 124, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 125, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 1984, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 232, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [22 x i8] c"../net/nfc/nci/uart.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 277, i32 5 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_alias284, ptr @__UNIQUE_ID_author280, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file282, ptr @__UNIQUE_ID_license283, ptr @__exitcall_nci_uart_exit, ptr @__initcall__kmod_nci_uart__279_455_nci_uart_init6, ptr @__ksymtab_nci_uart_register, ptr @__ksymtab_nci_uart_set_config, ptr @__ksymtab_nci_uart_unregister, ptr @nci_uart_default_recv_buf._entry, ptr @nci_uart_default_recv_buf._entry.17, ptr @nci_uart_default_recv_buf._entry_ptr, ptr @nci_uart_default_recv_buf._entry_ptr.19, ptr @nci_uart_exit, ptr @nci_uart_register._entry, ptr @nci_uart_register._entry.3, ptr @nci_uart_register._entry_ptr, ptr @nci_uart_register._entry_ptr.5, ptr @nci_uart_unregister._entry, ptr @nci_uart_unregister._entry_ptr, ptr @nci_uart_drivers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @nci_uart_ldisc, ptr @.str.8, ptr @nci_uart_set_driver.__key, ptr @.str.9, ptr @nci_uart_set_driver.__key.10, ptr @.str.11, ptr @skb_queue_head_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_uart_drivers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_uart_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_uart_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_uart_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_uart_ldisc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_uart_set_driver.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_uart_set_driver.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_uart_default_recv_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_uart_default_recv_buf._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nci_uart_register(ptr noundef %nu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nu, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %recv = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false2.return_crit_edge, label %lor.lhs.false5

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %close = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %close, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %lor.lhs.false5.return_crit_edge, label %if.end

lor.lhs.false5.return_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  %send = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nci_uart_send, ptr %send, align 4
  %driver = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 3
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver, align 4
  %arrayidx = getelementptr [1 x ptr], ptr @nci_uart_drivers, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %8) #11
  br label %return

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %nu, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 2
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %13, i32 noundef %8) #11
  br label %return

return:                                           ; preds = %if.end12, %do.end, %lor.lhs.false5.return_crit_edge, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end12 ], [ -22, %lor.lhs.false5.return_crit_edge ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nci_uart_send(ptr noundef %nu, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 9
  tail call void @skb_queue_tail(ptr noundef %tx_q, ptr noundef %skb) #8
  %tx_state.i = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 8
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %tx_state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tx_state.i) #8
  br label %nci_uart_tx_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %write_work.i = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %write_work.i) #8
  br label %nci_uart_tx_wakeup.exit

nci_uart_tx_wakeup.exit:                          ; preds = %if.end.i, %if.then.i
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nci_uart_unregister(ptr nocapture noundef readonly %nu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %driver = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %3) #11
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver, align 4
  %arrayidx = getelementptr [1 x ptr], ptr @nci_uart_drivers, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nci_uart_set_config(ptr nocapture noundef readonly %nu, i32 noundef %baudrate, i32 noundef %flow_ctrl) #0 align 64 {
entry:
  %new_termios = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %new_termios) #8
  %tty = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 7
  %0 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 11
  tail call void @down_read(ptr noundef %termios_rwsem) #8
  %2 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 13
  %4 = call ptr @memcpy(ptr %new_termios, ptr %termios, i32 44)
  %termios_rwsem4 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 11
  tail call void @up_read(ptr noundef %termios_rwsem4) #8
  call void @tty_termios_encode_baud_rate(ptr noundef nonnull %new_termios, i32 noundef %baudrate, i32 noundef %baudrate) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flow_ctrl)
  %tobool5.not = icmp eq i32 %flow_ctrl, 0
  %c_cflag7 = getelementptr inbounds %struct.ktermios, ptr %new_termios, i32 0, i32 2
  %5 = ptrtoint ptr %c_cflag7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c_cflag7, align 4
  %and = and i32 %6, 2147483647
  %masksel = select i1 %tobool5.not, i32 0, i32 -2147483648
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %c_cflag7, align 4
  %7 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tty, align 4
  %call = call i32 @tty_set_termios(ptr noundef %8, ptr noundef nonnull %new_termios) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %new_termios) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_set_termios(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nci_uart_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @nci_uart_ldisc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nci_uart_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_register_ldisc(ptr noundef nonnull @nci_uart_ldisc) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nci_uart_tty_open(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %4 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %disc_data, align 4
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %5 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65536, ptr %receive_room, align 4
  tail call void @tty_driver_flush_buffer(ptr noundef %tty) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nci_uart_tty_close(ptr nocapture noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  store ptr null, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_skb = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #8
  %rx_skb = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #8
  %tx_q = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 9
  tail call void @skb_queue_purge(ptr noundef %tx_q) #8
  %close = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %close, align 4
  tail call void %7(ptr noundef nonnull %1) #8
  %tty2 = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %tty2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tty2, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @module_put(ptr noundef %10) #8
  %write_work = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 6
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %write_work) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nci_uart_tty_read(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %nr, ptr nocapture noundef readnone %cookie, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nci_uart_tty_write(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %data, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nci_uart_tty_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074025728, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1074025728
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp.not.i = icmp eq i32 %arg, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %2 = load ptr, ptr @nci_uart_drivers, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 208) #12
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end2.i.cleanup_crit_edge, label %if.end5.i

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.end2.i
  %4 = load ptr, ptr @nci_uart_drivers, align 4
  %5 = call ptr @memcpy(ptr %call7.i.i.i, ptr %4, i32 208)
  %tty7.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %tty7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tty, ptr %tty7.i, align 8
  %7 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %disc_data, align 4
  %tx_q.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 9
  %lock.i.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %8 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tx_q.i, ptr %tx_q.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tx_q.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i.i, align 8
  %write_work.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %write_work.i, i32 noundef 0) #8
  %11 = ptrtoint ptr %write_work.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %write_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @nci_uart_set_driver.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry11.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry11.i, ptr %entry11.i, align 8
  %prev.i.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 6, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry11.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nci_uart_write_work, ptr %func.i, align 8
  %rx_lock.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @nci_uart_set_driver.__key.10, i16 noundef signext 3) #8
  %ops.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %call17.i = tail call i32 %16(ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.end5.i.cleanup.sink.split.i_crit_edge

if.end5.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end5.i
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i.i, align 8
  %call21.i = tail call zeroext i1 @try_module_get(ptr noundef %18) #8
  br i1 %call21.i, label %if.else.i.cleanup_crit_edge, label %if.then22.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %close.i = getelementptr inbounds %struct.nci_uart, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %close.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %close.i, align 8
  tail call void %20(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then22.i, %if.end5.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ -2, %if.then22.i ], [ %call17.i, %if.end5.i.cleanup.sink.split.i_crit_edge ]
  %21 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %disc_data, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @n_tty_ioctl_helper(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %cleanup.sink.split.i, %if.else.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.default ], [ -16, %sw.bb.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ], [ -12, %if.end2.i.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nci_uart_tty_poll(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %wait) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nci_uart_tty_receive(ptr noundef %tty, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %flags, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tty1 = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  %cmp.not = icmp eq ptr %3, %tty
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_lock = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %rx_lock) #8
  %ndev.i = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2.i = icmp sgt i32 %count, 0
  br i1 %cmp2.i, label %while.body.lr.ph.i, label %while.cond.preheader.i.nci_uart_default_recv_buf.exit_crit_edge

while.cond.preheader.i.nci_uart_default_recv_buf.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nci_uart_default_recv_buf.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %rx_skb.i = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 11
  %rx_packet_len.i = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 12
  %recv.i = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 1, i32 2
  br label %while.body.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tty1, align 4
  %dev.i = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13) #11
  br label %nci_uart_default_recv_buf.exit

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.addr.04.i = phi i32 [ %count, %while.body.lr.ph.i ], [ %count.addr.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %data.addr.03.i = phi ptr [ %data, %while.body.lr.ph.i ], [ %data.addr.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_skb.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.then2.i, label %while.body.i.if.end9.i_crit_edge

while.body.i.if.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then2.i:                                       ; preds = %while.body.i
  %12 = ptrtoint ptr %rx_packet_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %rx_packet_len.i, align 4
  %13 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev.i, align 4
  %tx_headroom.i.i = getelementptr inbounds %struct.nci_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %tx_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_headroom.i.i, align 4
  %add.i.i = add i32 %16, 258
  %tx_tailroom.i.i = getelementptr inbounds %struct.nci_dev, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %tx_tailroom.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_tailroom.i.i, align 4
  %add1.i.i = add i32 %add.i.i, %18
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %nci_skb_alloc.exit.thread.i, label %nci_skb_alloc.exit.i

nci_skb_alloc.exit.thread.i:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rx_skb.i, align 4
  br label %nci_uart_default_recv_buf.exit

nci_skb_alloc.exit.i:                             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %tx_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_headroom.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %21
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %25, i32 %21
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %26 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i.i, ptr %rx_skb.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %nci_skb_alloc.exit.i, %while.body.i.if.end9.i_crit_edge
  %27 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp11.i = icmp ult i32 %30, 3
  br i1 %cmp11.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.03.i, i32 1
  %31 = ptrtoint ptr %data.addr.03.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data.addr.03.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef %28, i32 noundef 1) #8
  %33 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %call.i.i, align 1
  %dec.i = add nsw i32 %count.addr.04.i, -1
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end48.i, %if.end21.i.while.cond.backedge.i_crit_edge, %if.then12.i
  %data.addr.0.be.i = phi ptr [ %incdec.ptr.i, %if.then12.i ], [ %add.ptr.i, %if.end48.i ], [ %add.ptr.i, %if.end21.i.while.cond.backedge.i_crit_edge ]
  %count.addr.0.be.i = phi i32 [ %dec.i, %if.then12.i ], [ %sub31.i, %if.end48.i ], [ %sub31.i, %if.end21.i.while.cond.backedge.i_crit_edge ]
  %cmp.i = icmp sgt i32 %count.addr.0.be.i, 0
  br i1 %cmp.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.nci_uart_default_recv_buf.exit_crit_edge

while.cond.backedge.i.nci_uart_default_recv_buf.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nci_uart_default_recv_buf.exit

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end14.i:                                       ; preds = %if.end9.i
  %34 = ptrtoint ptr %rx_packet_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_packet_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp16.i = icmp slt i32 %35, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %data19.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 19
  %36 = ptrtoint ptr %data19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data19.i, align 4
  %arrayidx.i = getelementptr i8, ptr %37, i32 2
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %39 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %40 = ptrtoint ptr %rx_packet_len.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i, ptr %rx_packet_len.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %41 = ptrtoint ptr %rx_packet_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_packet_len.i, align 4
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %42, %44
  %45 = tail call i32 @llvm.smin.i32(i32 %count.addr.04.i, i32 %sub.i) #8
  %call.i1.i = tail call ptr @skb_put(ptr noundef %28, i32 noundef %45) #8
  %46 = call ptr @memcpy(ptr %call.i1.i, ptr %data.addr.03.i, i32 %45)
  %add.ptr.i = getelementptr i8, ptr %data.addr.03.i, i32 %45
  %sub31.i = sub i32 %count.addr.04.i, %45
  %47 = ptrtoint ptr %rx_packet_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_packet_len.i, align 4
  %49 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_skb.i, align 4
  %len34.i = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %len34.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len34.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %52)
  %cmp35.i = icmp eq i32 %48, %52
  br i1 %cmp35.i, label %if.then37.i, label %if.end21.i.while.cond.backedge.i_crit_edge

if.end21.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

if.then37.i:                                      ; preds = %if.end21.i
  %53 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %recv.i, align 4
  %call39.i = tail call i32 %54(ptr noundef nonnull %1, ptr noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.not.i = icmp eq i32 %call39.i, 0
  br i1 %cmp40.not.i, label %if.then37.i.if.end48.i_crit_edge, label %do.end45.i

if.then37.i.if.end48.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

do.end45.i:                                       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tty1, align 4
  %dev47.i = getelementptr inbounds %struct.tty_struct, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev47.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.18) #11
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end45.i, %if.then37.i.if.end48.i_crit_edge
  %59 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rx_skb.i, align 4
  br label %while.cond.backedge.i

nci_uart_default_recv_buf.exit:                   ; preds = %while.cond.backedge.i.nci_uart_default_recv_buf.exit_crit_edge, %nci_skb_alloc.exit.thread.i, %do.end.i, %while.cond.preheader.i.nci_uart_default_recv_buf.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rx_lock) #8
  tail call void @tty_unthrottle(ptr noundef %tty) #8
  br label %cleanup

cleanup:                                          ; preds = %nci_uart_default_recv_buf.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nci_uart_tty_wakeup(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #8
  %tty1 = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  %cmp.not = icmp eq ptr %3, %tty
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tx_state.i = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 8
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %tx_state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tx_state.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %write_work.i = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %write_work.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @n_tty_ioctl_helper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nci_uart_write_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -84
  %tty1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty1, align 4
  %tx_state = getelementptr i8, ptr %work, i32 48
  %tx_start = getelementptr i8, ptr %work, i32 -64
  %tx_skb.i = getelementptr i8, ptr %work, i32 108
  %tx_q.i = getelementptr i8, ptr %work, i32 52
  %flags = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  %ops5 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  br label %restart

restart:                                          ; preds = %while.end.restart_crit_edge, %entry
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %tx_state) #8
  %2 = ptrtoint ptr %tx_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_start, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %restart.while.cond.preheader_crit_edge, label %if.then

restart.while.cond.preheader_crit_edge:           ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

if.then:                                          ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %add.ptr) #8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %restart.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %while.cond.preheader
  %4 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %nci_uart_dequeue.exit, label %nci_uart_dequeue.exit.thread

nci_uart_dequeue.exit.thread:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tx_skb.i, align 4
  br label %while.body

nci_uart_dequeue.exit:                            ; preds = %while.cond
  %call.i = tail call ptr @skb_dequeue(ptr noundef %tx_q.i) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %nci_uart_dequeue.exit.while.end_crit_edge, label %nci_uart_dequeue.exit.while.body_crit_edge

nci_uart_dequeue.exit.while.body_crit_edge:       ; preds = %nci_uart_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

nci_uart_dequeue.exit.while.end_crit_edge:        ; preds = %nci_uart_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %nci_uart_dequeue.exit.while.body_crit_edge, %nci_uart_dequeue.exit.thread
  %skb.0.i51 = phi ptr [ %5, %nci_uart_dequeue.exit.thread ], [ %call.i, %nci_uart_dequeue.exit.while.body_crit_edge ]
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #8
  %7 = ptrtoint ptr %ops5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops5, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i51, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i51, i32 0, i32 6
  %13 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len6, align 4
  %call7 = tail call i32 %10(ptr noundef %1, ptr noundef %12, i32 noundef %14) #8
  %call8 = tail call ptr @skb_pull(ptr noundef nonnull %skb.0.i51, i32 noundef %call7) #8
  %15 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len6, align 4
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %skb.0.i51, ptr %tx_skb.i, align 4
  br label %while.end

cleanup:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.0.i51, i32 noundef 0) #8
  br label %while.cond

while.end:                                        ; preds = %cleanup.thread, %nci_uart_dequeue.exit.while.end_crit_edge
  %18 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %tx_state, align 4
  %20 = and i32 %19, 4
  %tobool15.not = icmp eq i32 %20, 0
  br i1 %tobool15.not, label %if.end17, label %while.end.restart_crit_edge

while.end.restart_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %restart

if.end17:                                         ; preds = %while.end
  %tx_done = getelementptr i8, ptr %work, i32 -60
  %21 = ptrtoint ptr %tx_done to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_done, align 4
  %tobool19.not = icmp eq ptr %22, null
  br i1 %tobool19.not, label %if.end17.if.end25_crit_edge, label %land.lhs.true

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end17
  %23 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i47 = icmp eq ptr %24, null
  br i1 %tobool.not.i47, label %nci_uart_queue_empty.exit, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

nci_uart_queue_empty.exit:                        ; preds = %land.lhs.true
  %25 = ptrtoint ptr %tx_q.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_q.i, align 4
  %cmp.i.i.not = icmp eq ptr %26, %tx_q.i
  br i1 %cmp.i.i.not, label %if.then22, label %nci_uart_queue_empty.exit.if.end25_crit_edge

nci_uart_queue_empty.exit.if.end25_crit_edge:     ; preds = %nci_uart_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %nci_uart_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %22(ptr noundef %add.ptr) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %nci_uart_queue_empty.exit.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unthrottle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !43, !45, !46, !48, !49, !51, !52, !53, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/nci/uart.c", i32 388, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nci_uart_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nci_uart_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/nfc/nci/uart.c", i32 393, i32 2}
!8 = !{ptr @nci_uart_register._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nci_uart_register._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_nci_uart_register, !11, !"__ksymtab_nci_uart_register", i1 false, i1 false}
!11 = !{!"../net/nfc/nci/uart.c", i32 397, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/nfc/nci/uart.c", i32 401, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nci_uart_unregister._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nci_uart_unregister._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_nci_uart_unregister, !18, !"__ksymtab_nci_uart_unregister", i1 false, i1 false}
!18 = !{!"../net/nfc/nci/uart.c", i32 407, i32 1}
!19 = !{ptr @__ksymtab_nci_uart_set_config, !20, !"__ksymtab_nci_uart_set_config", i1 false, i1 false}
!20 = !{!"../net/nfc/nci/uart.c", i32 428, i32 1}
!21 = !{ptr @__initcall__kmod_nci_uart__279_455_nci_uart_init6, !22, !"__initcall__kmod_nci_uart__279_455_nci_uart_init6", i1 false, i1 false}
!22 = !{!"../net/nfc/nci/uart.c", i32 455, i32 1}
!23 = !{ptr @__exitcall_nci_uart_exit, !24, !"__exitcall_nci_uart_exit", i1 false, i1 false}
!24 = !{!"../net/nfc/nci/uart.c", i32 456, i32 1}
!25 = !{ptr @__UNIQUE_ID_author280, !26, !"__UNIQUE_ID_author280", i1 false, i1 false}
!26 = !{!"../net/nfc/nci/uart.c", i32 458, i32 1}
!27 = !{ptr @__UNIQUE_ID_description281, !28, !"__UNIQUE_ID_description281", i1 false, i1 false}
!28 = !{!"../net/nfc/nci/uart.c", i32 459, i32 1}
!29 = !{ptr @__UNIQUE_ID_file282, !30, !"__UNIQUE_ID_file282", i1 false, i1 false}
!30 = !{!"../net/nfc/nci/uart.c", i32 460, i32 1}
!31 = !{ptr @__UNIQUE_ID_license283, !30, !"__UNIQUE_ID_license283", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_alias284, !33, !"__UNIQUE_ID_alias284", i1 false, i1 false}
!33 = !{!"../net/nfc/nci/uart.c", i32 461, i32 1}
!34 = !{ptr @nci_uart_drivers, !35, !"nci_uart_drivers", i1 false, i1 false}
!35 = !{!"../net/nfc/nci/uart.c", i32 37, i32 25}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/nfc/nci/uart.c", i32 433, i32 11}
!38 = !{ptr @nci_uart_ldisc, !39, !"nci_uart_ldisc", i1 false, i1 false}
!39 = !{!"../net/nfc/nci/uart.c", i32 430, i32 29}
!40 = !{ptr @nci_uart_set_driver.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../net/nfc/nci/uart.c", i32 124, i32 2}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nci_uart_set_driver.__key.10, !44, !"__key", i1 false, i1 false}
!44 = !{!"../net/nfc/nci/uart.c", i32 125, i32 2}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @skb_queue_head_init.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!48 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/nfc/nci/uart.c", i32 232, i32 3}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @nci_uart_default_recv_buf._entry, !50, !"_entry", i1 false, i1 false}
!55 = !{ptr @nci_uart_default_recv_buf._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/nfc/nci/uart.c", i32 277, i32 5}
!58 = !{ptr @nci_uart_default_recv_buf._entry.17, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nci_uart_default_recv_buf._entry_ptr.19, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
