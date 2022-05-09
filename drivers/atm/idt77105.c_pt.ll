; ModuleID = '/llk/IR_all_yes/drivers/atm/idt77105.c_pt.bc'
source_filename = "../drivers/atm/idt77105.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+idt77105_init\22, \22a\22\09"
module asm "\09.weak\09__crc_idt77105_init\09\09\09\09"
module asm "\09.long\09__crc_idt77105_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idt77105_init:\09\09\09\09\09"
module asm "\09.asciz \09\22idt77105_init\22\09\09\09\09\09"
module asm "__kstrtabns_idt77105_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atmphy_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.idt77105_priv = type { %struct.idt77105_stats, ptr, ptr, i32, i8 }
%struct.idt77105_stats = type { i32, i32, i32, i32 }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@idt77105_ops = internal constant { %struct.atmphy_ops, [16 x i8] } { %struct.atmphy_ops { ptr @idt77105_start, ptr @idt77105_ioctl, ptr @idt77105_int, ptr @idt77105_stop }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_idt77105_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_idt77105_init = external dso_local constant [0 x i8], align 1
@__ksymtab_idt77105_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idt77105_init to i32), ptr @__kstrtab_idt77105_init, ptr @__kstrtabns_idt77105_init }, section "___ksymtab+idt77105_init", align 4
@stats_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @idt77105_stats_timer_func, i32 0, %struct.lockdep_map { ptr @.str.20, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@restart_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @idt77105_restart_timer_func, i32 0, %struct.lockdep_map { ptr @.str.21, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@__exitcall_idt77105_exit = internal global ptr @idt77105_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file457 = internal constant [35 x i8] c"idt77105.file=drivers/atm/idt77105\00", section ".modinfo", align 1
@__UNIQUE_ID_license458 = internal constant [21 x i8] c"idt77105.license=GPL\00", section ".modinfo", align 1
@idt77105_priv_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@idt77105_all = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@idt77105_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s(itf %d): no signal\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt77105_start\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/atm/idt77105.c\00", [41 x i8] zeroinitializer }, align 32
@idt77105_start._entry_ptr = internal global ptr @idt77105_start._entry, section ".printk_index", align 4
@start_timer = internal global { i1, [31 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"idt77105_priv_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@idt77105_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015%s(%d) idt77105_ioctl() called\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt77105_ioctl\00", [17 x i8] zeroinitializer }, align 32
@idt77105_ioctl._entry_ptr = internal global ptr @idt77105_ioctl._entry, section ".printk_index", align 4
@set_loopback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s(%d) Loopback mode is: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_loopback\00", [19 x i8] zeroinitializer }, align 32
@set_loopback._entry_ptr = internal global ptr @set_loopback._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DIAG (local)\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@idt77105_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s(itf %d): signal lost\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idt77105_int\00", [19 x i8] zeroinitializer }, align 32
@idt77105_int._entry_ptr = internal global ptr @idt77105_int._entry, section ".printk_index", align 4
@idt77105_int._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s(itf %d): receive FIFO overrun\0A\00", [60 x i8] zeroinitializer }, align 32
@idt77105_int._entry_ptr.19 = internal global ptr @idt77105_int._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/atm/idt77105.c:53\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/atm/idt77105.c:54\00", [38 x i8] zeroinitializer }, align 32
@idt77105_restart_timer_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015%s(itf %d): signal detected again\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"idt77105_restart_timer_func\00", [36 x i8] zeroinitializer }, align 32
@idt77105_restart_timer_func._entry_ptr = internal global ptr @idt77105_restart_timer_func._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 32, i64 1074553138, i64 1074553139, i64 1074553170, i64 1074553171, i64 1074553172]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 512]
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"idt77105_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 350, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"stats_timer\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"restart_timer\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"idt77105_priv_lock\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"idt77105_all\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 56, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 279, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"start_timer\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 42, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 174, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 191, i32 9 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 177, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 239, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 247, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 53, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 54, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [26 x i8] c"../drivers/atm/idt77105.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 130, i32 14 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_file457, ptr @__UNIQUE_ID_license458, ptr @__exitcall_idt77105_exit, ptr @__ksymtab_idt77105_init, ptr @idt77105_exit, ptr @idt77105_int._entry, ptr @idt77105_int._entry.17, ptr @idt77105_int._entry_ptr, ptr @idt77105_int._entry_ptr.19, ptr @idt77105_ioctl._entry, ptr @idt77105_ioctl._entry_ptr, ptr @idt77105_restart_timer_func._entry, ptr @idt77105_restart_timer_func._entry_ptr, ptr @idt77105_start._entry, ptr @idt77105_start._entry_ptr, ptr @set_loopback._entry, ptr @set_loopback._entry_ptr, ptr @idt77105_ops, ptr @stats_timer, ptr @restart_timer, ptr @idt77105_priv_lock, ptr @idt77105_all, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @start_timer, ptr @.str.3, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77105_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restart_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77105_priv_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77105_all to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77105_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_timer to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77105_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_loopback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77105_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77105_int._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt77105_restart_timer_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @idt77105_init(ptr nocapture noundef writeonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @idt77105_ops, ptr %phy, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idt77105_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull @stats_timer) #8
  %call1 = tail call i32 @del_timer_sync(ptr noundef nonnull @restart_timer) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt77105_start(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 32) #11
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %phy_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %phy_data, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.idt77105_priv, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @idt77105_priv_lock) #8
  %3 = load ptr, ptr @idt77105_all, align 4
  %4 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_data, align 4
  %next = getelementptr inbounds %struct.idt77105_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %next, align 4
  %7 = load ptr, ptr %phy_data, align 4
  store ptr %7, ptr @idt77105_all, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @idt77105_priv_lock, i32 noundef %call5) #8
  %8 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_data, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 16)
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %phy_get = getelementptr inbounds %struct.atmdev_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %phy_get to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_get, align 4
  %call11 = tail call zeroext i8 %14(ptr noundef %dev, i32 noundef 1) #8
  %15 = lshr i8 %call11, 5
  %16 = and i8 %15, 2
  tail call void @atm_dev_signal_change(ptr noundef %dev, i8 noundef zeroext %16) #8
  %signal = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 12
  %17 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %signal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp16 = icmp eq i8 %18, 0
  br i1 %cmp16, label %do.end21, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 2
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type, align 8
  %number = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %21 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %20, i32 noundef %22) #12
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end.if.end24_crit_edge
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %phy_get26 = getelementptr inbounds %struct.atmdev_ops, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %phy_get26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_get26, align 4
  %call27 = tail call zeroext i8 %26(ptr noundef %dev, i32 noundef 2) #8
  %27 = and i8 %call27, 3
  %and29 = zext i8 %27 to i32
  %28 = zext i32 %and29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and29, label %if.end24.sw.epilog_crit_edge [
    i32 0, label %if.end24.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb31
    i32 3, label %sw.bb34
  ]

if.end24.sw.epilog.sink.split_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb34:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb34, %sw.bb31, %if.end24.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 512, %sw.bb34 ], [ 2, %sw.bb31 ], [ %and29, %if.end24.sw.epilog.sink.split_crit_edge ]
  %29 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy_data, align 4
  %loop_mode36 = getelementptr inbounds %struct.idt77105_priv, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %loop_mode36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %loop_mode36, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end24.sw.epilog_crit_edge
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %phy_get38 = getelementptr inbounds %struct.atmdev_ops, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %phy_get38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_get38, align 4
  %call39 = tail call zeroext i8 %35(ptr noundef %dev, i32 noundef 0) #8
  %36 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_data, align 4
  %old_mcr = getelementptr inbounds %struct.idt77105_priv, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %old_mcr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call39, ptr %old_mcr, align 4
  %39 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %signal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp43 = icmp eq i8 %40, 2
  br i1 %cmp43, label %if.then45, label %sw.epilog.if.end53_crit_edge

sw.epilog.if.end53_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then45:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy_data, align 4
  %old_mcr47 = getelementptr inbounds %struct.idt77105_priv, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %old_mcr47 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %old_mcr47, align 4
  %45 = or i8 %44, 1
  store i8 %45, ptr %old_mcr47, align 4
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %phy_put = getelementptr inbounds %struct.atmdev_ops, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %phy_put to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy_put, align 4
  %50 = load ptr, ptr %phy_data, align 4
  %old_mcr52 = getelementptr inbounds %struct.idt77105_priv, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %old_mcr52 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %old_mcr52, align 4
  tail call void %49(ptr noundef %dev, i8 noundef zeroext %52, i32 noundef 0) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %sw.epilog.if.end53_crit_edge
  tail call void @idt77105_stats_timer_func(ptr noundef null)
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @idt77105_priv_lock) #8
  %53 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phy_data, align 4
  %55 = call ptr @memset(ptr %54, i32 0, i32 16)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @idt77105_priv_lock, i32 noundef %call2.i) #8
  %call63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @idt77105_priv_lock) #8
  %.b = load i1, ptr @start_timer, align 4
  br i1 %.b, label %if.end53.if.end71_crit_edge, label %if.then69

if.end53.if.end71_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then69:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @start_timer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %56, 100
  store i32 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @stats_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @stats_timer) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %add70 = add i32 %57, 500
  store i32 %add70, ptr getelementptr inbounds (%struct.timer_list, ptr @restart_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @restart_timer) #8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end53.if.end71_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @idt77105_priv_lock, i32 noundef %call63) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt77105_ioctl(ptr noundef %dev, i32 noundef %cmd, ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 8
  %number = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %1, i32 noundef %3) #12
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 1074553139, label %sw.bb
    i32 1074553138, label %entry.sw.bb2_crit_edge
    i32 1074553171, label %sw.bb4
    i32 1074553170, label %sw.bb6
    i32 1074553172, label %sw.bb12
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #8
  br i1 %call1, label %sw.bb.sw.bb2_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074553139, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 1074553139
  %conv = zext i1 %cmp to i32
  %call3 = tail call fastcc i32 @fetch_stats(ptr noundef %dev, ptr noundef %arg, i32 noundef %conv)
  br label %return

sw.bb4:                                           ; preds = %entry
  %5 = ptrtoint ptr %arg to i32
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %phy_get.i = getelementptr inbounds %struct.atmdev_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %phy_get.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_get.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %dev, i32 noundef 2) #8
  %10 = and i8 %call.i, -4
  %11 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %5, label %sw.bb4.return_crit_edge [
    i32 0, label %sw.bb4.cond.end13.i_crit_edge
    i32 2, label %cond.end13.fold.split.i
    i32 512, label %cond.false9.i
  ]

sw.bb4.cond.end13.i_crit_edge:                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13.i

sw.bb4.return_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cond.false9.i:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %or2.i = or i8 %call.i, 3
  br label %cond.end13.i

cond.end13.fold.split.i:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %or.i42 = or i8 %10, 2
  br label %cond.end13.i

cond.end13.i:                                     ; preds = %cond.end13.fold.split.i, %cond.false9.i, %sw.bb4.cond.end13.i_crit_edge
  %.sink.i = phi i8 [ %or.i42, %cond.end13.fold.split.i ], [ %or2.i, %cond.false9.i ], [ %10, %sw.bb4.cond.end13.i_crit_edge ]
  %cond14.i = phi ptr [ @.str.12, %cond.end13.fold.split.i ], [ @.str.14, %cond.false9.i ], [ @.str.11, %sw.bb4.cond.end13.i_crit_edge ]
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %phy_put34.i = getelementptr inbounds %struct.atmdev_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %phy_put34.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_put34.i, align 4
  tail call void %15(ptr noundef %dev, i8 noundef zeroext %.sink.i, i32 noundef 2) #8
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 8
  %18 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number, align 4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %17, i32 noundef %19, ptr noundef nonnull %cond14.i) #12
  %phy_data.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %20 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_data.i, align 4
  %loop_mode.i = getelementptr inbounds %struct.idt77105_priv, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %loop_mode.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %5, ptr %loop_mode.i, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %23 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy_data, align 4
  %loop_mode = getelementptr inbounds %struct.idt77105_priv, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %loop_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %loop_mode, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 201) #8
  %27 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !73
  %and.i = and i32 %29, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %30 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 %26, i32 -1226833921) #8, !srcloc !76
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 205) #8
  %31 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i38 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i38 to ptr
  %cpu_domain.i.i39 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i39) #7, !srcloc !73
  %and.i40 = and i32 %33, -13
  %or.i41 = or i32 %and.i40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i41) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %34 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 514, i32 -1226833921) #8, !srcloc !77
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool28.not = icmp eq i32 %34, 0
  %cond29 = select i1 %tobool28.not, i32 0, i32 -14
  br label %return

return:                                           ; preds = %sw.bb12, %sw.bb6, %cond.end13.i, %sw.bb4.return_crit_edge, %sw.bb2, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond29, %sw.bb12 ], [ %cond, %sw.bb6 ], [ %call3, %sw.bb2 ], [ -1, %sw.bb.return_crit_edge ], [ -515, %entry.return_crit_edge ], [ 0, %cond.end13.i ], [ -22, %sw.bb4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt77105_int(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %phy_get = getelementptr inbounds %struct.atmdev_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %phy_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_get, align 4
  %call = tail call zeroext i8 %3(ptr noundef %dev, i32 noundef 1) #8
  %conv = zext i8 %call to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  %and2 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @atm_dev_signal_change(ptr noundef %dev, i8 noundef zeroext 2) #8
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %phy_get6 = getelementptr inbounds %struct.atmdev_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %phy_get6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_get6, align 4
  %call7 = tail call zeroext i8 %7(ptr noundef %dev, i32 noundef 0) #8
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_data, align 4
  %old_mcr = getelementptr inbounds %struct.idt77105_priv, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %old_mcr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call7, ptr %old_mcr, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %phy_put = getelementptr inbounds %struct.atmdev_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %phy_put to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_put, align 4
  %15 = load ptr, ptr %phy_data, align 4
  %old_mcr10 = getelementptr inbounds %struct.idt77105_priv, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %old_mcr10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %old_mcr10, align 4
  %18 = and i8 %17, -78
  %19 = or i8 %18, 76
  tail call void %14(ptr noundef %dev, i8 noundef zeroext %19, i32 noundef 0) #8
  tail call void @atm_dev_signal_change(ptr noundef %dev, i8 noundef zeroext 0) #8
  %type = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type, align 8
  %number = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %21, i32 noundef %23) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then4, %entry.if.end17_crit_edge
  %and19 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end37_crit_edge, label %if.then21

if.end17.if.end37_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %phy_put23 = getelementptr inbounds %struct.atmdev_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %phy_put23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_put23, align 4
  %phy_get25 = getelementptr inbounds %struct.atmdev_ops, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %phy_get25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_get25, align 4
  %call26 = tail call zeroext i8 %29(ptr noundef %dev, i32 noundef 2) #8
  %30 = or i8 %call26, 16
  tail call void %27(ptr noundef %dev, i8 noundef zeroext %30, i32 noundef 2) #8
  %type34 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 2
  %31 = ptrtoint ptr %type34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type34, align 8
  %number35 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %33 = ptrtoint ptr %number35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %number35, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %32, i32 noundef %34) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then21, %if.end17.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt77105_stop(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %phy_put = getelementptr inbounds %struct.atmdev_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %phy_put to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_put, align 4
  %phy_get = getelementptr inbounds %struct.atmdev_ops, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %phy_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_get, align 4
  %call = tail call zeroext i8 %5(ptr noundef %dev, i32 noundef 0) #8
  %6 = and i8 %call, -2
  tail call void %3(ptr noundef %dev, i8 noundef zeroext %6, i32 noundef 0) #8
  %walk.030 = load ptr, ptr @idt77105_all, align 4
  %cmp.not31 = icmp eq ptr %walk.030, null
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %dev441 = getelementptr inbounds %struct.idt77105_priv, ptr %walk.030, i32 0, i32 1
  %7 = ptrtoint ptr %dev441 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev441, align 4
  %cmp542 = icmp eq ptr %8, %dev
  br i1 %cmp542, label %for.body.preheader.if.then_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.if.then_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body:                                         ; preds = %for.inc
  %dev4 = getelementptr inbounds %struct.idt77105_priv, ptr %walk.0, i32 0, i32 1
  %9 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev4, align 4
  %cmp5 = icmp eq ptr %10, %dev
  br i1 %cmp5, label %for.body.if.then_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.body.if.then_crit_edge, %for.body.preheader.if.then_crit_edge
  %walk.033.lcssa = phi ptr [ %walk.030, %for.body.preheader.if.then_crit_edge ], [ %walk.0, %for.body.if.then_crit_edge ]
  %prev.032.lcssa = phi ptr [ null, %for.body.preheader.if.then_crit_edge ], [ %walk.03343, %for.body.if.then_crit_edge ]
  %cmp7.not = icmp eq ptr %prev.032.lcssa, null
  %next11 = getelementptr inbounds %struct.idt77105_priv, ptr %walk.033.lcssa, i32 0, i32 2
  %11 = ptrtoint ptr %next11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next11, align 4
  %next10 = getelementptr inbounds %struct.idt77105_priv, ptr %prev.032.lcssa, i32 0, i32 2
  %idt77105_all.sink = select i1 %cmp7.not, ptr @idt77105_all, ptr %next10
  %13 = ptrtoint ptr %idt77105_all.sink to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %idt77105_all.sink, align 4
  %phy = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %phy, align 4
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %15 = ptrtoint ptr %phy_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %phy_data, align 4
  tail call void @kfree(ptr noundef nonnull %walk.033.lcssa) #8
  br label %for.end

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %walk.03343 = phi ptr [ %walk.0, %for.body.for.inc_crit_edge ], [ %walk.030, %for.body.preheader.for.inc_crit_edge ]
  %next13 = getelementptr inbounds %struct.idt77105_priv, ptr %walk.03343, i32 0, i32 2
  %16 = ptrtoint ptr %next13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %walk.0 = load ptr, ptr %next13, align 4
  %cmp.not = icmp eq ptr %walk.0, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_signal_change(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt77105_stats_timer_func(ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %walk.051 = load ptr, ptr @idt77105_all, align 4
  %tobool.not52 = icmp eq ptr %walk.051, null
  br i1 %tobool.not52, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %walk.053 = phi ptr [ %walk.0, %for.body.for.body_crit_edge ], [ %walk.051, %entry.for.body_crit_edge ]
  %dev1 = getelementptr inbounds %struct.idt77105_priv, ptr %walk.053, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %phy_put.i = getelementptr inbounds %struct.atmdev_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %phy_put.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_put.i, align 4
  tail call void %5(ptr noundef %1, i8 noundef zeroext 8, i32 noundef 6) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %phy_get.i = getelementptr inbounds %struct.atmdev_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %phy_get.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_get.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 4) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %phy_get4.i = getelementptr inbounds %struct.atmdev_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %phy_get4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_get4.i, align 4
  %call5.i = tail call zeroext i8 %13(ptr noundef %1, i32 noundef 5) #8
  %conv6.i = zext i8 %call5.i to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %conv7.i = zext i8 %call.i to i32
  %14 = ptrtoint ptr %walk.053 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %walk.053, align 4
  %or.i = add i32 %15, %conv7.i
  %add = add i32 %or.i, %shl.i
  store i32 %add, ptr %walk.053, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %phy_put.i24 = getelementptr inbounds %struct.atmdev_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %phy_put.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_put.i24, align 4
  tail call void %19(ptr noundef %1, i8 noundef zeroext 4, i32 noundef 6) #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %phy_get.i25 = getelementptr inbounds %struct.atmdev_ops, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %phy_get.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_get.i25, align 4
  %call.i26 = tail call zeroext i8 %23(ptr noundef %1, i32 noundef 4) #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %phy_get4.i27 = getelementptr inbounds %struct.atmdev_ops, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %phy_get4.i27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_get4.i27, align 4
  %call5.i28 = tail call zeroext i8 %27(ptr noundef %1, i32 noundef 5) #8
  %conv6.i29 = zext i8 %call5.i28 to i32
  %shl.i30 = shl nuw nsw i32 %conv6.i29, 8
  %conv7.i31 = zext i8 %call.i26 to i32
  %tx_cells = getelementptr inbounds %struct.idt77105_stats, ptr %walk.053, i32 0, i32 1
  %28 = ptrtoint ptr %tx_cells to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_cells, align 4
  %or.i32 = add i32 %29, %conv7.i31
  %add5 = add i32 %or.i32, %shl.i30
  store i32 %add5, ptr %tx_cells, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %phy_put.i33 = getelementptr inbounds %struct.atmdev_ops, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %phy_put.i33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy_put.i33, align 4
  tail call void %33(ptr noundef %1, i8 noundef zeroext 2, i32 noundef 6) #8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %phy_get.i34 = getelementptr inbounds %struct.atmdev_ops, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %phy_get.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_get.i34, align 4
  %call.i35 = tail call zeroext i8 %37(ptr noundef %1, i32 noundef 4) #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %phy_get4.i36 = getelementptr inbounds %struct.atmdev_ops, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %phy_get4.i36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy_get4.i36, align 4
  %call5.i37 = tail call zeroext i8 %41(ptr noundef %1, i32 noundef 5) #8
  %conv6.i38 = zext i8 %call5.i37 to i32
  %shl.i39 = shl nuw nsw i32 %conv6.i38, 8
  %conv7.i40 = zext i8 %call.i35 to i32
  %rx_cells = getelementptr inbounds %struct.idt77105_stats, ptr %walk.053, i32 0, i32 2
  %42 = ptrtoint ptr %rx_cells to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_cells, align 4
  %or.i41 = add i32 %43, %conv7.i40
  %add8 = add i32 %or.i41, %shl.i39
  store i32 %add8, ptr %rx_cells, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %phy_put.i42 = getelementptr inbounds %struct.atmdev_ops, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %phy_put.i42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy_put.i42, align 4
  tail call void %47(ptr noundef %1, i8 noundef zeroext 1, i32 noundef 6) #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %phy_get.i43 = getelementptr inbounds %struct.atmdev_ops, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %phy_get.i43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy_get.i43, align 4
  %call.i44 = tail call zeroext i8 %51(ptr noundef %1, i32 noundef 4) #8
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %phy_get4.i45 = getelementptr inbounds %struct.atmdev_ops, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %phy_get4.i45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phy_get4.i45, align 4
  %call5.i46 = tail call zeroext i8 %55(ptr noundef %1, i32 noundef 5) #8
  %conv6.i47 = zext i8 %call5.i46 to i32
  %shl.i48 = shl nuw nsw i32 %conv6.i47, 8
  %conv7.i49 = zext i8 %call.i44 to i32
  %rx_hec_errors = getelementptr inbounds %struct.idt77105_stats, ptr %walk.053, i32 0, i32 3
  %56 = ptrtoint ptr %rx_hec_errors to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_hec_errors, align 4
  %or.i50 = add i32 %57, %conv7.i49
  %add11 = add i32 %or.i50, %shl.i48
  store i32 %add11, ptr %rx_hec_errors, align 4
  %next = getelementptr inbounds %struct.idt77105_priv, ptr %walk.053, i32 0, i32 2
  %58 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %58)
  %walk.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %walk.0, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.b = load i1, ptr @start_timer, align 4
  br i1 %.b, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %add13 = add i32 %59, 100
  %call14 = tail call i32 @mod_timer(ptr noundef nonnull @stats_timer, i32 noundef %add13) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fetch_stats(ptr nocapture noundef readonly %dev, ptr noundef %arg, i32 noundef %zero) unnamed_addr #3 align 64 {
entry:
  %stats = alloca %struct.idt77105_stats, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats) #8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @idt77105_priv_lock) #8
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 4
  %2 = call ptr @memcpy(ptr %stats, ptr %1, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zero)
  %tobool.not = icmp eq i32 %zero, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = call ptr @memset(ptr %1, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @idt77105_priv_lock, i32 noundef %call2) #8
  %cmp8 = icmp eq ptr %arg, null
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %arg, i32 16, i32 -1226833920) #13, !srcloc !78
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %stats, i32 noundef 16) #8
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %arg, ptr noundef nonnull %stats, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool13.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -14, %if.then.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt77105_restart_timer_func(ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %walk.034 = load ptr, ptr @idt77105_all, align 4
  %tobool.not35 = icmp eq ptr %walk.034, null
  br i1 %tobool.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %walk.036 = phi ptr [ %walk.0, %for.inc.for.body_crit_edge ], [ %walk.034, %entry.for.body_crit_edge ]
  %dev1 = getelementptr inbounds %struct.idt77105_priv, ptr %walk.036, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %signal = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %signal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %phy_get = getelementptr inbounds %struct.atmdev_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %phy_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_get, align 4
  %call = tail call zeroext i8 %7(ptr noundef %1, i32 noundef 1) #8
  %8 = and i8 %call, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @atm_dev_signal_change(ptr noundef %1, i8 noundef zeroext 2) #8
  %type = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type, align 8
  %number = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %number, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %10, i32 noundef %12) #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %phy_put = getelementptr inbounds %struct.atmdev_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %phy_put to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_put, align 4
  %phy_get9 = getelementptr inbounds %struct.atmdev_ops, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %phy_get9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_get9, align 4
  %call10 = tail call zeroext i8 %18(ptr noundef %1, i32 noundef 2) #8
  %19 = or i8 %call10, 16
  tail call void %16(ptr noundef %1, i8 noundef zeroext %19, i32 noundef 2) #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %phy_put14 = getelementptr inbounds %struct.atmdev_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %phy_put14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_put14, align 4
  %old_mcr = getelementptr inbounds %struct.idt77105_priv, ptr %walk.036, i32 0, i32 4
  %24 = ptrtoint ptr %old_mcr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %old_mcr, align 4
  tail call void %23(ptr noundef %1, i8 noundef zeroext %25, i32 noundef 0) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.idt77105_priv, ptr %walk.036, i32 0, i32 2
  %26 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %26)
  %walk.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %walk.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.b = load i1, ptr @start_timer, align 4
  br i1 %.b, label %if.then17, label %for.end.if.end19_crit_edge

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %27, 500
  %call18 = tail call i32 @mod_timer(ptr noundef nonnull @restart_timer, i32 noundef %add) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.end.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__ksymtab_idt77105_init, !1, !"__ksymtab_idt77105_init", i1 false, i1 false}
!1 = !{!"../drivers/atm/idt77105.c", i32 364, i32 1}
!2 = !{ptr @__exitcall_idt77105_exit, !3, !"__exitcall_idt77105_exit", i1 false, i1 false}
!3 = !{!"../drivers/atm/idt77105.c", i32 373, i32 1}
!4 = !{ptr @__UNIQUE_ID_file457, !5, !"__UNIQUE_ID_file457", i1 false, i1 false}
!5 = !{!"../drivers/atm/idt77105.c", i32 375, i32 1}
!6 = !{ptr @__UNIQUE_ID_license458, !5, !"__UNIQUE_ID_license458", i1 false, i1 false}
!7 = !{ptr @idt77105_ops, !8, !"idt77105_ops", i1 false, i1 false}
!8 = !{!"../drivers/atm/idt77105.c", i32 350, i32 32}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/atm/idt77105.c", i32 279, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @idt77105_start._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @idt77105_start._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/atm/idt77105.c", i32 42, i32 8}
!17 = !{ptr @idt77105_priv_lock, !16, !"idt77105_priv_lock", i1 false, i1 false}
!18 = !{ptr @idt77105_all, !19, !"idt77105_all", i1 false, i1 false}
!19 = !{!"../drivers/atm/idt77105.c", i32 56, i32 30}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!22 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!27 = distinct !{null, !28, !"start_timer", i1 false, i1 false}
!28 = !{!"../drivers/atm/idt77105.c", i32 55, i32 12}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/atm/idt77105.c", i32 191, i32 9}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @idt77105_ioctl._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @idt77105_ioctl._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/atm/idt77105.c", i32 177, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @set_loopback._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @set_loopback._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/atm/idt77105.c", i32 239, i32 10}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @idt77105_int._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @idt77105_int._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/atm/idt77105.c", i32 247, i32 6}
!50 = !{ptr @idt77105_int._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @idt77105_int._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/atm/idt77105.c", i32 53, i32 8}
!54 = !{ptr @stats_timer, !53, !"stats_timer", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/atm/idt77105.c", i32 54, i32 8}
!57 = !{ptr @restart_timer, !56, !"restart_timer", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/atm/idt77105.c", i32 130, i32 14}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @idt77105_restart_timer_func._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @idt77105_restart_timer_func._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 5468099}
!74 = !{i64 5468296}
!75 = !{i64 2152953529}
!76 = !{i64 2156892992, i64 2156893272, i64 2156893606, i64 2156893940}
!77 = !{i64 2156902823, i64 2156903103, i64 2156903437, i64 2156903771}
!78 = !{i64 2152973225, i64 2152973250}
