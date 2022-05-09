; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/kgdb_nmi.c_pt.bc'
source_filename = "../drivers/tty/serial/kgdb_nmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kgdb_register_nmi_console\22, \22a\22\09"
module asm "\09.weak\09__crc_kgdb_register_nmi_console\09\09\09\09"
module asm "\09.long\09__crc_kgdb_register_nmi_console\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kgdb_register_nmi_console:\09\09\09\09\09"
module asm "\09.asciz \09\22kgdb_register_nmi_console\22\09\09\09\09\09"
module asm "__kstrtabns_kgdb_register_nmi_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kgdb_unregister_nmi_console\22, \22a\22\09"
module asm "\09.weak\09__crc_kgdb_unregister_nmi_console\09\09\09\09"
module asm "\09.long\09__crc_kgdb_unregister_nmi_console\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kgdb_unregister_nmi_console:\09\09\09\09\09"
module asm "\09.asciz \09\22kgdb_unregister_nmi_console\22\09\09\09\09\09"
module asm "__kstrtabns_kgdb_unregister_nmi_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.kgdb_arch = type { [4 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.kgdb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kgdb_nmi_tty_priv = type { %struct.tty_port, %struct.timer_list, %struct.anon.74 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.74 = type { %union.anon.75, [256 x i8] }
%union.anon.75 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__param_str_knock = internal constant [15 x i8] c"kgdb_nmi.knock\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@kgdb_nmi_knock = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_knock = internal constant %struct.kernel_param { ptr @__param_str_knock, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.68 { ptr @kgdb_nmi_knock } }, section "__param", align 4
@__UNIQUE_ID_knocktype245 = internal constant [28 x i8] c"kgdb_nmi.parmtype=knock:int\00", section ".modinfo", align 1
@__UNIQUE_ID_knock246 = internal constant [235 x i8] c"kgdb_nmi.parm=knock:if set to 1 (default), the special '$3#33' command must be used to enter the debugger; when set to 0, hitting return key is enough to enter the debugger; when set to -1, the debugger is entered immediately upon NMI\00", section ".modinfo", align 1
@__param_str_magic = internal constant [15 x i8] c"kgdb_nmi.magic\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@kgdb_nmi_magic = internal global { ptr, [28 x i8] } { ptr @.str.7, [28 x i8] zeroinitializer }, align 32
@__param_magic = internal constant %struct.kernel_param { ptr @__param_str_magic, ptr null, ptr @param_ops_charp, i16 384, i8 -1, i8 0, %union.anon.68 { ptr @kgdb_nmi_magic } }, section "__param", align 4
@__UNIQUE_ID_magictype247 = internal constant [30 x i8] c"kgdb_nmi.parmtype=magic:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_magic248 = internal constant [73 x i8] c"kgdb_nmi.parm=magic:magic sequence to enter NMI debugger (default $3#33)\00", section ".modinfo", align 1
@arch_kgdb_ops = external dso_local local_unnamed_addr constant %struct.kgdb_arch, align 4
@kgdb_nmi_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kgdb_register_nmi_console._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: cannot allocate tty\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kgdb_register_nmi_console\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/tty/serial/kgdb_nmi.c\00", [34 x i8] zeroinitializer }, align 32
@kgdb_register_nmi_console._entry_ptr = internal global ptr @kgdb_register_nmi_console._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyNMI\00", [25 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@kgdb_nmi_tty_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @kgdb_nmi_tty_install, ptr null, ptr @kgdb_nmi_tty_open, ptr @kgdb_nmi_tty_close, ptr null, ptr @kgdb_nmi_tty_cleanup, ptr @kgdb_nmi_tty_write, ptr null, ptr null, ptr @kgdb_nmi_tty_write_room, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kgdb_nmi_tty_hangup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@kgdb_register_nmi_console._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: can't register tty driver: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@kgdb_register_nmi_console._entry_ptr.6 = internal global ptr @kgdb_register_nmi_console._entry.4, section ".printk_index", align 4
@kgdb_nmi_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyNMI\00\00\00\00\00\00\00\00\00\00", ptr @kgdb_nmi_console_write, ptr null, ptr @kgdb_nmi_console_device, ptr null, ptr @kgdb_nmi_console_setup, ptr null, ptr null, i16 17, i16 -1, i32 0, i32 0, i32 0, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_kgdb_register_nmi_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_kgdb_register_nmi_console = external dso_local constant [0 x i8], align 1
@__ksymtab_kgdb_register_nmi_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kgdb_register_nmi_console to i32), ptr @__kstrtab_kgdb_register_nmi_console, ptr @__kstrtabns_kgdb_register_nmi_console }, section "___ksymtab_gpl+kgdb_register_nmi_console", align 4
@__kstrtab_kgdb_unregister_nmi_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_kgdb_unregister_nmi_console = external dso_local constant [0 x i8], align 1
@__ksymtab_kgdb_unregister_nmi_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kgdb_unregister_nmi_console to i32), ptr @__kstrtab_kgdb_unregister_nmi_console, ptr @__kstrtabns_kgdb_unregister_nmi_console }, section "___ksymtab_gpl+kgdb_unregister_nmi_console", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"$3#33\00", [26 x i8] zeroinitializer }, align 32
@kgdb_nmi_poll_one_knock.n = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dbg_io_ops = external dso_local local_unnamed_addr global ptr, align 4
@kgdb_nmi_num_readers = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%c\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0D%s %s to enter the debugger> %*s\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Type\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Hit\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"<return>\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\08\00", [30 x i8] zeroinitializer }, align 32
@kgdb_nmi_port = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kgdb_nmi_tty_install.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&priv->timer)\00", [17 x i8] zeroinitializer }, align 32
@kgdb_nmi_tty_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr null, ptr null, ptr @kgdb_nmi_tty_shutdown, ptr @kgdb_nmi_tty_activate, ptr null }, [44 x i8] zeroinitializer }, align 32
@kgdb_nmi_tty_install._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: can't install tty port: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kgdb_nmi_tty_install\00", [43 x i8] zeroinitializer }, align 32
@kgdb_nmi_tty_install._entry_ptr = internal global ptr @kgdb_nmi_tty_install._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 13]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"kgdb_nmi_knock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 30, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"kgdb_nmi_magic\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 38, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"kgdb_nmi_tty_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 66, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 335, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 338, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"kgdb_nmi_tty_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 316, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 350, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"kgdb_nmi_console\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 74, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 38, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 117, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"kgdb_nmi_num_readers\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 42, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 144, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 148, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 149, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 149, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 150, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 150, i32 52 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 152, i32 14 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"kgdb_nmi_port\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 96, i32 25 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 244, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [22 x i8] c"kgdb_nmi_tty_port_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 229, i32 41 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [33 x i8] c"../drivers/tty/serial/kgdb_nmi.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 251, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_knock246, ptr @__UNIQUE_ID_knocktype245, ptr @__UNIQUE_ID_magic248, ptr @__UNIQUE_ID_magictype247, ptr @__ksymtab_kgdb_register_nmi_console, ptr @__ksymtab_kgdb_unregister_nmi_console, ptr @__param_knock, ptr @__param_magic, ptr @kgdb_nmi_tty_install._entry, ptr @kgdb_nmi_tty_install._entry_ptr, ptr @kgdb_register_nmi_console._entry, ptr @kgdb_register_nmi_console._entry.4, ptr @kgdb_register_nmi_console._entry_ptr, ptr @kgdb_register_nmi_console._entry_ptr.6, ptr @kgdb_nmi_knock, ptr @kgdb_nmi_magic, ptr @kgdb_nmi_tty_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @kgdb_nmi_tty_ops, ptr @.str.5, ptr @kgdb_nmi_console, ptr @.str.7, ptr @kgdb_nmi_poll_one_knock.n, ptr @kgdb_nmi_num_readers, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @kgdb_nmi_port, ptr @kgdb_nmi_tty_install.__key, ptr @.str.15, ptr @kgdb_nmi_tty_port_ops, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_nmi_knock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_nmi_magic to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_nmi_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_register_nmi_console._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_nmi_tty_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_register_nmi_console._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_nmi_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_nmi_poll_one_knock.n to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_nmi_num_readers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_nmi_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_nmi_tty_install.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_nmi_tty_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_nmi_tty_install._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kgdb_nmi_poll_knock() local_unnamed_addr #0 align 64 {
entry:
  %c.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kgdb_nmi_knock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %entry.return_crit_edge, label %while.body.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

while.body.preheader:                             ; preds = %entry
  %1 = load ptr, ptr @kgdb_nmi_magic, align 4
  %call.i23 = call i32 @strlen(ptr noundef %1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %2 = load ptr, ptr @dbg_io_ops, align 4
  %read_char.i24 = getelementptr inbounds %struct.kgdb_io, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %read_char.i24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_char.i24, align 4
  %call1.i25 = call i32 %4() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711680, i32 %call1.i25)
  %cmp.i26 = icmp eq i32 %call1.i25, 16711680
  br i1 %cmp.i26, label %while.body.preheader.return_crit_edge, label %while.body.preheader.if.end.i_crit_edge

while.body.preheader.if.end.i_crit_edge:          ; preds = %while.body.preheader
  br label %if.end.i

while.body.preheader.return_crit_edge:            ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %kgdb_nmi_poll_one_knock.exit.if.end.i_crit_edge, %while.body.preheader.if.end.i_crit_edge
  %call1.i28 = phi i32 [ %call1.i, %kgdb_nmi_poll_one_knock.exit.if.end.i_crit_edge ], [ %call1.i25, %while.body.preheader.if.end.i_crit_edge ]
  %call.i27 = phi i32 [ %call.i, %kgdb_nmi_poll_one_knock.exit.if.end.i_crit_edge ], [ %call.i23, %while.body.preheader.if.end.i_crit_edge ]
  %5 = phi ptr [ %16, %kgdb_nmi_poll_one_knock.exit.if.end.i_crit_edge ], [ %1, %while.body.preheader.if.end.i_crit_edge ]
  %6 = load i32, ptr @kgdb_nmi_knock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %7 = zext i32 %call1.i28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i28, label %land.lhs.true.i.if.else.i_crit_edge [
    i32 13, label %land.lhs.true.i.return_crit_edge
    i32 10, label %land.lhs.true.i.return_crit_edge35
  ]

land.lhs.true.i.return_crit_edge35:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %8 = load i32, ptr @kgdb_nmi_poll_one_knock.n, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i28, i32 %conv.i)
  %cmp5.i = icmp eq i32 %call1.i28, %conv.i
  br i1 %cmp5.i, label %if.then7.i, label %if.end13.thread.i

if.then7.i:                                       ; preds = %if.else.i
  %add.i = add i32 %8, 1
  %rem.i = urem i32 %add.i, %call.i27
  store i32 %rem.i, ptr @kgdb_nmi_poll_one_knock.n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool8.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool8.not.i, label %if.then7.i.return_crit_edge, label %if.end13.i

if.then7.i.return_crit_edge:                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end13.i:                                       ; preds = %if.then7.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_nmi_num_readers, i32 noundef 4) #10
  %11 = load volatile i32, ptr @kgdb_nmi_num_readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not.i = icmp eq i32 %11, 0
  br i1 %tobool15.not.i, label %if.then19.i, label %if.end13.i.if.then16.i_crit_edge

if.end13.i.if.then16.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i

if.end13.thread.i:                                ; preds = %if.else.i
  store i32 0, ptr @kgdb_nmi_poll_one_knock.n, align 4
  %call.i.i41.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_nmi_num_readers, i32 noundef 4) #10
  %12 = load volatile i32, ptr @kgdb_nmi_num_readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not42.i = icmp eq i32 %12, 0
  br i1 %tobool15.not42.i, label %if.end21.i, label %if.end13.thread.i.if.then16.i_crit_edge

if.end13.thread.i.if.then16.i_crit_edge:          ; preds = %if.end13.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.thread.i.if.then16.i_crit_edge, %if.end13.i.if.then16.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i.i) #10
  %conv.i.i = trunc i32 %call1.i28 to i8
  %13 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i.i, ptr %c.i.i, align 1
  %14 = load ptr, ptr @kgdb_nmi_port, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %cmp.i.i = icmp slt i32 %call1.i28, 0
  %or.cond.i.i = or i1 %cmp.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.then16.i.kgdb_tty_recv.exit.i_crit_edge, label %if.end.i.i

if.then16.i.kgdb_tty_recv.exit.i_crit_edge:       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_tty_recv.exit.i

if.end.i.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifo.i.i = getelementptr inbounds %struct.kgdb_nmi_tty_priv, ptr %14, i32 0, i32 2
  %call.i.i = call i32 @__kfifo_in(ptr noundef %fifo.i.i, ptr noundef nonnull %c.i.i, i32 noundef 1) #10
  br label %kgdb_tty_recv.exit.i

kgdb_tty_recv.exit.i:                             ; preds = %if.end.i.i, %if.then16.i.kgdb_tty_recv.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i.i) #10
  br label %kgdb_nmi_poll_one_knock.exit

if.then19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.8, i32 noundef %call1.i28) #10
  br label %kgdb_nmi_poll_one_knock.exit

if.end21.i:                                       ; preds = %if.end13.thread.i
  %15 = load i32, ptr @kgdb_nmi_knock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not.i = icmp eq i32 %15, 0
  %cond.i = select i1 %tobool22.not.i, ptr @.str.11, ptr @.str.10
  %spec.select.i = select i1 %tobool22.not.i, ptr @.str.12, ptr %5
  %call25.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull %cond.i, ptr noundef %spec.select.i, i32 noundef %call.i27, ptr noundef nonnull @.str.13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool26.not43.i = icmp eq i32 %call.i27, 0
  br i1 %tobool26.not43.i, label %if.end21.i.kgdb_nmi_poll_one_knock.exit_crit_edge, label %if.end21.i.while.body.i_crit_edge

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  br label %while.body.i

if.end21.i.kgdb_nmi_poll_one_knock.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_nmi_poll_one_knock.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end21.i.while.body.i_crit_edge
  %m.044.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %call.i27, %if.end21.i.while.body.i_crit_edge ]
  %dec.i = add i32 %m.044.i, -1
  %call27.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.14) #10
  %tobool26.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool26.not.i, label %while.body.i.kgdb_nmi_poll_one_knock.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.kgdb_nmi_poll_one_knock.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdb_nmi_poll_one_knock.exit

kgdb_nmi_poll_one_knock.exit:                     ; preds = %while.body.i.kgdb_nmi_poll_one_knock.exit_crit_edge, %if.end21.i.kgdb_nmi_poll_one_knock.exit_crit_edge, %if.then19.i, %kgdb_tty_recv.exit.i
  %16 = load ptr, ptr @kgdb_nmi_magic, align 4
  %call.i = call i32 @strlen(ptr noundef %16) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %17 = load ptr, ptr @dbg_io_ops, align 4
  %read_char.i = getelementptr inbounds %struct.kgdb_io, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %read_char.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_char.i, align 4
  %call1.i = call i32 %19() #10
  %cmp.i = icmp eq i32 %call1.i, 16711680
  br i1 %cmp.i, label %kgdb_nmi_poll_one_knock.exit.return_crit_edge, label %kgdb_nmi_poll_one_knock.exit.if.end.i_crit_edge

kgdb_nmi_poll_one_knock.exit.if.end.i_crit_edge:  ; preds = %kgdb_nmi_poll_one_knock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

kgdb_nmi_poll_one_knock.exit.return_crit_edge:    ; preds = %kgdb_nmi_poll_one_knock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %kgdb_nmi_poll_one_knock.exit.return_crit_edge, %if.then7.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %land.lhs.true.i.return_crit_edge35, %while.body.preheader.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i1 [ true, %entry.return_crit_edge ], [ false, %while.body.preheader.return_crit_edge ], [ true, %land.lhs.true.i.return_crit_edge ], [ true, %land.lhs.true.i.return_crit_edge35 ], [ true, %if.then7.i.return_crit_edge ], [ false, %kgdb_nmi_poll_one_knock.exit.return_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kgdb_register_nmi_console() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 1, ptr noundef null, i32 noundef 4) #10
  store ptr %call, ptr @kgdb_nmi_tty_driver, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  %1 = load ptr, ptr @kgdb_nmi_tty_driver, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.3, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.3, ptr %name, align 4
  %num = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12
  %8 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  tail call void @tty_termios_encode_baud_rate(ptr noundef %init_termios, i32 noundef 115200, i32 noundef 115200) #10
  %9 = load ptr, ptr @kgdb_nmi_tty_driver, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kgdb_nmi_tty_ops, ptr %ops.i, align 4
  %call7 = tail call i32 @tty_register_driver(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %call7) #14
  %11 = load ptr, ptr @kgdb_nmi_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %11) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @register_console(ptr noundef nonnull @kgdb_nmi_console) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %do.end ], [ %call7, %do.end12 ], [ 0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kgdb_unregister_nmi_console() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void %0(i1 noundef zeroext false) #10
  %call = tail call i32 @unregister_console(ptr noundef nonnull @kgdb_nmi_console) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load ptr, ptr @kgdb_nmi_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %1) #10
  %2 = load ptr, ptr @kgdb_nmi_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdb_nmi_tty_install(ptr noundef %drv, ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 900) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fifo = getelementptr inbounds %struct.kgdb_nmi_tty_priv, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %fifo, align 8
  %out = getelementptr inbounds %struct.kgdb_nmi_tty_priv, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %out, align 4
  %mask = getelementptr inbounds %struct.kgdb_nmi_tty_priv, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %mask, align 8
  %esize = getelementptr inbounds %struct.kgdb_nmi_tty_priv, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %esize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %esize, align 4
  %buf = getelementptr inbounds %struct.kgdb_nmi_tty_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %data = getelementptr inbounds %struct.kgdb_nmi_tty_priv, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %data, align 8
  %timer = getelementptr inbounds %struct.kgdb_nmi_tty_priv, ptr %call7.i.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @kgdb_nmi_tty_receiver, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @kgdb_nmi_tty_install.__key) #10
  tail call void @tty_port_init(ptr noundef nonnull %call7.i.i) #10
  %ops = getelementptr inbounds %struct.tty_port, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kgdb_nmi_tty_port_ops, ptr %ops, align 8
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data, align 4
  %call3 = tail call i32 @tty_port_install(ptr noundef nonnull %call7.i.i, ptr noundef %drv, ptr noundef %tty) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %call3) #14
  tail call void @tty_port_destroy(ptr noundef nonnull %call7.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end8 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdb_nmi_tty_open(ptr noundef %tty, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %call = tail call i32 @tty_port_open(ptr noundef %1, ptr noundef %tty, ptr noundef %file) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %3, 3
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and, label %land.lhs.true.if.end_crit_edge [
    i32 0, label %land.lhs.true.if.then_crit_edge
    i32 2, label %land.lhs.true.if.then_crit_edge6
  ]

land.lhs.true.if.then_crit_edge6:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kgdb_nmi_num_readers, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @kgdb_nmi_num_readers, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kgdb_nmi_num_readers, ptr nonnull @kgdb_nmi_num_readers, i32 1, ptr nonnull elementtype(i32) @kgdb_nmi_num_readers) #10, !srcloc !79
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdb_nmi_tty_close(ptr noundef %tty, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 3
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and, label %entry.if.end_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 2, label %entry.if.then_crit_edge5
  ]

entry.if.then_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kgdb_nmi_num_readers, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @kgdb_nmi_num_readers, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kgdb_nmi_num_readers, ptr nonnull @kgdb_nmi_num_readers, i32 1, ptr nonnull elementtype(i32) @kgdb_nmi_num_readers) #10, !srcloc !80
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @tty_port_close(ptr noundef %1, ptr noundef %tty, ptr noundef %file) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdb_nmi_tty_cleanup(ptr nocapture noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  store ptr null, ptr %driver_data, align 4
  tail call void @tty_port_destroy(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdb_nmi_tty_write(ptr nocapture noundef readnone %tty, ptr nocapture noundef readonly %buf, i32 noundef returned %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c)
  %cmp4 = icmp sgt i32 %c, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %0 = load ptr, ptr @dbg_io_ops, align 4
  %write_char = getelementptr inbounds %struct.kgdb_io, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %write_char to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write_char, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.05
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  tail call void %2(i8 noundef zeroext %4) #10
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %c
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 %c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kgdb_nmi_tty_write_room(ptr nocapture noundef readnone %tty) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2048
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdb_nmi_tty_hangup(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @tty_port_hangup(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdb_nmi_tty_receiver(ptr noundef %t) #0 align 64 {
entry:
  %ch = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -576
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch) #10
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ch, align 1, !annotation !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 1
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %2 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_nmi_num_readers, i32 noundef 4) #10
  %3 = load volatile i32, ptr @kgdb_nmi_num_readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %fifo = getelementptr i8, ptr %t, i32 48
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo, align 4
  %out = getelementptr i8, ptr %t, i32 52
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %tobool3.not = icmp eq i32 %5, %7
  br i1 %tobool3.not, label %lor.rhs.cleanup_crit_edge, label %while.cond.preheader, !prof !82

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.rhs
  %call921 = call i32 @__kfifo_out(ptr noundef %fifo, ptr noundef nonnull %ch, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call921)
  %tobool11.not22 = icmp eq i32 %call921, 0
  br i1 %tobool11.not22, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %8 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ch, align 1
  call fastcc void @tty_insert_flip_char(ptr noundef %add.ptr, i8 noundef zeroext %9)
  %call9 = call i32 @__kfifo_out(ptr noundef %fifo, ptr noundef nonnull %ch, i32 noundef 1) #10
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @tty_flip_buffer_push(ptr noundef %add.ptr) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tty_insert_flip_char(ptr noundef %port, i8 noundef zeroext %ch) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tail = getelementptr inbounds %struct.tty_bufhead, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail, align 4
  %used = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used, align 4
  %size = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp3 = icmp slt i32 %3, %5
  br i1 %cmp3, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not.not = icmp eq i32 %and, 0
  br i1 %tobool7.not.not, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 6
  %add.ptr.i.i = getelementptr i8, ptr %data.i.i, i32 %3
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %5
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %add.ptr.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %used, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %used, align 4
  %data.i = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 6
  %add.ptr.i1 = getelementptr i8, ptr %data.i, i32 %10
  %11 = ptrtoint ptr %add.ptr.i1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %ch, ptr %add.ptr.i1, align 1
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @__tty_insert_flip_char(ptr noundef %port, i8 noundef zeroext %ch, i8 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdb_nmi_tty_shutdown(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.kgdb_nmi_tty_priv, ptr %port, i32 0, i32 1
  %call = tail call i32 @del_timer(ptr noundef %timer) #10
  store ptr null, ptr @kgdb_nmi_port, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdb_nmi_tty_activate(ptr noundef %port, ptr nocapture noundef readnone %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %port, ptr @kgdb_nmi_port, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %timer = getelementptr inbounds %struct.kgdb_nmi_tty_priv, ptr %port, i32 0, i32 1
  %expires = getelementptr inbounds %struct.kgdb_nmi_tty_priv, ptr %port, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdb_nmi_console_write(ptr nocapture noundef readnone %co, ptr nocapture noundef readonly %s, i32 noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c)
  %cmp3.not = icmp eq i32 %c, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %0 = load ptr, ptr @dbg_io_ops, align 4
  %write_char = getelementptr inbounds %struct.kgdb_io, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %write_char to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write_char, align 4
  %arrayidx = getelementptr i8, ptr %s, i32 %i.04
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  tail call void %2(i8 noundef zeroext %4) #10
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %c
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @kgdb_nmi_console_device(ptr nocapture noundef readonly %co, ptr nocapture noundef writeonly %idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %conv = sext i16 %1 to i32
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %idx, align 4
  %3 = load ptr, ptr @kgdb_nmi_tty_driver, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdb_nmi_console_setup(ptr noundef %co, ptr nocapture noundef readnone %options) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 9), align 4
  tail call void %0(i1 noundef zeroext true) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbg_io_ops to i32))
  %1 = load ptr, ptr @dbg_io_ops, align 4
  %cons = getelementptr inbounds %struct.kgdb_io, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %co, ptr %cons, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !64, !65, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__param_knock, !1, !"__param_knock", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_knocktype245, !1, !"__UNIQUE_ID_knocktype245", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_knock246, !4, !"__UNIQUE_ID_knock246", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 32, i32 1}
!5 = !{ptr @__param_magic, !6, !"__param_magic", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 39, i32 1}
!7 = !{ptr @__UNIQUE_ID_magictype247, !6, !"__UNIQUE_ID_magictype247", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_magic248, !9, !"__UNIQUE_ID_magic248", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 40, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 335, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @kgdb_register_nmi_console._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @kgdb_register_nmi_console._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 338, i32 37}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 350, i32 3}
!20 = !{ptr @kgdb_register_nmi_console._entry.4, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @kgdb_register_nmi_console._entry_ptr.6, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_kgdb_register_nmi_console, !23, !"__ksymtab_kgdb_register_nmi_console", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 361, i32 1}
!24 = !{ptr @__ksymtab_kgdb_unregister_nmi_console, !25, !"__ksymtab_kgdb_unregister_nmi_console", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 380, i32 1}
!26 = !{ptr @kgdb_nmi_tty_driver, !27, !"kgdb_nmi_tty_driver", i1 false, i1 false}
!27 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 66, i32 27}
!28 = !{ptr @__param_str_knock, !1, !"__param_str_knock", i1 false, i1 false}
!29 = !{ptr @kgdb_nmi_knock, !30, !"kgdb_nmi_knock", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 30, i32 12}
!31 = !{ptr @__param_str_magic, !6, !"__param_str_magic", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 38, i32 31}
!34 = !{ptr @kgdb_nmi_magic, !35, !"kgdb_nmi_magic", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 38, i32 14}
!36 = !{ptr @kgdb_nmi_poll_one_knock.n, !37, !"n", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 117, i32 13}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 144, i32 14}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 148, i32 13}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 149, i32 23}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 149, i32 32}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 150, i32 32}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 150, i32 52}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 152, i32 14}
!52 = !{ptr @kgdb_nmi_num_readers, !53, !"kgdb_nmi_num_readers", i1 false, i1 false}
!53 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 42, i32 17}
!54 = !{ptr @kgdb_nmi_port, !55, !"kgdb_nmi_port", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 96, i32 25}
!56 = !{ptr @kgdb_nmi_tty_ops, !57, !"kgdb_nmi_tty_ops", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 316, i32 36}
!58 = !{ptr @kgdb_nmi_tty_install.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 244, i32 2}
!60 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 251, i32 3}
!63 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @kgdb_nmi_tty_install._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @kgdb_nmi_tty_install._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @kgdb_nmi_tty_port_ops, !67, !"kgdb_nmi_tty_port_ops", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 229, i32 41}
!68 = !{ptr @kgdb_nmi_console, !69, !"kgdb_nmi_console", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/kgdb_nmi.c", i32 74, i32 23}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148217344, i64 2148217370, i64 2148217399, i64 2148217433, i64 2148217464, i64 2148217487}
!80 = !{i64 2148219809, i64 2148219835, i64 2148219864, i64 2148219898, i64 2148219929, i64 2148219952}
!81 = !{!"auto-init"}
!82 = !{!"branch_weights", i32 2000, i32 1}
