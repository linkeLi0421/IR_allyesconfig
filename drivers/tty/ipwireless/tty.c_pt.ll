; ModuleID = '/llk/IR_all_yes/drivers/tty/ipwireless/tty.c_pt.bc'
source_filename = "../drivers/tty/ipwireless/tty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ipw_tty = type { %struct.tty_port, i32, ptr, i32, i32, i32, ptr, i32, %struct.mutex, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.71, %struct.anon.72, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.71 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.72 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }

@ipwireless_tty_received._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017ipwireless: %d chars not inserted to flip buffer!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipwireless_tty_received\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/tty/ipwireless/tty.c\00", [35 x i8] zeroinitializer }, align 32
@ipwireless_tty_received._entry_ptr = internal global ptr @ipwireless_tty_received._entry, section ".printk_index", align 4
@ttys = internal global { [24 x ptr], [32 x i8] } zeroinitializer, align 32
@ipwireless_tty_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016ipwireless: deregistering %s device ttyIPWp%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipwireless_tty_free\00", [44 x i8] zeroinitializer }, align 32
@ipwireless_tty_free._entry_ptr = internal global ptr @ipwireless_tty_free._entry, section ".printk_index", align 4
@ipw_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipwireless\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ttyIPWp\00", [24 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@tty_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr null, ptr null, ptr @ipw_open, ptr @ipw_close, ptr null, ptr null, ptr @ipw_write, ptr null, ptr null, ptr @ipw_write_room, ptr @ipw_chars_in_buffer, ptr @ipw_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipw_hangup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipw_tiocmget, ptr @ipw_tiocmset, ptr null, ptr null, ptr @ipwireless_get_serial_info, ptr @ipwireless_set_serial_info, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ipwireless_tty_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ipwireless: failed to register tty driver\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipwireless_tty_init\00", [44 x i8] zeroinitializer }, align 32
@ipwireless_tty_init._entry_ptr = internal global ptr @ipwireless_tty_init._entry, section ".printk_index", align 4
@add_tty.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ttys[j]->ipw_tty_mutex\00", [40 x i8] zeroinitializer }, align 32
@add_tty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016ipwireless: registering %s device ttyIPWp%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"add_tty\00", [24 x i8] zeroinitializer }, align 32
@add_tty._entry_ptr = internal global ptr @add_tty._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipwireless_loopback = external dso_local local_unnamed_addr global i32, align 4
@tty_type_name.channel_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"modem\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"monitor\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RAS-raw\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 21515, i64 21531, i64 2147775543, i64 2147775574]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 169, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"ttys\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 59, i32 24 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 524, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"ipw_tty_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 61, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 572, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 573, i32 25 }
@___asan_gen_.48 = private unnamed_addr constant [8 x i8] c"tty_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 549, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 586, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 449, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 461, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"channel_names\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 65, i32 15 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 66, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 67, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [32 x i8] c"../drivers/tty/ipwireless/tty.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 68, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @add_tty._entry, ptr @add_tty._entry_ptr, ptr @ipwireless_tty_free._entry, ptr @ipwireless_tty_free._entry_ptr, ptr @ipwireless_tty_init._entry, ptr @ipwireless_tty_init._entry_ptr, ptr @ipwireless_tty_received._entry, ptr @ipwireless_tty_received._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ttys, ptr @.str.3, ptr @.str.4, ptr @ipw_tty_driver, ptr @.str.5, ptr @.str.6, ptr @tty_ops, ptr @.str.7, ptr @.str.8, ptr @add_tty.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @tty_type_name.channel_names, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_tty_received._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttys to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_tty_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipw_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_tty_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_tty.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_tty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty_type_name.channel_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_tty_received(ptr noundef %tty, ptr noundef %data, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ipw_tty_mutex = getelementptr inbounds %struct.ipw_tty, ptr %tty, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %ipw_tty_mutex, i32 noundef 0) #12
  %count = getelementptr inbounds %struct.tty_port, ptr %tty, i32 0, i32 7
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  tail call void @mutex_unlock(ptr noundef %ipw_tty_mutex) #12
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %tty, ptr noundef %data, i8 noundef zeroext 0, i32 noundef %length) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %length)
  %cmp.not = icmp eq i32 %call.i, %length
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %length, %call.i
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %sub) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_flip_buffer_push(ptr noundef %tty) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipwireless_tty_create(ptr noundef %hardware, ptr noundef %network) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ttys, align 4
  %cmp4.not = icmp eq ptr %0, null
  br i1 %cmp4.not, label %for.cond1, label %entry.for.inc21_crit_edge

entry.for.inc21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21

for.cond1:                                        ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 8), align 4
  %cmp4.not.164 = icmp eq ptr %1, null
  br i1 %cmp4.not.164, label %for.cond1.166, label %for.cond1.for.inc21_crit_edge

for.cond1.for.inc21_crit_edge:                    ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21

for.cond1.166:                                    ; preds = %for.cond1
  %2 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 16), align 4
  %cmp4.not.267 = icmp eq ptr %2, null
  br i1 %cmp4.not.267, label %for.cond1.166.if.then5.critedge_crit_edge, label %for.cond1.166.for.inc21_crit_edge

for.cond1.166.for.inc21_crit_edge:                ; preds = %for.cond1.166
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21

for.cond1.166.if.then5.critedge_crit_edge:        ; preds = %for.cond1.166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

if.then5.critedge:                                ; preds = %for.cond1.7.1.if.then5.critedge_crit_edge, %for.cond1.6.1.if.then5.critedge_crit_edge, %for.cond1.5.1.if.then5.critedge_crit_edge, %for.cond1.4.1.if.then5.critedge_crit_edge, %for.cond1.3.1.if.then5.critedge_crit_edge, %for.cond1.2.1.if.then5.critedge_crit_edge, %for.cond1.1.1.if.then5.critedge_crit_edge, %for.cond1.166.if.then5.critedge_crit_edge
  %i.04549 = phi i32 [ 0, %for.cond1.166.if.then5.critedge_crit_edge ], [ 1, %for.cond1.1.1.if.then5.critedge_crit_edge ], [ 2, %for.cond1.2.1.if.then5.critedge_crit_edge ], [ 3, %for.cond1.3.1.if.then5.critedge_crit_edge ], [ 4, %for.cond1.4.1.if.then5.critedge_crit_edge ], [ 5, %for.cond1.5.1.if.then5.critedge_crit_edge ], [ 6, %for.cond1.6.1.if.then5.critedge_crit_edge ], [ 7, %for.cond1.7.1.if.then5.critedge_crit_edge ]
  %call = tail call fastcc i32 @add_tty(i32 noundef %i.04549, ptr noundef %hardware, ptr noundef %network, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.then5.critedge.cleanup23_crit_edge

if.then5.critedge.cleanup23_crit_edge:            ; preds = %if.then5.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

if.end8:                                          ; preds = %if.then5.critedge
  %add9 = or i32 %i.04549, 8
  %call10 = tail call fastcc i32 @add_tty(i32 noundef %add9, ptr noundef %hardware, ptr noundef %network, i32 noundef 1, i32 noundef -1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup23_crit_edge

if.end8.cleanup23_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

if.end13:                                         ; preds = %if.end8
  %add14 = or i32 %i.04549, 16
  %call15 = tail call fastcc i32 @add_tty(i32 noundef %add14, ptr noundef %hardware, ptr noundef %network, i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.cleanup23_crit_edge

if.end13.cleanup23_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx19 = getelementptr [24 x ptr], ptr @ttys, i32 0, i32 %i.04549
  %3 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx19, align 4
  br label %cleanup23

for.inc21:                                        ; preds = %for.cond1.166.for.inc21_crit_edge, %for.cond1.for.inc21_crit_edge, %entry.for.inc21_crit_edge
  %5 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 1), align 4
  %cmp4.not.1 = icmp eq ptr %5, null
  br i1 %cmp4.not.1, label %for.cond1.1, label %for.inc21.for.inc21.1_crit_edge

for.inc21.for.inc21.1_crit_edge:                  ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %for.cond1.1.1.for.inc21.1_crit_edge, %for.cond1.1.for.inc21.1_crit_edge, %for.inc21.for.inc21.1_crit_edge
  %6 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 2), align 4
  %cmp4.not.2 = icmp eq ptr %6, null
  br i1 %cmp4.not.2, label %for.cond1.2, label %for.inc21.1.for.inc21.2_crit_edge

for.inc21.1.for.inc21.2_crit_edge:                ; preds = %for.inc21.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.2

for.cond1.1:                                      ; preds = %for.inc21
  %7 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 9), align 4
  %cmp4.not.1.1 = icmp eq ptr %7, null
  br i1 %cmp4.not.1.1, label %for.cond1.1.1, label %for.cond1.1.for.inc21.1_crit_edge

for.cond1.1.for.inc21.1_crit_edge:                ; preds = %for.cond1.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.1

for.cond1.1.1:                                    ; preds = %for.cond1.1
  %8 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 17), align 4
  %cmp4.not.1.2 = icmp eq ptr %8, null
  br i1 %cmp4.not.1.2, label %for.cond1.1.1.if.then5.critedge_crit_edge, label %for.cond1.1.1.for.inc21.1_crit_edge

for.cond1.1.1.for.inc21.1_crit_edge:              ; preds = %for.cond1.1.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.1

for.cond1.1.1.if.then5.critedge_crit_edge:        ; preds = %for.cond1.1.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

for.inc21.2:                                      ; preds = %for.cond1.2.1.for.inc21.2_crit_edge, %for.cond1.2.for.inc21.2_crit_edge, %for.inc21.1.for.inc21.2_crit_edge
  %9 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 3), align 4
  %cmp4.not.3 = icmp eq ptr %9, null
  br i1 %cmp4.not.3, label %for.cond1.3, label %for.inc21.2.for.inc21.3_crit_edge

for.inc21.2.for.inc21.3_crit_edge:                ; preds = %for.inc21.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.3

for.cond1.2:                                      ; preds = %for.inc21.1
  %10 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 10), align 4
  %cmp4.not.2.1 = icmp eq ptr %10, null
  br i1 %cmp4.not.2.1, label %for.cond1.2.1, label %for.cond1.2.for.inc21.2_crit_edge

for.cond1.2.for.inc21.2_crit_edge:                ; preds = %for.cond1.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.2

for.cond1.2.1:                                    ; preds = %for.cond1.2
  %11 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 18), align 4
  %cmp4.not.2.2 = icmp eq ptr %11, null
  br i1 %cmp4.not.2.2, label %for.cond1.2.1.if.then5.critedge_crit_edge, label %for.cond1.2.1.for.inc21.2_crit_edge

for.cond1.2.1.for.inc21.2_crit_edge:              ; preds = %for.cond1.2.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.2

for.cond1.2.1.if.then5.critedge_crit_edge:        ; preds = %for.cond1.2.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

for.inc21.3:                                      ; preds = %for.cond1.3.1.for.inc21.3_crit_edge, %for.cond1.3.for.inc21.3_crit_edge, %for.inc21.2.for.inc21.3_crit_edge
  %12 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 4), align 4
  %cmp4.not.4 = icmp eq ptr %12, null
  br i1 %cmp4.not.4, label %for.cond1.4, label %for.inc21.3.for.inc21.4_crit_edge

for.inc21.3.for.inc21.4_crit_edge:                ; preds = %for.inc21.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.4

for.cond1.3:                                      ; preds = %for.inc21.2
  %13 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 11), align 4
  %cmp4.not.3.1 = icmp eq ptr %13, null
  br i1 %cmp4.not.3.1, label %for.cond1.3.1, label %for.cond1.3.for.inc21.3_crit_edge

for.cond1.3.for.inc21.3_crit_edge:                ; preds = %for.cond1.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.3

for.cond1.3.1:                                    ; preds = %for.cond1.3
  %14 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 19), align 4
  %cmp4.not.3.2 = icmp eq ptr %14, null
  br i1 %cmp4.not.3.2, label %for.cond1.3.1.if.then5.critedge_crit_edge, label %for.cond1.3.1.for.inc21.3_crit_edge

for.cond1.3.1.for.inc21.3_crit_edge:              ; preds = %for.cond1.3.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.3

for.cond1.3.1.if.then5.critedge_crit_edge:        ; preds = %for.cond1.3.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

for.inc21.4:                                      ; preds = %for.cond1.4.1.for.inc21.4_crit_edge, %for.cond1.4.for.inc21.4_crit_edge, %for.inc21.3.for.inc21.4_crit_edge
  %15 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 5), align 4
  %cmp4.not.5 = icmp eq ptr %15, null
  br i1 %cmp4.not.5, label %for.cond1.5, label %for.inc21.4.for.inc21.5_crit_edge

for.inc21.4.for.inc21.5_crit_edge:                ; preds = %for.inc21.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.5

for.cond1.4:                                      ; preds = %for.inc21.3
  %16 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 12), align 4
  %cmp4.not.4.1 = icmp eq ptr %16, null
  br i1 %cmp4.not.4.1, label %for.cond1.4.1, label %for.cond1.4.for.inc21.4_crit_edge

for.cond1.4.for.inc21.4_crit_edge:                ; preds = %for.cond1.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.4

for.cond1.4.1:                                    ; preds = %for.cond1.4
  %17 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 20), align 4
  %cmp4.not.4.2 = icmp eq ptr %17, null
  br i1 %cmp4.not.4.2, label %for.cond1.4.1.if.then5.critedge_crit_edge, label %for.cond1.4.1.for.inc21.4_crit_edge

for.cond1.4.1.for.inc21.4_crit_edge:              ; preds = %for.cond1.4.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.4

for.cond1.4.1.if.then5.critedge_crit_edge:        ; preds = %for.cond1.4.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

for.inc21.5:                                      ; preds = %for.cond1.5.1.for.inc21.5_crit_edge, %for.cond1.5.for.inc21.5_crit_edge, %for.inc21.4.for.inc21.5_crit_edge
  %18 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 6), align 4
  %cmp4.not.6 = icmp eq ptr %18, null
  br i1 %cmp4.not.6, label %for.cond1.6, label %for.inc21.5.for.body3.preheader.7_crit_edge

for.inc21.5.for.body3.preheader.7_crit_edge:      ; preds = %for.inc21.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.preheader.7

for.cond1.5:                                      ; preds = %for.inc21.4
  %19 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 13), align 4
  %cmp4.not.5.1 = icmp eq ptr %19, null
  br i1 %cmp4.not.5.1, label %for.cond1.5.1, label %for.cond1.5.for.inc21.5_crit_edge

for.cond1.5.for.inc21.5_crit_edge:                ; preds = %for.cond1.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.5

for.cond1.5.1:                                    ; preds = %for.cond1.5
  %20 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 21), align 4
  %cmp4.not.5.2 = icmp eq ptr %20, null
  br i1 %cmp4.not.5.2, label %for.cond1.5.1.if.then5.critedge_crit_edge, label %for.cond1.5.1.for.inc21.5_crit_edge

for.cond1.5.1.for.inc21.5_crit_edge:              ; preds = %for.cond1.5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.5

for.cond1.5.1.if.then5.critedge_crit_edge:        ; preds = %for.cond1.5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

for.cond1.6:                                      ; preds = %for.inc21.5
  %21 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 14), align 4
  %cmp4.not.6.1 = icmp eq ptr %21, null
  br i1 %cmp4.not.6.1, label %for.cond1.6.1, label %for.cond1.6.for.body3.preheader.7_crit_edge

for.cond1.6.for.body3.preheader.7_crit_edge:      ; preds = %for.cond1.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.preheader.7

for.cond1.6.1:                                    ; preds = %for.cond1.6
  %22 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 22), align 4
  %cmp4.not.6.2 = icmp eq ptr %22, null
  br i1 %cmp4.not.6.2, label %for.cond1.6.1.if.then5.critedge_crit_edge, label %for.cond1.6.1.for.body3.preheader.7_crit_edge

for.cond1.6.1.for.body3.preheader.7_crit_edge:    ; preds = %for.cond1.6.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.preheader.7

for.cond1.6.1.if.then5.critedge_crit_edge:        ; preds = %for.cond1.6.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

for.body3.preheader.7:                            ; preds = %for.cond1.6.1.for.body3.preheader.7_crit_edge, %for.cond1.6.for.body3.preheader.7_crit_edge, %for.inc21.5.for.body3.preheader.7_crit_edge
  %23 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 7), align 4
  %cmp4.not.7 = icmp eq ptr %23, null
  br i1 %cmp4.not.7, label %for.cond1.7, label %for.body3.preheader.7.cleanup23_crit_edge

for.body3.preheader.7.cleanup23_crit_edge:        ; preds = %for.body3.preheader.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

for.cond1.7:                                      ; preds = %for.body3.preheader.7
  %24 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 15), align 4
  %cmp4.not.7.1 = icmp eq ptr %24, null
  br i1 %cmp4.not.7.1, label %for.cond1.7.1, label %for.cond1.7.cleanup23_crit_edge

for.cond1.7.cleanup23_crit_edge:                  ; preds = %for.cond1.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

for.cond1.7.1:                                    ; preds = %for.cond1.7
  %25 = load ptr, ptr getelementptr inbounds ([24 x ptr], ptr @ttys, i32 0, i32 23), align 4
  %cmp4.not.7.2 = icmp eq ptr %25, null
  br i1 %cmp4.not.7.2, label %for.cond1.7.1.if.then5.critedge_crit_edge, label %for.cond1.7.1.cleanup23_crit_edge

for.cond1.7.1.cleanup23_crit_edge:                ; preds = %for.cond1.7.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

for.cond1.7.1.if.then5.critedge_crit_edge:        ; preds = %for.cond1.7.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

cleanup23:                                        ; preds = %for.cond1.7.1.cleanup23_crit_edge, %for.cond1.7.cleanup23_crit_edge, %for.body3.preheader.7.cleanup23_crit_edge, %if.end18, %if.end13.cleanup23_crit_edge, %if.end8.cleanup23_crit_edge, %if.then5.critedge.cleanup23_crit_edge
  %retval.2 = phi ptr [ null, %if.end13.cleanup23_crit_edge ], [ null, %if.end8.cleanup23_crit_edge ], [ null, %if.then5.critedge.cleanup23_crit_edge ], [ %4, %if.end18 ], [ null, %for.cond1.7.1.cleanup23_crit_edge ], [ null, %for.cond1.7.cleanup23_crit_edge ], [ null, %for.body3.preheader.7.cleanup23_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_tty(i32 noundef %j, ptr noundef %hardware, ptr noundef %network, i32 noundef %channel_idx, i32 noundef %secondary_channel_idx, i32 noundef %tty_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 700) #16
  %arrayidx = getelementptr [24 x ptr], ptr @ttys, i32 0, i32 %j
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.ipw_tty, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %j, ptr %index, align 8
  %hardware4 = getelementptr inbounds %struct.ipw_tty, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %hardware4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hardware, ptr %hardware4, align 4
  %channel_idx6 = getelementptr inbounds %struct.ipw_tty, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %channel_idx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %channel_idx, ptr %channel_idx6, align 8
  %secondary_channel_idx8 = getelementptr inbounds %struct.ipw_tty, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %secondary_channel_idx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %secondary_channel_idx, ptr %secondary_channel_idx8, align 4
  %network10 = getelementptr inbounds %struct.ipw_tty, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %network10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %network, ptr %network10, align 4
  %tty_type12 = getelementptr inbounds %struct.ipw_tty, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %tty_type12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tty_type, ptr %tty_type12, align 8
  %ipw_tty_mutex = getelementptr inbounds %struct.ipw_tty, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %ipw_tty_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @add_tty.__key) #12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @tty_port_init(ptr noundef %9) #12
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = load ptr, ptr @ipw_tty_driver, align 4
  %call17 = tail call ptr @tty_port_register_device(ptr noundef %11, ptr noundef %12, i32 noundef %j, ptr noundef null) #12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void @ipwireless_associate_network_tty(ptr noundef %network, i32 noundef %channel_idx, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %secondary_channel_idx)
  %cmp.not = icmp eq i32 %secondary_channel_idx, -1
  br i1 %cmp.not, label %if.end.if.end21_crit_edge, label %if.then19

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  tail call void @ipwireless_associate_network_tty(ptr noundef %network, i32 noundef 0, ptr noundef %16) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_loopback to i32))
  %17 = load i32, ptr @ipwireless_loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j)
  %cmp.i = icmp sgt i32 %j, 15
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end21.return_crit_edge, label %get_tty.exit

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

get_tty.exit:                                     ; preds = %if.end21
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool23.not = icmp eq ptr %19, null
  br i1 %tobool23.not, label %get_tty.exit.return_crit_edge, label %do.end26

get_tty.exit.return_crit_edge:                    ; preds = %get_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end26:                                         ; preds = %get_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i52 = getelementptr [3 x ptr], ptr @tty_type_name.channel_names, i32 0, i32 %tty_type
  %20 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i52, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %21, i32 noundef %j) #15
  br label %return

return:                                           ; preds = %do.end26, %get_tty.exit.return_crit_edge, %if.end21.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %entry.return_crit_edge ], [ 0, %do.end26 ], [ 0, %get_tty.exit.return_crit_edge ], [ 0, %if.end21.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_tty_free(ptr nocapture noundef readonly %tty) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.ipw_tty, ptr %tty, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [24 x ptr], ptr @ttys, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %network1 = getelementptr inbounds %struct.ipw_tty, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %network1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %network1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp46 = icmp slt i32 %1, 24
  br i1 %cmp46, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %entry.for.body_crit_edge
  %j.047 = phi i32 [ %add, %if.end21.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %arrayidx3 = getelementptr [24 x ptr], ptr @ttys, i32 0, i32 %j.047
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end21_crit_edge, label %if.then

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then:                                          ; preds = %for.body
  %ipw_tty_mutex = getelementptr inbounds %struct.ipw_tty, ptr %7, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %ipw_tty_mutex, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_loopback to i32))
  %8 = load i32, ptr @ipwireless_loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.047)
  %cmp.i = icmp sgt i32 %j.047, 15
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then.if.end_crit_edge, label %get_tty.exit

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

get_tty.exit:                                     ; preds = %if.then
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %get_tty.exit.if.end_crit_edge, label %do.end

get_tty.exit.if.end_crit_edge:                    ; preds = %get_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %get_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  %tty_type = getelementptr inbounds %struct.ipw_tty, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %tty_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tty_type, align 4
  %arrayidx.i41 = getelementptr [3 x ptr], ptr @tty_type_name.channel_names, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i41, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %14, i32 noundef %j.047) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %get_tty.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %tty8 = getelementptr inbounds %struct.tty_port, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %tty8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tty8, align 4
  %cmp9.not = icmp eq ptr %16, null
  br i1 %cmp9.not, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %ipw_tty_mutex) #12
  %17 = ptrtoint ptr %tty8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tty8, align 4
  tail call void @tty_vhangup(ptr noundef %18) #12
  tail call void @mutex_lock_nested(ptr noundef %ipw_tty_mutex, i32 noundef 0) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %count = getelementptr inbounds %struct.tty_port, ptr %7, i32 0, i32 7
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not45 = icmp eq i32 %20, 0
  br i1 %tobool17.not45, label %if.end15.while.end_crit_edge, label %while.body.lr.ph

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end15
  %tty_type.i = getelementptr inbounds %struct.ipw_tty, ptr %7, i32 0, i32 5
  %network.i = getelementptr inbounds %struct.ipw_tty, ptr %7, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %do_ipw_close.exit.while.body_crit_edge, %while.body.lr.ph
  %21 = phi i32 [ %20, %while.body.lr.ph ], [ %32, %do_ipw_close.exit.while.body_crit_edge ]
  %dec.i = add i32 %21, -1
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dec.i, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i42 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i42, label %if.then.i, label %while.body.do_ipw_close.exit_crit_edge

while.body.do_ipw_close.exit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_ipw_close.exit

if.then.i:                                        ; preds = %while.body
  %23 = ptrtoint ptr %tty8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tty8, align 4
  %cmp5.not.i = icmp eq ptr %24, null
  br i1 %cmp5.not.i, label %if.then.i.while.end_crit_edge, label %if.then6.i

if.then.i.while.end_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then6.i:                                       ; preds = %if.then.i
  %25 = ptrtoint ptr %tty8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %tty8, align 4
  %driver_data.i = getelementptr inbounds %struct.tty_struct, ptr %24, i32 0, i32 30
  %26 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %driver_data.i, align 4
  %27 = ptrtoint ptr %tty_type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tty_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp9.i = icmp eq i32 %28, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.then6.i.do_ipw_close.exitthread-pre-split_crit_edge

if.then6.i.do_ipw_close.exitthread-pre-split_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_ipw_close.exitthread-pre-split

if.then10.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %network.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %network.i, align 4
  tail call void @ipwireless_ppp_close(ptr noundef %30) #12
  br label %do_ipw_close.exitthread-pre-split

do_ipw_close.exitthread-pre-split:                ; preds = %if.then10.i, %if.then6.i.do_ipw_close.exitthread-pre-split_crit_edge
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %count, align 4
  br label %do_ipw_close.exit

do_ipw_close.exit:                                ; preds = %do_ipw_close.exitthread-pre-split, %while.body.do_ipw_close.exit_crit_edge
  %32 = phi i32 [ %.pr, %do_ipw_close.exitthread-pre-split ], [ %dec.i, %while.body.do_ipw_close.exit_crit_edge ]
  %tobool17.not = icmp eq i32 %32, 0
  br i1 %tobool17.not, label %do_ipw_close.exit.while.end_crit_edge, label %do_ipw_close.exit.while.body_crit_edge

do_ipw_close.exit.while.body_crit_edge:           ; preds = %do_ipw_close.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

do_ipw_close.exit.while.end_crit_edge:            ; preds = %do_ipw_close.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do_ipw_close.exit.while.end_crit_edge, %if.then.i.while.end_crit_edge, %if.end15.while.end_crit_edge
  %channel_idx = getelementptr inbounds %struct.ipw_tty, ptr %7, i32 0, i32 3
  %33 = ptrtoint ptr %channel_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel_idx, align 4
  tail call void @ipwireless_disassociate_network_ttys(ptr noundef %5, i32 noundef %34) #12
  %35 = load ptr, ptr @ipw_tty_driver, align 4
  tail call void @tty_unregister_device(ptr noundef %35, i32 noundef %j.047) #12
  tail call void @tty_port_destroy(ptr noundef nonnull %7) #12
  %36 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx3, align 4
  tail call void @mutex_unlock(ptr noundef %ipw_tty_mutex) #12
  tail call void @kfree(ptr noundef nonnull %7) #12
  br label %if.end21

if.end21:                                         ; preds = %while.end, %for.body.if.end21_crit_edge
  %add = add nsw i32 %j.047, 8
  %cmp = icmp slt i32 %j.047, 16
  br i1 %cmp, label %if.end21.for.body_crit_edge, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_disassociate_network_ttys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipwireless_tty_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 24, ptr noundef null, i32 noundef 12) #12
  store ptr %call, ptr @ipw_tty_driver, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.5, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.6, ptr %name, align 4
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
  store i32 3261, ptr %c_cflag, align 4
  %c_ispeed = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 6
  %9 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9600, ptr %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 7
  %10 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9600, ptr %c_ospeed, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 20
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tty_ops, ptr %ops.i, align 4
  %call6 = tail call i32 @tty_register_driver(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #15
  %12 = load ptr, ptr @ipw_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %12) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call6, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_tty_release() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ipw_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #12
  %1 = load ptr, ptr @ipw_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ipwireless_tty_is_modem(ptr nocapture noundef readonly %tty) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tty_type = getelementptr inbounds %struct.ipw_tty, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %tty_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tty_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_tty_notify_control_line_change(ptr nocapture noundef %tty, i32 noundef %channel_idx, i32 noundef %control_lines, i32 noundef %changed_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %control_lines1 = getelementptr inbounds %struct.ipw_tty, ptr %tty, i32 0, i32 7
  %0 = ptrtoint ptr %control_lines1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control_lines1, align 4
  %neg = xor i32 %changed_mask, -1
  %and = and i32 %1, %neg
  %and3 = and i32 %changed_mask, %control_lines
  %or = or i32 %and, %and3
  store i32 %or, ptr %control_lines1, align 4
  %and5 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp ne i32 %and5, 0
  %and7 = and i32 %or, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %tobool.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %land.lhs.true9, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true9:                                   ; preds = %entry
  %tty10 = getelementptr inbounds %struct.tty_port, ptr %tty, i32 0, i32 1
  %2 = ptrtoint ptr %tty10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty10, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %land.lhs.true9.if.end_crit_edge, label %if.then

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_hangup(ptr noundef nonnull %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true9.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_associate_network_tty(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_ppp_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipw_open(ptr noundef %linux_tty, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %linux_tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_loopback to i32))
  %2 = load i32, ptr @ipwireless_loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp.i = icmp sgt i32 %1, 15
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %get_tty.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

get_tty.exit:                                     ; preds = %entry
  %arrayidx.i = getelementptr [24 x ptr], ptr @ttys, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %get_tty.exit.cleanup_crit_edge, label %if.end

get_tty.exit.cleanup_crit_edge:                   ; preds = %get_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %get_tty.exit
  %ipw_tty_mutex = getelementptr inbounds %struct.ipw_tty, ptr %4, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %ipw_tty_mutex, i32 noundef 0) #12
  %count = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_bytes_queued = getelementptr inbounds %struct.ipw_tty, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %tx_bytes_queued to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_bytes_queued, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %count, align 4
  %tty6 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %tty6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %linux_tty, ptr %tty6, align 4
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %linux_tty, i32 0, i32 30
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %4, ptr %driver_data, align 4
  %tty_type = getelementptr inbounds %struct.ipw_tty, ptr %4, i32 0, i32 5
  %12 = ptrtoint ptr %tty_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tty_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7 = icmp eq i32 %13, 0
  br i1 %cmp7, label %if.then8, label %if.end2.if.end9_crit_edge

if.end2.if.end9_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %network = getelementptr inbounds %struct.ipw_tty, ptr %4, i32 0, i32 6
  %14 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %network, align 4
  tail call void @ipwireless_ppp_open(ptr noundef %15) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end2.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %ipw_tty_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %get_tty.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -19, %get_tty.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipw_close(ptr nocapture noundef readonly %linux_tty, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.tty_struct, ptr %linux_tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ipw_hangup.exit_crit_edge, label %if.end.i

entry.ipw_hangup.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ipw_hangup.exit

if.end.i:                                         ; preds = %entry
  %ipw_tty_mutex.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %ipw_tty_mutex.i, i32 noundef 0) #12
  %count.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end3.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end3.i:                                        ; preds = %if.end.i
  %dec.i.i = add i32 %3, -1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec.i.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end3.i.cleanup.sink.split.i_crit_edge

if.end3.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then.i.i:                                      ; preds = %if.end3.i
  %tty4.i.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %tty4.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tty4.i.i, align 4
  %cmp5.not.i.i = icmp eq ptr %6, null
  br i1 %cmp5.not.i.i, label %if.then.i.i.cleanup.sink.split.i_crit_edge, label %if.then6.i.i

if.then.i.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  %7 = ptrtoint ptr %tty4.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tty4.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 30
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data.i.i, align 4
  %tty_type.i.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %tty_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tty_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9.i.i = icmp eq i32 %10, 0
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.then6.i.i.cleanup.sink.split.i_crit_edge

if.then6.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then10.i.i:                                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %network.i.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %network.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %network.i.i, align 4
  tail call void @ipwireless_ppp_close(ptr noundef %12) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then10.i.i, %if.then6.i.i.cleanup.sink.split.i_crit_edge, %if.then.i.i.cleanup.sink.split.i_crit_edge, %if.end3.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %ipw_tty_mutex.i) #12
  br label %ipw_hangup.exit

ipw_hangup.exit:                                  ; preds = %cleanup.sink.split.i, %entry.ipw_hangup.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipw_write(ptr nocapture noundef readonly %linux_tty, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %linux_tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ipw_tty_mutex = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %ipw_tty_mutex, i32 noundef 0) #12
  %count1 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %tx_bytes_queued = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %tx_bytes_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bytes_queued, align 4
  %sub = sub i32 262144, %5
  %6 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %if.end5.cleanup.sink.split_crit_edge, label %if.end14

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end5
  %hardware = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hardware, align 4
  %call = tail call i32 @ipwireless_send_packet(ptr noundef %9, i32 noundef 0, ptr noundef %buf, i32 noundef %7, ptr noundef nonnull @ipw_write_packet_sent_callback, ptr noundef nonnull %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %if.end14.cleanup.sink.split_crit_edge, label %if.end18

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %tx_bytes_queued to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bytes_queued, align 4
  %add = add i32 %11, %7
  store i32 %add, ptr %tx_bytes_queued, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end18, %if.end14.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %7, %if.end18 ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.end5.cleanup.sink.split_crit_edge ], [ 0, %if.end14.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ipw_tty_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipw_write_room(ptr nocapture noundef readonly %linux_tty) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %linux_tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_bytes_queued = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %tx_bytes_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bytes_queued, align 4
  %sub = sub i32 262144, %5
  %6 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipw_chars_in_buffer(ptr nocapture noundef readonly %linux_tty) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %linux_tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_bytes_queued = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %tx_bytes_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bytes_queued, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipw_ioctl(ptr noundef %linux_tty, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %linux_tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup65_crit_edge, label %if.end

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup65_crit_edge, label %if.end3

if.end.cleanup65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65

if.end3:                                          ; preds = %if.end
  %tty_type = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %tty_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tty_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then4, label %if.end3.cleanup65_crit_edge

if.end3.cleanup65_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65

if.then4:                                         ; preds = %if.end3
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.then4.cleanup65_crit_edge [
    i32 -2147191753, label %sw.bb
    i32 -2147191722, label %sw.bb13
    i32 21531, label %sw.bb40
    i32 21515, label %sw.bb62
  ]

if.then4.cleanup65_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65

sw.bb:                                            ; preds = %if.then4
  %network = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %network, align 4
  %call = tail call i32 @ipwireless_ppp_channel_index(ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %sw.bb.cleanup65_crit_edge, label %cleanup

sw.bb.cleanup65_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65

cleanup:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %9 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 403) #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !42) #12
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !52
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i32 %call, i32 -1226833921) #12, !srcloc !55
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 -14
  br label %cleanup65

sw.bb13:                                          ; preds = %if.then4
  %network14 = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %network14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %network14, align 4
  %call15 = tail call i32 @ipwireless_ppp_unit_number(ptr noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %sw.bb13.cleanup65_crit_edge, label %cleanup37

sw.bb13.cleanup65_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup65

cleanup37:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  %16 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 415) #12
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #12
  %and.i.i.i85 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i85 to ptr
  %cpu_domain.i.i86 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i86) #10, !srcloc !52
  %and.i87 = and i32 %19, -13
  %or.i88 = or i32 %and.i87, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i88) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 %call15, i32 -1226833921) #12, !srcloc !56
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool34.not = icmp eq i32 %20, 0
  %spec.select97 = select i1 %tobool34.not, i32 0, i32 -14
  br label %cleanup65

sw.bb40:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %21 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 424) #12
  %22 = tail call i32 @llvm.read_register.i32(metadata !42) #12
  %and.i.i.i89 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i89 to ptr
  %cpu_domain.i.i90 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i90) #10, !srcloc !52
  %and.i91 = and i32 %24, -13
  %or.i92 = or i32 %and.i91, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i92) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %25 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %21, i32 0, i32 -1226833921) #12, !srcloc !57
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool56.not = icmp eq i32 %25, 0
  %spec.select84 = select i1 %tobool56.not, i32 0, i32 -14
  br label %cleanup65

sw.bb62:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %call63 = tail call i32 @tty_perform_flush(ptr noundef %linux_tty, i32 noundef %arg) #12
  br label %cleanup65

cleanup65:                                        ; preds = %sw.bb62, %sw.bb40, %cleanup37, %sw.bb13.cleanup65_crit_edge, %cleanup, %sw.bb.cleanup65_crit_edge, %if.then4.cleanup65_crit_edge, %if.end3.cleanup65_crit_edge, %if.end.cleanup65_crit_edge, %entry.cleanup65_crit_edge
  %retval.3 = phi i32 [ %call63, %sw.bb62 ], [ -19, %entry.cleanup65_crit_edge ], [ -22, %if.end.cleanup65_crit_edge ], [ -515, %if.then4.cleanup65_crit_edge ], [ -515, %if.end3.cleanup65_crit_edge ], [ %spec.select84, %sw.bb40 ], [ -19, %sw.bb.cleanup65_crit_edge ], [ -19, %sw.bb13.cleanup65_crit_edge ], [ %spec.select, %cleanup ], [ %spec.select97, %cleanup37 ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipw_hangup(ptr nocapture noundef readonly %linux_tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %linux_tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ipw_tty_mutex = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %ipw_tty_mutex, i32 noundef 0) #12
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end3

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %dec.i = add i32 %3, -1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec.i, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %if.end3
  %tty4.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %tty4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tty4.i, align 4
  %cmp5.not.i = icmp eq ptr %6, null
  br i1 %cmp5.not.i, label %if.then.i.cleanup.sink.split_crit_edge, label %if.then6.i

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then6.i:                                       ; preds = %if.then.i
  %7 = ptrtoint ptr %tty4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tty4.i, align 4
  %driver_data.i = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 30
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data.i, align 4
  %tty_type.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %tty_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tty_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9.i = icmp eq i32 %10, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.then6.i.cleanup.sink.split_crit_edge

if.then6.i.cleanup.sink.split_crit_edge:          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then10.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %network.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %network.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %network.i, align 4
  tail call void @ipwireless_ppp_close(ptr noundef %12) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then10.i, %if.then6.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef %ipw_tty_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipw_tiocmget(ptr nocapture noundef readonly %linux_tty) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %linux_tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %control_lines.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %control_lines.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %control_lines.i, align 4
  %and.i = lshr i32 %5, 3
  %6 = and i32 %and.i, 6
  %and6.i = shl i32 %5, 5
  %7 = and i32 %and6.i, 32
  %8 = or i32 %6, %7
  %and11.i = shl i32 %5, 6
  %9 = and i32 %and11.i, 256
  %10 = or i32 %8, %9
  %11 = and i32 %and6.i, 64
  %12 = or i32 %10, %11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end3 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipw_tiocmset(ptr nocapture noundef readonly %linux_tty, i32 noundef %set, i32 noundef %clear) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %linux_tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and.i = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.if.end11.i_crit_edge, label %if.then.i

if.end3.if.end11.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end3
  %hardware.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hardware.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hardware.i, align 4
  %channel_idx.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %channel_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_idx.i, align 4
  %call.i = tail call i32 @ipwireless_set_RTS(ptr noundef %5, i32 noundef %7, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %secondary_channel_idx.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %secondary_channel_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %secondary_channel_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not.i = icmp eq i32 %9, -1
  br i1 %cmp.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then3.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then3.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %hardware.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hardware.i, align 4
  %call6.i = tail call i32 @ipwireless_set_RTS(ptr noundef %11, i32 noundef %9, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then3.i.if.end11.i_crit_edge, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.i.if.end11.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then3.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge, %if.end3.if.end11.i_crit_edge
  %and12.i = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end31.i_crit_edge, label %if.then14.i

if.end11.i.if.end31.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then14.i:                                      ; preds = %if.end11.i
  %hardware15.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %hardware15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hardware15.i, align 4
  %channel_idx16.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %channel_idx16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_idx16.i, align 4
  %call17.i = tail call i32 @ipwireless_set_DTR(ptr noundef %13, i32 noundef %15, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.then14.i.cleanup_crit_edge

if.then14.i.cleanup_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20.i:                                       ; preds = %if.then14.i
  %secondary_channel_idx21.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %secondary_channel_idx21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %secondary_channel_idx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp22.not.i = icmp eq i32 %17, -1
  br i1 %cmp22.not.i, label %if.end20.i.if.end31.i_crit_edge, label %if.then23.i

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then23.i:                                      ; preds = %if.end20.i
  %18 = ptrtoint ptr %hardware15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hardware15.i, align 4
  %call26.i = tail call i32 @ipwireless_set_DTR(ptr noundef %19, i32 noundef %17, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.then23.i.if.end31.i_crit_edge, label %if.then23.i.cleanup_crit_edge

if.then23.i.cleanup_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then23.i.if.end31.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then23.i.if.end31.i_crit_edge, %if.end20.i.if.end31.i_crit_edge, %if.end11.i.if.end31.i_crit_edge
  %and32.i = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end48.i_crit_edge, label %if.then34.i

if.end31.i.if.end48.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then34.i:                                      ; preds = %if.end31.i
  %hardware35.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %hardware35.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hardware35.i, align 4
  %channel_idx36.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %channel_idx36.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel_idx36.i, align 4
  %call37.i = tail call i32 @ipwireless_set_RTS(ptr noundef %21, i32 noundef %23, i32 noundef 0) #12
  %secondary_channel_idx38.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %secondary_channel_idx38.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %secondary_channel_idx38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp39.not.i = icmp eq i32 %25, -1
  br i1 %cmp39.not.i, label %if.then34.i.if.end48.i_crit_edge, label %if.then40.i

if.then34.i.if.end48.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then40.i:                                      ; preds = %if.then34.i
  %26 = ptrtoint ptr %hardware35.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hardware35.i, align 4
  %call43.i = tail call i32 @ipwireless_set_RTS(ptr noundef %27, i32 noundef %25, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.then40.i.if.end48.i_crit_edge, label %if.then40.i.cleanup_crit_edge

if.then40.i.cleanup_crit_edge:                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40.i.if.end48.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then40.i.if.end48.i_crit_edge, %if.then34.i.if.end48.i_crit_edge, %if.end31.i.if.end48.i_crit_edge
  %and49.i = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end65.i_crit_edge, label %if.then51.i

if.end48.i.if.end65.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.then51.i:                                      ; preds = %if.end48.i
  %hardware52.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %hardware52.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hardware52.i, align 4
  %channel_idx53.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %channel_idx53.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel_idx53.i, align 4
  %call54.i = tail call i32 @ipwireless_set_DTR(ptr noundef %29, i32 noundef %31, i32 noundef 0) #12
  %secondary_channel_idx55.i = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %secondary_channel_idx55.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %secondary_channel_idx55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp56.not.i = icmp eq i32 %33, -1
  br i1 %cmp56.not.i, label %if.then51.i.if.end65.i_crit_edge, label %if.then57.i

if.then51.i.if.end65.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.then57.i:                                      ; preds = %if.then51.i
  %34 = ptrtoint ptr %hardware52.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hardware52.i, align 4
  %call60.i = tail call i32 @ipwireless_set_DTR(ptr noundef %35, i32 noundef %33, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.then57.i.if.end65.i_crit_edge, label %if.then57.i.cleanup_crit_edge

if.then57.i.cleanup_crit_edge:                    ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then57.i.if.end65.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then57.i.if.end65.i_crit_edge, %if.then51.i.if.end65.i_crit_edge, %if.end48.i.if.end65.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end65.i, %if.then57.i.cleanup_crit_edge, %if.then40.i.cleanup_crit_edge, %if.then23.i.cleanup_crit_edge, %if.then14.i.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end65.i ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call6.i, %if.then3.i.cleanup_crit_edge ], [ %call17.i, %if.then14.i.cleanup_crit_edge ], [ %call26.i, %if.then23.i.cleanup_crit_edge ], [ %call43.i, %if.then40.i.cleanup_crit_edge ], [ %call60.i, %if.then57.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipwireless_get_serial_info(ptr nocapture noundef readonly %linux_tty, ptr nocapture noundef writeonly %ss) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %linux_tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %ss to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ss, align 4
  %index = getelementptr inbounds %struct.ipw_tty, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %line = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 1
  %7 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %line, align 4
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 7
  %8 = ptrtoint ptr %baud_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 115200, ptr %baud_base, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipwireless_set_serial_info(ptr nocapture noundef readnone %linux_tty, ptr nocapture noundef readnone %ss) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_ppp_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipwireless_send_packet(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ipw_write_packet_sent_callback(ptr nocapture noundef %callback_data, i32 noundef %packet_length) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_bytes_queued = getelementptr inbounds %struct.ipw_tty, ptr %callback_data, i32 0, i32 9
  %0 = ptrtoint ptr %tx_bytes_queued to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_bytes_queued, align 4
  %sub = sub i32 %1, %packet_length
  store i32 %sub, ptr %tx_bytes_queued, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipwireless_ppp_channel_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipwireless_ppp_unit_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_perform_flush(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipwireless_set_RTS(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipwireless_set_DTR(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27, !29, !30, !31, !32, !34, !36, !38, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tty/ipwireless/tty.c", i32 169, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ipwireless_tty_received._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ipwireless_tty_received._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/tty/ipwireless/tty.c", i32 524, i32 5}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ipwireless_tty_free._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @ipwireless_tty_free._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/tty/ipwireless/tty.c", i32 572, i32 32}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/ipwireless/tty.c", i32 573, i32 25}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/tty/ipwireless/tty.c", i32 586, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ipwireless_tty_init._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @ipwireless_tty_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @ttys, !21, !"ttys", i1 false, i1 false}
!21 = !{!"../drivers/tty/ipwireless/tty.c", i32 59, i32 24}
!22 = !{ptr @ipw_tty_driver, !23, !"ipw_tty_driver", i1 false, i1 false}
!23 = !{!"../drivers/tty/ipwireless/tty.c", i32 61, i32 27}
!24 = !{ptr @add_tty.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/tty/ipwireless/tty.c", i32 449, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/ipwireless/tty.c", i32 461, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @add_tty._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @add_tty._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/tty/ipwireless/tty.c", i32 66, i32 3}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/tty/ipwireless/tty.c", i32 67, i32 3}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/ipwireless/tty.c", i32 68, i32 3}
!38 = !{ptr @tty_type_name.channel_names, !39, !"channel_names", i1 false, i1 false}
!39 = !{!"../drivers/tty/ipwireless/tty.c", i32 65, i32 15}
!40 = !{ptr @tty_ops, !41, !"tty_ops", i1 false, i1 false}
!41 = !{!"../drivers/tty/ipwireless/tty.c", i32 549, i32 36}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 5423920}
!53 = !{i64 5424117}
!54 = !{i64 2152909350}
!55 = !{i64 2154790688, i64 2154790968, i64 2154791302, i64 2154791636}
!56 = !{i64 2154800242, i64 2154800522, i64 2154800856, i64 2154801190}
!57 = !{i64 2154809103, i64 2154809383, i64 2154809717, i64 2154810051}
